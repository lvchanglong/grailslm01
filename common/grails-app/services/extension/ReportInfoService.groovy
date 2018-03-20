package extension

import grails.gorm.services.Service

@Service(ReportInfo)
interface ReportInfoService {

    ReportInfo get(Serializable id)

    List<ReportInfo> list(Map args)

    Long count()

    void delete(Serializable id)

    ReportInfo save(ReportInfo reportInfo)

}