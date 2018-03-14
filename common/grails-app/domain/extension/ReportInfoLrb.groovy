package extension

/**
 * 信用报告-利润表
 */
class ReportInfoLrb {

    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    /**
     * 营业收入
     */
    String hbzj3Begin //货币资金-期初
    String hbzj3End //货币资金-期末
    String hbzj2End //货币资金-期末
    String hbzj1End //货币资金-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {

    }

    static mapping = {
        table "extension_reportinfo_lrb"
        id column: "id"
        version column: "version"

        parent column:"parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
