package extension

/**
 * 信用报告-资产负债表
 */
class ReportInfoZcfzb {

    static belongsTo = [parent: ReportInfo]

    ReportInfoZcfzbZcb zcb
    ReportInfoZcfzbFzb fzb

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {

    }

    static mapping = {
        table "extension_reportinfo_zcfzb"
        id column: "id"
        version column: "version"

        zcb column:"zcb_id"
        fzb column:"fzb_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
