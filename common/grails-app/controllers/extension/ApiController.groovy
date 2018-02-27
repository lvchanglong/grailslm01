package extension

import common.ExcelHelper
import common.FileHelper
import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ApiController {

    def index() {
        render Company.list().collect { company->
            company.properties["id", "name", "businessForm"]
        } as JSON
    }

    def getCompany(Long id) {
        def company = Company.get(id)
        if(!company) {
            render new HashMap() as JSON
            return
        }
        render company.getProperties() as JSON
    }

    def getCompanyInfo(String name) {
        def company = Company.findByName(name)
        if(!company) {
            render new HashMap() as JSON
            return
        }
        render company.getProperties() as JSON
    }

    def importData() {
        String realPath = servletContext.getRealPath("/")
        def dir = FileHelper.getDir("${realPath}imports")
        dir.listFiles().each {file->
            def filename = file.getName()
            def serverFile = FileHelper.getFile("${realPath}imports",filename)

            Integer nFinished = 0 //已经导入完成数量
            def ret = new HashMap()
            ret.put('描述', "导入成功")
            ret.put('新增', "${nFinished}")
            def errors = new ArrayList()
            ret.put('异常', errors)
            def rows = ExcelHelper.readExcel(serverFile)
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

                params.contactorName = cells[14]
                params.contactorDuty = cells[15]
                params.contactorPhone = cells[16]
                params.contactorEmail = cells[17]

                params.contactor2Name = cells[18]
                params.contactor2Duty = cells[19]
                params.contactor2Phone = cells[20]
                params.contactor2Email = cells[21]

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
                    println params.name
                    println params.companyId

                    def company = Company.where {
                        name == params.name
                    }.find()
                    if(company) {
                        ret.put('描述', "公司名字重复")
                    } else {
                        company = new Company(params)
                        def contactor = Contact.findByNameAndPhone(params.contactorName, params.contactorPhone)
                        if (!contactor && params.contactorName) {
                            contactor = new Contact([name:params.contactorName, phone:params.contactorPhone, duty: params.contactorDuty, email: params.contactorEmail])
                            company.contactor = contactor
                            contactor.save(flush: true)
                        } else if (contactor) {
                            company.contactor = contactor
                        }

                        def actualContactor = Contact.findByNameAndPhone(params.contactor2Name, params.contactor2Phone)
                        if (!actualContactor && params.contactor2Name) {
                            actualContactor = new Contact([name:params.contactor2Name, phone:params.contactor2Phone, duty: params.contactor2Duty, email: params.contactor2Email])
                            company.actualContact = actualContactor
                            actualContactor.save(flush: true)
                        } else if (actualContactor) {
                            company.actualContact = actualContactor
                        }

                        if(!company.save(flush: true)) {
                            println company.errors
                            ret.put('描述', "导入出错")
                        } else {
                            nFinished++
                            ret.put('新增', "${nFinished}")
                        }
                    }
                } else {
                    errors.add('第 ' + (i + 1) + '行' + params)
                }
            }

            String strRet = ret as JSON
            println strRet
        }

        render "导入完成"
    }

}
