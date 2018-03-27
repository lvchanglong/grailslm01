package extension

/**
 * 信用报告-资产负债表
 */
class ReportInfoZcfzb {

    static hasOne = [zcb:ReportInfoZcfzbZcb, fzb:ReportInfoZcfzbFzb]
    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        nf3(blank:false, nullable:false, size:1..10)
        nf2(blank:false, nullable:false, size:1..10)
        nf1(blank:false, nullable:false, size:1..10)
    }

    static mapping = {
        table "extension_reportinfo_zcfzb"
        id column: "id"
        version column: "version"

        nf3 column: "nf3"
        nf2 column: "nf2"
        nf1 column: "nf1"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
