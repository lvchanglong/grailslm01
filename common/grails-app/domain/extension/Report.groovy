package extension

import common.User

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
    String scyj //审查意见

    String dq = "省级"//地区
    String state = "已保存" //状态

    User creater //创建人
    ReportInfo info //信用报告详情

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        qymc(blank:false, nullable:false)
        bglx(blank:false, nullable:false)
        hylx(blank:false, nullable:false)
        yyly(blank:false, nullable:false)

        yxq(blank:true, nullable:true)
        ccr(blank:true, nullable:true)
        scyj(blank:true, nullable:true)
        dq(blank:true, nullable:true, inList: ["省级", "沈阳", "大连", "鞍山", "抚顺", "本溪", "丹东", "锦州", "营口", "阜新", "辽阳", "盘锦", "铁岭", "朝阳", "葫芦岛"])
        state(blank:true, nullable:true, inList: ["已暂存", "已提交", "未合格", "已完成"])
        info(nullable:true)
        creater(nullable:true)
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
        scyj column:"scyj", sqlType:"Text"

        dq column:"dq"
        state column:"state"

        creater column:"creater_id"
        info column:"info_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return qymc
    }

}
