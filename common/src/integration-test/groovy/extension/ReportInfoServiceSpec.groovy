package extension

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ReportInfoServiceSpec extends Specification {

    ReportInfoService reportInfoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ReportInfo(...).save(flush: true, failOnError: true)
        //new ReportInfo(...).save(flush: true, failOnError: true)
        //ReportInfo reportInfo = new ReportInfo(...).save(flush: true, failOnError: true)
        //new ReportInfo(...).save(flush: true, failOnError: true)
        //new ReportInfo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //reportInfo.id
    }

    void "test get"() {
        setupData()

        expect:
        reportInfoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ReportInfo> reportInfoList = reportInfoService.list(max: 2, offset: 2)

        then:
        reportInfoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        reportInfoService.count() == 5
    }

    void "test delete"() {
        Long reportInfoId = setupData()

        expect:
        reportInfoService.count() == 5

        when:
        reportInfoService.delete(reportInfoId)
        sessionFactory.currentSession.flush()

        then:
        reportInfoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ReportInfo reportInfo = new ReportInfo()
        reportInfoService.save(reportInfo)

        then:
        reportInfo.id != null
    }
}
