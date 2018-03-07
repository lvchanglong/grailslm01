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

}
