package extension

/**
 * 信用报告-详情
 */
class ReportInfo {

    static belongsTo = [parent: Report]

    /**
     * 信用报告首页
     */
    String bgqy //报告企业
    String bgbh //报告编号
    String zzjg //制作机构
    String zzrq //制作日期
    String pgs1 //评估师1
    String pgs1Lxfs //评估师1-联系方式
    String pgs2 //评估师2
    String pgs2Lxfs //评估师2-联系方式
    String tdqkxybgsq //特定情况信用报告申请
    String sqsm //申请说明

    /**
     * 信用报告概述
     */
    String dj //等级
    String sy //释义
    String yyly //应用领域
    String hylx //行业类型
    String qylx = "中型企业" //企业类型(大型企业，中型企业，小型企业)
    String jbjljfxts //基本结论及风险提示
    String ggxyxx //公共信用信息
    String syxyxx //商业信用信息
    String gyryxx //公益荣誉信息
    String qymc //企业名称
    String qyzs //企业住所
    String fddbr //法定代表人
    String zczb //注册资本
    String jjlx //经济类型
    String clrq //成立日期
    String gszchtyshxydm //工商注册号/统一社会信用代码
    String zzjgdm //组织机构代码

    String zcfzl3 //资产负债率-大前年
    String xjldfzbl3 //现金流动负债比率-大前年
    String sdbl3 //速动比率-大前年
    String zzczzl3 //总资产周转率-大前年
    String yszkzzl3 //应收账款周转率-大前年
    String ldzczzl3 //流动资产周转率-大前年
    String jzcsyl3 //净资产收益率-大前年
    String xsyylrl3 //销售（营业）利润率率-大前年
    String cbfylrl3 //成本费用利润率-大前年
    String zzcbcl3 //总资产报酬率-大前年
    String xssrzzl3 //销售收入增长率-大前年
    String zbbzzzl3 //资本保值增值率-大前年
    String xslrzzl3 //销售利润增长率-大前年

    String zcfzl2 //资产负债率-前年
    String xjldfzbl2 //现金流动负债比率-前年
    String sdbl2//速动比率-大前年
    String zzczzl2 //总资产周转率-前年
    String yszkzzl2 //应收账款周转率-前年
    String ldzczzl2 //流动资产周转率-前年
    String jzcsyl2 //净资产收益率-前年
    String xsyylrl2 //销售（营业）利润率率-前年
    String cbfylrl2 //成本费用利润率-前年
    String zzcbcl2 //总资产报酬率-前年
    String xssrzzl2 //销售收入增长率-前年
    String zbbzzzl2 //资本保值增值率-前年
    String xslrzzl2 //销售利润增长率-前年

    String zcfzl1 //资产负债率-去年
    String xjldfzbl1 //现金流动负债比率-去年
    String sdbl1 //速动比率-去年
    String zzczzl1 //总资产周转率-去年
    String yszkzzl1 //应收账款周转率-去年
    String ldzczzl1 //流动资产周转率-去年
    String jzcsyl1 //净资产收益率-去年
    String xsyylrl1 //销售（营业）利润率率-去年
    String cbfylrl1 //成本费用利润率-去年
    String zzcbcl1 //总资产报酬率-去年
    String xssrzzl1 //销售收入增长率-去年
    String zbbzzzl1 //资本保值增值率-去年
    String xslrzzl1 //销售利润增长率-去年

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        bgqy(blank:false, nullable:false)
        qylx(blank:true, nullable:true, inList: ["小型企业", "中型企业", "大型企业"])
    }

    static mapping = {
        table "extension_reportinfo"
        id column: "id"
        version column: "version"

        jbjljfxts column:"jbjljfxts", sqlType:"Text"
        ggxyxx column:"ggxyxx", sqlType:"Text"
        syxyxx column:"syxyxx", sqlType:"Text"
        gyryxx column:"gyryxx", sqlType:"Text"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return bgqy
    }

}
