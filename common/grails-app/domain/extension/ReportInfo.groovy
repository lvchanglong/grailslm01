package extension

/**
 * 信用报告-详情
 */
class ReportInfo {

    static belongsTo = [parent: Report]

    /**
     * 信用报告首页
     */
    String qymc = "" //企业名称
    String bgbh = ""//报告编号
    String zzjg = "" //制作机构
    String zzrq = "" //制作日期
    String pgs1 = "" //评估师1
    String pgs1Lxfs = "" //评估师1-联系方式
    String pgs2 = "" //评估师2
    String pgs2Lxfs = "" //评估师2-联系方式
    String tdqkxybgsq = "否" //特定情况信用报告申请
    String sqsm = "" //申请说明

    /**
     * 信用报告概述
     */
    String dj = "A" //等级
    String sy = "" //释义
    String yyly = "" //应用领域
    String hylx = "" //行业类型
    String qylx = "中型企业" //企业类型(大型企业，中型企业，小型企业)
    String jljts = "" //结论及提示(基本结论及风险提示)
    String ggxyxx = "" //公共信用信息
    String syxyxx = "" //商业信用信息
    String gyryxx = "" //公益荣誉信息
    String qyzs = "" //企业住所
    String fddbr = "" //法定代表人
    String zczb = "" //注册资本
    String jjlx = "" //经济类型
    String clrq = "" //成立日期
    String gszch = "" //工商注册号(统一社会信用代码)
    String zzjgdm = "" //组织机构代码

    String nf3 = "" //年份（由远及近）
    String zcfzl3 = "" //资产负债率
    String xjldfzbl3 = "" //现金流动负债比率
    String sdbl3 = "" //速动比率
    String zzczzl3 = "" //总资产周转率
    String yszkzzl3 = "" //应收账款周转率
    String ldzczzl3 = "" //流动资产周转率
    String jzcsyl3 = "" //净资产收益率
    String xsyylrl3 = "" //销售（营业）利润率率
    String cbfylrl3 = "" //成本费用利润率
    String zzcbcl3 = "" //总资产报酬率
    String xssrzzl3 = "" //销售收入增长率
    String zbbzzzl3 = "" //资本保值增值率
    String xslrzzl3 = "" //销售利润增长率

    String nf2 = "" //年份（由远及近）
    String zcfzl2 = "" //资产负债率
    String xjldfzbl2 = "" //现金流动负债比率
    String sdbl2 = ""//速动比率
    String zzczzl2 = "" //总资产周转率
    String yszkzzl2 = "" //应收账款周转率
    String ldzczzl2 = "" //流动资产周转率
    String jzcsyl2 = "" //净资产收益率
    String xsyylrl2 = "" //销售（营业）利润率率
    String cbfylrl2 = "" //成本费用利润率
    String zzcbcl2 = "" //总资产报酬率
    String xssrzzl2 = "" //销售收入增长率
    String zbbzzzl2 = "" //资本保值增值率
    String xslrzzl2 = "" //销售利润增长率

    String nf1 = "" //年份（由远及近）
    String zcfzl1 = "" //资产负债率
    String xjldfzbl1 = "" //现金流动负债比率
    String sdbl1 = "" //速动比率
    String zzczzl1 = "" //总资产周转率
    String yszkzzl1 = "" //应收账款周转率
    String ldzczzl1 = "" //流动资产周转率
    String jzcsyl1 = "" //净资产收益率
    String xsyylrl1 = "" //销售（营业）利润率率
    String cbfylrl1 = "" //成本费用利润率
    String zzcbcl1 = "" //总资产报酬率
    String xssrzzl1 = "" //销售收入增长率
    String zbbzzzl1 = "" //资本保值增值率
    String xslrzzl1 = "" //销售利润增长率

    /**
     * 企业基本信息
     */
    String lxdh = "" //联系电话
    String jyfw = "" //经营范围
    String yzbm = "" //邮政编码
    String jbkhh = "" //基本开户行
    String dkzh = "" //贷款证号
    String zh = "" //账号

    /**
     * 股东信息，历史沿革，分支机构，高管人员素质
     */
    static hasMany = [gdxxs: ReportInfoGdxx, lsygs: ReportInfoLsyg, fzjgs: ReportInfoFzjg, ggryszs: ReportInfoGgrysz]

