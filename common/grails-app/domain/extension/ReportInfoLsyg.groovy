package extension

/**
 * 信用报告-历史沿革
 */
class ReportInfoLsyg {

    static belongsTo = [parent: ReportInfo]

    String bgqmc //变更前名称
    String bghmc //变更后名称
    String pzsj //批准时间

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        bgqmc(blank:false, nullable:false)
        bghmc(blank:true, nullable:true)
        pzsj(blank:true, nullable:true)
    }

    static mapping = {
        table "extension_reportinfo_lsyg"
        id column: "id"
        version column: "version"

        bgqmc column:"bgqmc"
        bghmc column:"bghmc"
        pzsj column:"pzsj"
        parent column:"parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return this.bgqmc + "-" + this.bghmc
    }

}
