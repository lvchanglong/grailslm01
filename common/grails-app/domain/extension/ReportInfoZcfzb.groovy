package extension

/**
 * 信用报告-资产负债表
 */
class ReportInfoZcfzb {

    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    ReportInfoZcfzbZcb zcb
    ReportInfoZcfzbFzb fzb

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        nf3(blank:false, nullable:false)
        nf2(blank:false, nullable:false)
        nf1(blank:false, nullable:false)
    }

    static mapping = {
        table "extension_reportinfo_zcfzb"
        id column: "id"
        version column: "version"

        nf3 column:"nf3", sqlType:"VarChar(30)"
        nf2 column:"nf2", sqlType:"VarChar(30)"
        nf1 column:"nf1", sqlType:"VarChar(30)"

        zcb column:"zcb_id"
        fzb column:"fzb_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
