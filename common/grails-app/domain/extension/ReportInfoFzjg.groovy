package extension

/**
 * 信用报告-分支机构
 */
class ReportInfoFzjg {

    static belongsTo = [parent: ReportInfo]

    String ybgqygx //与报告企业关系
    String qymc //企业名称
    String dz //地址
    String lxdh //联系电话

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        ybgqygx(blank:false, nullable:false)
        qymc(blank:true, nullable:true)
        dz(blank:true, nullable:true)
        lxdh(blank:true, nullable:true)
    }

    static mapping = {
        table "extension_reportinfo_fzjg"
        id column: "id"
        version column: "version"

        ybgqygx column:"ybgqygx"
        qymc column:"qymc"
        dz column:"dz"
        lxdh column:"lxdh"
        parent column:"parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
