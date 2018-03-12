package extension

/**
 * 信用报告-概要
 */
class Report {

    String qymc //企业名称
    String bglx //报告类型
    String hylx //行业类型
    String yyly //应用领域

    String yxq //有效期
    String ccr //抽查人

    ReportInfo info //信用报告详情

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        qymc(blank:false, nullable:false)
        bglx(blank:false, nullable:false)
        hylx(blank:false, nullable:false)
        yyly(blank:false, nullable:false)
    }

    static mapping = {
        table "extension_report"
        id column: "id"
        version column: "version"

        qymc column:"qymc"
        bglx column:"bglx"
        hylx column:"hylx"
        yyly column:"yyly"

        yxq column:"yxq"
        ccr column:"ccr"

        info column:"info_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return qymc
    }

}
