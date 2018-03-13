package extension

/**
 * 信用报告-股东信息
 */
class ReportInfoGdxx {

    static belongsTo = [parent: ReportInfo]

    String dwhzrr //单位或自然人
    String tzje //投资金额
    String tzbl //投资比例

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        dwhzrr(blank:false, nullable:false)
        tzje(blank:true, nullable:true)
        tzbl(blank:true, nullable:true)
    }

    static mapping = {
        table "extension_reportinfo_gdxx"
        id column: "id"
        version column: "version"

        dwhzrr column:"dwhzrr"
        tzje column:"tzje"
        tzbl column:"tzbl"
        parent column:"parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