    /**
     * 其他1
     */
    String zzjgsz = "" //组织机构设置
    String jynl = "" //经营能力
    String cyryqk = "" //从业人员情况
    String gjcyzcqk = "" //国家产业政策情况
    String zwqk = "" //债务情况
    String yfnl = "" //研发能力
    String xzjgxyjl = "" //行政监管信用记录
    String sfjgxyjl = "" //司法监管信用记录
    String yhxdlyqk = "" //银行信贷履约情况
    String glzdqk = "" //管理制度情况
    String glrzqk = "" //管理认证情况
    String ztzbjlyqk = "" //招投中标及履约情况（招标投标领域重点建设项目中标及履约情况）
    String ywqk = "" //业务情况
    String fznl = "" //发展能力
    String zjxyzk = "" //资金信用状况
    String zcyyzk = "" //资产运营状况
    String cwxyzk = "" //财务效益状况
    String shgxzk = "" //社会贡献状况
    String shgy = "" //社会公益
    String qyry = "" //企业荣誉
    String jbjljfxts = "" //基本结论及风险提示

    /**
     * 信用等级
     */
    String jffw = "" //计分范围
    String xyts = "" //信用提示

    /**
     * 其他2
     */
    String sm = "" //声明
    String gzpjap = "" //跟踪评级安排

    /**
     * 资产负债表
     */
    ReportInfoZcfzb zcfzb

    /**
     * 利润表
     */
    ReportInfoLrb lrb

    /**
     * 现金流量表
     */
    ReportInfoXjllb xjllb

    /**
     * 企业打分
     */
    String qydf = "" //企业打分

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        qymc(blank:false, nullable:false)
        tdqkxybgsq(blank:true, nullable:true, inList: ["是", "否"])
        qylx(blank:true, nullable:true, inList: ["小型企业", "中型企业", "大型企业"])
        dj(blank:true, nullable:true, inList: ["AAA", "AA", "A", "BBB", "BB", "B", "CCC", "CC", "C", "D"])
        zcfzb(nullable:true)
        lrb(nullable:true)
        xjllb(nullable:true)
    }

    static mapping = {
        table "extension_reportinfo"
        id column: "id"
        version column: "version"

        sqsm column:"sqsm", sqlType:"Text"
        jljts column:"jljts", sqlType:"Text"
        ggxyxx column:"ggxyxx", sqlType:"Text"
        syxyxx column:"syxyxx", sqlType:"Text"
        gyryxx column:"gyryxx", sqlType:"Text"
        jyfw column:"jyfw", sqlType:"Text"

        zzjgsz column:"zzjgsz", sqlType:"Text"
        jynl column:"jynl", sqlType:"Text"
        cyryqk column:"cyryqk", sqlType:"Text"
        gjcyzcqk column:"gjcyzcqk", sqlType:"Text"
        zwqk column:"zwqk", sqlType:"Text"
        yfnl column:"yfnl", sqlType:"Text"
        xzjgxyjl column:"xzjgxyjl", sqlType:"Text"
        sfjgxyjl column:"sfjgxyjl", sqlType:"Text"
        yhxdlyqk column:"yhxdlyqk", sqlType:"Text"

        glzdqk column:"glzdqk", sqlType:"Text"
        glrzqk column:"glrzqk", sqlType:"Text"
        ztzbjlyqk column:"ztzbjlyqk", sqlType:"Text"
        ywqk column:"ywqk", sqlType:"Text"
        zwqk column:"zwqk", sqlType:"Text"
        fznl column:"fznl", sqlType:"Text"
        zjxyzk column:"zjxyzk", sqlType:"Text"
        zcyyzk column:"zcyyzk", sqlType:"Text"
        cwxyzk column:"cwxyzk", sqlType:"Text"

        cwxyzk column:"cwxyzk", sqlType:"Text"
        shgxzk column:"shgxzk", sqlType:"Text"
        shgy column:"shgy", sqlType:"Text"
        qyry column:"qyry", sqlType:"Text"
        jbjljfxts column:"jbjljfxts", sqlType:"Text"

        sm column:"sm", sqlType:"Text"
        gzpjap column:"gzpjap", sqlType:"Text"
        qydf column:"qydf", sqlType:"Text"

        zcfzb column:"zcfzb_id"
        lrb column:"lrb_id"
        xjllb column:"xjllb_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return qymc
    }

}
