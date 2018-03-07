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
        render company as JSON
    }

    def getCompanyInfo(String name) {
        def company = Company.findByName(name)
        if(!company) {
            render new HashMap() as JSON
            return
        }
        render company as JSON
    }

    def importData() {
        String realPath = servletContext.getRealPath("/")
        def dir = FileHelper.getDir("${realPath}imports")
        dir.listFiles().each {file->
            def filename = file.getName()
            def serverFile = FileHelper.getFile("${realPath}imports",filename)

            Integer nFinished = 0 //已经导入完成数量
            def ret = new HashMap()
            ret.put('新增', "${nFinished}")
            def errors = new ArrayList()
            def rows = ExcelHelper.readExcel(serverFile, 0, 30)
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
                        errors.add("${params.name}(企业名字重复)")
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
                            errors.add("${params.name}(企业信息保存失败)")
                        } else {
                            nFinished++
                            ret.put('新增', "${nFinished}")
                        }
                    }
                } else {
                    errors.add("企业名字为空")
                }
            }
            ret.put('异常', errors)
        }
        render "导入完成"
    }

}
