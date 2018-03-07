package extension

import common.ExcelHelper
import common.FileConverter
import common.FileHelper
import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CompanyController {

    CompanyService companyService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond companyService.list(params), model:[companyCount: companyService.count()]
    }

    def show(Long id) {
        respond companyService.get(id)
    }

    def create() {
        respond new Company(params)
    }

    def save(Company company) {
        if (company == null) {
            notFound()
            return
        }

        if(params.contactText) {
            company.contact = Contact.load(params.contactText.split("#")[0])
        }

        if(params.actualContactText) {
            company.actualContact = Contact.load(params.actualContactText.split("#")[0])
        }

        try {
            companyService.save(company)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            return
        }
        render status: CREATED
    }

    def edit(Long id) {
        respond companyService.get(id)
    }

    def update(Company company) {
        if (company == null) {
            notFound()
            return
        }

        if(params.contactText) {
            company.contact = Contact.load(params.contactText.split("#")[0])
        }

        if(params.actualContactText) {
            company.actualContact = Contact.load(params.actualContactText.split("#")[0])
        }

        try {
            companyService.save(company)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            return
        }
        render status: OK
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }
        companyService.delete(id)
        render status: NO_CONTENT
    }

    protected void notFound() {
        render status: NOT_FOUND
    }

    /**
     * 批量导出
    */
    def exportData() {
        def dirpath = servletContext.getRealPath("/") + "temp"
        def filetype = 'xls'
        def filename = new Date().format("yyyyMMddHHmmss") + "." + filetype
        def file = FileHelper.getFile(dirpath, filename)

        def array = new ArrayList()
        Company.list().each {
            def cell = new HashMap()

            cell.put(0, it.companyId?:"")
            cell.put(1, it.name?:"")
            cell.put(2, it.legalPerson?:"")
            cell.put(3, it.capital?:"")
            cell.put(4, it.industry?:"")
            cell.put(5, it.code?:"")
            cell.put(6, it.registerAddr?:"")
            cell.put(7, it.actualAddr?:"")
            cell.put(8, it.registerDate?:"")
            cell.put(9, it.approvalDate?:"")
            cell.put(10, it.businessTerm?:"")
            cell.put(11, it.registerDept?:"")
            cell.put(12, it.businessState?:"")
            cell.put(13, it.employeeNum?:"")

            cell.put(14, it.contact?.name?:"")
            cell.put(15, it.contact?.duty?:"")
            cell.put(16, it.contact?.phone?:"")
            cell.put(17, it.contact?.email?:"")

            cell.put(18, it.actualContact?.name?:"")
            cell.put(19, it.actualContact?.duty?:"")
            cell.put(20, it.actualContact?.phone?:"")
            cell.put(21, it.actualContact?.email?:"")

            cell.put(22, it.rank?:"")
            cell.put(23, it.blacklist?:"")
            cell.put(24, it.bankName?:"")
            cell.put(25, it.businessForm?:"")
            cell.put(26, it.businessScope?:"")
            cell.put(27, it.patent?:"")
            cell.put(28, it.certificate?:"")
            cell.put(29, it.honour?:"")
            cell.put(30, it.introduction?:"")
            array.add(cell)
        }
        ExcelHelper.writeExcel(file, array)

        response.contentType = grailsApplication.config.grails.mime.types[filetype]
        response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(filename, "utf-8"))
        response.outputStream.withStream {
            it.write(file.getBytes())
            it.flush()
            it.close()
        }

        if(file.exists()) {
            file.delete()
        }
    }

    /**
     * 批量导入
     */
    def importData() {
        ArrayList errors = new ArrayList()
        try {
            def multipartFile = request.getFile("file")
            if(!multipartFile.empty) {
                def dirpath = servletContext.getRealPath("/") + "temp"
                def filename = multipartFile.getOriginalFilename()
                def file = FileHelper.getFile(dirpath, filename)
                multipartFile.transferTo(file)

                def rows = ExcelHelper.readExcel(file)
                rows.eachWithIndex {cells, i ->
                    params.companyId = cells[0]
                    params.name = cells[1]
                    params.legalPerson = cells[2]
                    params.capital = cells[3]
                    params.industry = cells[4]
                    params.code = cells[5]
                    params.registerAddr = cells[6]
                    params.actualAddr = cells[7]
                    params.registerDate = cells[8]
                    params.approvalDate = cells[9]
                    params.businessTerm = cells[10]
                    params.registerDept = cells[11]
                    params.businessState = cells[12]
                    params.employeeNum = cells[13]

                    params.contactName = cells[14]
                    params.contactDuty = cells[15]
                    params.contactPhone = cells[16]
                    params.contactEmail = cells[17]

                    params.contact2Name = cells[18]
                    params.contact2Duty = cells[19]
                    params.contact2Phone = cells[20]
                    params.contact2Email = cells[21]

                    params.rank = cells[22]
                    params.blacklist = cells[23]
                    params.bankName = cells[24]
                    params.businessForm = cells[25]
                    params.businessScope = cells[26]
                    params.patent = cells[27]
                    params.certificate = cells[28]
                    params.honour = cells[29]
                    params.introduction = cells[30]

                    if (params.name) {
                        def company = Company.where {
                            name == params.name.trim()
                        }.find()
                        if(company) {
                            errors.add("${params.name}（企业名称重复）")
                        } else {
                            company = new Company(params)
                            def contact = Contact.findByNameAndPhone(params.contactName, params.contactPhone)
                            if (contact) {
                                company.contact = contact
                            } else if (!contact && params.contactName) {
                                contact = new Contact([name:params.contactName, phone:params.contactPhone, duty: params.contactDuty, email: params.contactEmail])
                                contact.save(flush: true)
                                company.contact = contact
                            }

                            def actualContact = Contact.findByNameAndPhone(params.contact2Name, params.contact2Phone)
                            if (actualContact) {
                                company.actualContact = actualContact
                            } else if (!actualContact && params.contact2Name) {
                                actualContact = new Contact([name:params.contact2Name, phone:params.contact2Phone, duty: params.contact2Duty, email: params.contact2Email])
                                actualContact.save(flush: true)
                                company.actualContact = actualContact
                            }

                            if(!company.save(flush: true)) {
                                println company.errors
                                errors.add("${params.name}（企业信息保存失败）")
                            }
                        }
                    } else {
                        errors.add("${filename}（企业名称为空）")
                    }
                }

                if(file.exists()) {
                    file.delete()
                }
                render status: OK, text: "导入成功 ${errors}"
                return
            }
        } catch (MissingMethodException e) {

        }
        render status: BAD_REQUEST, text: "导入失败 ${errors}"
    }

    /**
     * 图片预览
     */
    def image(Company instance) {
        def out = response.getOutputStream()
        if(instance.data) {
            out.write(instance.data.bytes)
        } else {
            def url = new URL(createLink(uri:'/', absolute:true) + assetPath(src:'home/000.png').replaceFirst("/", ""))
            out.write(url.getBytes())
        }
        out.flush()
        out.close()
    }

    /**
     * 下载
     */
    def download(Company instance) {
        if(!instance.data) {
            render status: BAD_REQUEST, text: "无法下载"
            return
        }
        try {
            def filename = instance.filename
            def filetype = FileHelper.getFileType(filename)
            response.contentType = grailsApplication.config.grails.mime.types[filetype]
            response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(filename, "UTF-8"))
            def out = response.getOutputStream()
            out << instance.data.bytes
            out.flush()
            out.close()
        } catch(Exception e) {

        }
    }

    /**
     * 表格
     */
    def chart() {

    }

    def c1() {
        def labels = ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]

        Calendar calendar = Calendar.getInstance()
        def nYear = calendar.get(Calendar.YEAR)

        def instanceList = Company.where {
            year(dateCreated) == nYear
        }.list()

        ArrayList datas = new ArrayList()
        HashMap hmMonthGroup = instanceList.groupBy {it->
            it.dateCreated.month + 1
        }

        def zhcn = [1:"一月", 2:"二月", 3:"三月", 4:"四月", 5:"五月", 6:"六月", 7:"七月", 8:"八月", 9:"九月", 10:"十月", 11:"十一月", 12:"十二月"]
        def maps = new HashMap()
        for(int m in 1..12) {
            ArrayList list = hmMonthGroup.get(m)
            if(list) {
                datas.add(list.size())
            } else {
                datas.add(0)
            }
            maps.put(zhcn.get(m), list)
        }

        render new HashMap([labels:labels, datas:datas, maps:maps]) as JSON
    }

    /**
     * 获取目录树结构(生成jstree结构)
     */
    def listDirsForJsTree() {
        def array = new ArrayList()
        array.add(["id":"0", "parent":"#", text:"/", "state":["opened":true]])
        Company.findAllByType("文件夹").each { dir->
            def hm = new HashMap()
            hm.put("id", dir.id.toString())
            hm.put("parent", dir.parent?dir.parent.id.toString():"0")
            hm.put("text", dir.filename)
            hm.put("state", ["opened":true])
            array.add(hm)
        }
        render array as JSON
    }

    /**
     * 移动文件
     * @param id
     * @param pid
     */
    def moveTo(String id, String pid) {
        if(!id || pid == null || pid.isEmpty() || id.equalsIgnoreCase(pid)) {
            render status: BAD_REQUEST, text: "暂不支持"
            return
        }

        def instance = Company.get(id)
        if(pid.equalsIgnoreCase("0")) {
            instance.parent = null
        } else {
            instance.parent = Company.load(pid)
        }

        try {
            companyService.save(instance)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            return
        }
        render status: OK, text: "移动成功"
    }

    /**
     * 文件预览
     */
    def preview(Company instance) {
        if (instance == null) {
            render status: NOT_FOUND, text: "不存在"
            return
        }
        if(instance.isDir() || !instance.data) {
            render status: BAD_REQUEST, text: "不支持"
            return
        }

        def realPath = servletContext.getRealPath("/")
        def keyPath = "temp"
        def dirpath = "${realPath}${keyPath}"

        def serverFileType = FileHelper.getFileType(instance.filename).toLowerCase()
        def bytes = instance.data.bytes
        def serverFileName = "${bytes.encodeAsMD5()}.${serverFileType}" //服务器存储-文件名
        def serverFile = FileHelper.getFile(dirpath, serverFileName)
        if(!serverFile.exists()) { //不存在，则下载
            serverFile.withOutputStream {os->
                def is = new ByteArrayInputStream(bytes)
                os << is
                os.flush()
            }
        }

        if(serverFileType.equalsIgnoreCase("pdf")) {
            return [path: "/static/${keyPath}/${serverFileName}"] //Grails3中，static默认存在
        }
        def targetFile = FileHelper.getFile(dirpath, serverFileName + ".pdf")
        if(FileConverter.convertTo(serverFile, targetFile)) {
            return [path: "/static/${keyPath}/${targetFile.getName()}"]
        }
        redirect(uri:"/static/${keyPath}/${serverFileName}")
    }

}
