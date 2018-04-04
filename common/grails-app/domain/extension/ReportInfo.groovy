package extension

import common.CommonHelper
import common.NumberHelper
import grails.converters.JSON
import groovy.json.JsonSlurper

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
    String xsyylrl3 = "" //销售（营业）利润率
    String cbfylrl3 = "" //成本费用利润率
    String zzcbcl3 = "" //总资产报酬率
    String xsyysrzzl3 = "" //销售（营业）收入增长率
    String zbbzzzl3 = "" //资本保值增值率
    String xsyylrzzl3 = "" //销售(营业)利润增长率

    String zyywlrl3 = "" //主营业务利润率
    String cbfyzzyywsrdbl3 = "" //成本费用占主营业务收入的比率
    String shgxl3 = "" //社会贡献率
    String zwsx3 = "" //债务上限

    String nf2 = "" //年份（由远及近）
    String zcfzl2 = "" //资产负债率
    String xjldfzbl2 = "" //现金流动负债比率
    String sdbl2 = ""//速动比率
    String zzczzl2 = "" //总资产周转率
    String yszkzzl2 = "" //应收账款周转率
    String ldzczzl2 = "" //流动资产周转率
    String jzcsyl2 = "" //净资产收益率
    String xsyylrl2 = "" //销售（营业）利润率
    String cbfylrl2 = "" //成本费用利润率
    String zzcbcl2 = "" //总资产报酬率
    String xsyysrzzl2 = "" //销售（营业）收入增长率
    String zbbzzzl2 = "" //资本保值增值率
    String xsyylrzzl2 = "" //销售(营业)利润增长率

    String zyywlrl2 = "" //主营业务利润率
    String cbfyzzyywsrdbl2 = "" //成本费用占主营业务收入的比率
    String shgxl2 = "" //社会贡献率
    String zwsx2 = "" //债务上限

    String nf1 = "" //年份（由远及近）
    String zcfzl1 = "" //资产负债率
    String xjldfzbl1 = "" //现金流动负债比率
    String sdbl1 = "" //速动比率
    String zzczzl1 = "" //总资产周转率
    String yszkzzl1 = "" //应收账款周转率
    String ldzczzl1 = "" //流动资产周转率
    String jzcsyl1 = "" //净资产收益率
    String xsyylrl1 = "" //销售（营业）利润率
    String cbfylrl1 = "" //成本费用利润率
    String zzcbcl1 = "" //总资产报酬率
    String xsyysrzzl1 = "" //销售（营业）收入增长率
    String zbbzzzl1 = "" //资本保值增值率
    String xsyylrzzl1 = "" //销售（营业）利润增长率

    String zyywlrl1 = "" //主营业务利润率
    String cbfyzzyywsrdbl1 = "" //成本费用占主营业务收入的比率
    String shgxl1 = "" //社会贡献率
    String zwsx1 = "" //债务上限

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
    String pgzb = ""//评估指标(JSON)
    static transients = ["pgzb"]

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        qymc(blank:false, nullable:false, unique:true)
        tdqkxybgsq(blank:true, nullable:true, inList: ["是", "否"])
        qylx(blank:true, nullable:true, inList: ["大型企业", "中型企业", "小型企业"])
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

    String getGdxxHtml() {
        StringBuilder sb = new StringBuilder()
        sb.append("<table>")
        sb.append("<tr><th>序号</th><th>单位或自然人</th><th>投资金额（元）</th><th>投资比例（％）</th></tr>")
        this.gdxxs.eachWithIndex{ entry, i ->
            sb.append("<tr><td>${i}</td><td>${entry.dwhzrr}</td><td>${entry.tzje}</td><td>${entry.tzbl}</td></tr>")
        }
        sb.append("</table>")
        return sb.toString()
    }

    String getLsygHtml() {
        StringBuilder sb = new StringBuilder()
        sb.append("<table>")
        sb.append("<tr><th>序号</th><th>变更前名称</th><th>变更后名称</th><th>批准时间</th></tr>")
        this.lsygs.eachWithIndex{ entry, i ->
            sb.append("<tr><td>${i}</td><td>${entry.bgqmc}</td><td>${entry.bghmc}</td><td>${entry.pzsj}</td></tr>")
        }
        sb.append("</table>")
        return sb.toString()
    }

    String getFzjgHtml() {
        StringBuilder sb = new StringBuilder()
        sb.append("<table>")
        sb.append("<tr><th>序号</th><th>与报告企业关系</th><th>企业名称</th><th>地址</th><th>联系电话</th></tr>")
        this.fzjgs.eachWithIndex{ entry, i ->
            sb.append("<tr><td>${i}</td><td>${entry.ybgqygx}</td><td>${entry.qymc}</td><td>${entry.dz}</td><td>${entry.lxdh}</td></tr>")
        }
        sb.append("</table>")
        return sb.toString()
    }

    String getGgryszHtml() {
        StringBuilder sb = new StringBuilder()
        sb.append("<table>")
        sb.append("<tr><th>序号</th><th>姓名</th><th>职务</th><th>年龄</th><th>学历及职称</th><th>从业资质</th><th>获奖情况</th></tr>")
        this.ggryszs.eachWithIndex{ entry, i ->
            sb.append("<tr><td>${i}</td><td>${entry.xm}</td><td>${entry.zw}</td><td>${entry.nl}</td><td>${entry.xljzc}</td><td>${entry.cyzz}</td><td>${entry.hjqk}</td></tr>")
        }
        sb.append("</table>")
        return sb.toString()
    }

    def afterLoad() {
        if(this.zcfzb && this.lrb && this.xjllb) {
            def zcb = this.zcfzb.zcb
            def fzb = this.zcfzb.fzb
            if(zcb && fzb) {
                HashMap hm = new HashMap()

                def fzhj3 = NumberHelper.decodeMoney(fzb.fzhj3End)//负债合计
                def fzhj2 = NumberHelper.decodeMoney(fzb.fzhj2End)
                def fzhj1 = NumberHelper.decodeMoney(fzb.fzhj1End)

                def zczj4 = NumberHelper.decodeMoney(zcb.zczj3Begin)//资产总计
                def zczj3 = NumberHelper.decodeMoney(zcb.zczj3End)
                def zczj2 = NumberHelper.decodeMoney(zcb.zczj2End)
                def zczj1 = NumberHelper.decodeMoney(zcb.zczj1End)

                if(zczj3 != 0 && zczj2 != 0 && zczj1 != 0) {
                    if(!this.zcfzl3 && !this.zcfzl2 && !this.zcfzl1) {
                        this.zcfzl3 = NumberHelper.format(fzhj3 / zczj3 * 100)
                        this.zcfzl2 = NumberHelper.format(fzhj2 / zczj2 * 100)
                        this.zcfzl1 = NumberHelper.format(fzhj1 / zczj1 * 100)
                    }
                    hm.put("资产负债率", [zcfzl3, zcfzl2, zcfzl1])
                }

                def jyhdcsdxjllje3 = NumberHelper.decodeMoney(xjllb.jyhdcsdxjllje3End) //经营活动产生的现金流量净额
                def jyhdcsdxjllje2 = NumberHelper.decodeMoney(xjllb.jyhdcsdxjllje2End)
                def jyhdcsdxjllje1 = NumberHelper.decodeMoney(xjllb.jyhdcsdxjllje1End)

                def ldzchj4 = NumberHelper.decodeMoney(fzb.ldfzhj3Begin) //流动负债合计
                def ldfzhj3 = NumberHelper.decodeMoney(fzb.ldfzhj3End)
                def ldfzhj2 = NumberHelper.decodeMoney(fzb.ldfzhj2End)
                def ldfzhj1 = NumberHelper.decodeMoney(fzb.ldfzhj1End)

                def ldzchj3 = NumberHelper.decodeMoney(zcb.ldzchj3End) //流动资产合计
                def ldzchj2 = NumberHelper.decodeMoney(zcb.ldzchj2End)
                def ldzchj1 = NumberHelper.decodeMoney(zcb.ldzchj1End)

                def ch3 = NumberHelper.decodeMoney(zcb.ch3End) //存货
                def ch2 = NumberHelper.decodeMoney(zcb.ch2End) //存货
                def ch1 = NumberHelper.decodeMoney(zcb.ch1End) //存货

                if(ldfzhj3 != 0 && ldfzhj2 != 0 && ldfzhj1 != 0) {
                    if(!this.xjldfzbl3 && !this.xjldfzbl2 && !this.xjldfzbl1) {
                        this.xjldfzbl3 = NumberHelper.format(jyhdcsdxjllje3 / ldfzhj3 * 100)
                        this.xjldfzbl2 = NumberHelper.format(jyhdcsdxjllje2 / ldfzhj2 * 100)
                        this.xjldfzbl1 = NumberHelper.format(jyhdcsdxjllje1 / ldfzhj1 * 100)
                    }
                    hm.put("现金流动负债比率", [xjldfzbl3, xjldfzbl2, xjldfzbl1])

                    if(!this.sdbl3 && !this.sdbl2 && !this.sdbl1) {
                        this.sdbl3 = NumberHelper.format((ldzchj3 - ch3) / ldfzhj3 * 100)
                        this.sdbl2 = NumberHelper.format((ldzchj2 - ch2) / ldfzhj2 * 100)
                        this.sdbl1 = NumberHelper.format((ldzchj1 - ch1) / ldfzhj1 * 100)
                    }
                    hm.put("速动比率", [sdbl3, sdbl2, sdbl1])
                }

                def zyywsr4 = NumberHelper.decodeMoney(lrb.zyywsr3Begin) //主营业务收入
                def zyywsr3 = NumberHelper.decodeMoney(lrb.zyywsr3End)
                def zyywsr2 = NumberHelper.decodeMoney(lrb.zyywsr2End)
                def zyywsr1 = NumberHelper.decodeMoney(lrb.zyywsr1End)

                def pjzcze3 = (zczj4 + zczj3) / 2 //平均资产总额
                def pjzcze2 = (zczj3 + zczj2) / 2
                def pjzcze1 = (zczj2 + zczj1) / 2

                def yszk4 = NumberHelper.decodeMoney(zcb.yszk3Begin) //应收账款
                def yszk3 = NumberHelper.decodeMoney(zcb.yszk3End)
                def yszk2 = NumberHelper.decodeMoney(zcb.yszk2End)
                def yszk1 = NumberHelper.decodeMoney(zcb.yszk1End)

                def pjyszkye3 = (yszk4 + yszk3) / 2 //平均应收账款余额
                def pjyszkye2 = (yszk3 + yszk2) / 2
                def pjyszkye1 = (yszk2 + yszk1) / 2

                if(pjzcze3 != 0 && pjzcze2 != 0 && pjzcze1 != 0) {
                    if(!this.yszkzzl3 && !this.yszkzzl2 && !this.yszkzzl1) {
                        this.yszkzzl3 = NumberHelper.format(pjyszkye3 / pjzcze3)
                        this.yszkzzl2 = NumberHelper.format(pjyszkye2 / pjzcze2)
                        this.yszkzzl1 = NumberHelper.format(pjyszkye1 / pjzcze1)
                    }
                    hm.put("应收账款周转率", [yszkzzl3, yszkzzl2, yszkzzl1])

                    if(!this.zzczzl3 && !this.zzczzl2 && !this.zzczzl1) {
                        this.zzczzl3 = NumberHelper.format(zyywsr3 / pjzcze3)
                        this.zzczzl2 = NumberHelper.format(zyywsr2 / pjzcze2)
                        this.zzczzl1 = NumberHelper.format(zyywsr1 / pjzcze1)
                    }
                    hm.put("总资产周转率", [zzczzl3, zzczzl2, zzczzl1])
                }

                def pjldzcze3 = (ldzchj4 + ldzchj3) / 2 //平均流动资产总额
                def pjldzcze2 = (ldzchj3 + ldzchj2) / 2
                def pjldzcze1 = (ldzchj2 + ldzchj1) / 2

                if(pjldzcze3 != 0 && pjldzcze2 != 0 && pjldzcze1 != 0) {
                    if(!this.ldzczzl3 && !this.ldzczzl2 && !this.ldzczzl1) {
                        this.ldzczzl3 = NumberHelper.format(zyywsr3 / pjldzcze3)
                        this.ldzczzl2 = NumberHelper.format(zyywsr2 / pjldzcze2)
                        this.ldzczzl1 = NumberHelper.format(zyywsr1 / pjldzcze1)
                    }
                    hm.put("流动资产周转率", [ldzczzl3, ldzczzl2, ldzczzl1])
                }

                def jlr3 = NumberHelper.decodeMoney(lrb.jlr3End) //净利润
                def jlr2 = NumberHelper.decodeMoney(lrb.jlr2End)
                def jlr1 = NumberHelper.decodeMoney(lrb.jlr1End)

                def syzqyhj4 = NumberHelper.decodeMoney(fzb.syzqyhj3Begin) //所有者权益合计
                def syzqyhj3 = NumberHelper.decodeMoney(fzb.syzqyhj3End)
                def syzqyhj2 = NumberHelper.decodeMoney(fzb.syzqyhj2End)
                def syzqyhj1 = NumberHelper.decodeMoney(fzb.syzqyhj1End)

                def pjjzc3 = (syzqyhj4 + syzqyhj3) / 2 //平均净资产
                def pjjzc2 = (syzqyhj3 + syzqyhj2) / 2
                def pjjzc1 = (syzqyhj2 + syzqyhj1) / 2

                if(pjjzc3 != 0 && pjjzc2 != 0 && pjjzc1 != 0) {
                    if(!this.jzcsyl3 && !this.jzcsyl2 && !this.jzcsyl1) {
                        this.jzcsyl3 = NumberHelper.format(jlr3 / pjjzc3 * 100)
                        this.jzcsyl2 = NumberHelper.format(jlr2 / pjjzc2 * 100)
                        this.jzcsyl1 = NumberHelper.format(jlr1 / pjjzc1 * 100)
                    }
                    hm.put("净资产收益率", [jzcsyl3, jzcsyl2, jzcsyl1])
                }

                def lrze3 = NumberHelper.decodeMoney(lrb.lrze3End) //利润总额
                def lrze2 = NumberHelper.decodeMoney(lrb.lrze2End)
                def lrze1 = NumberHelper.decodeMoney(lrb.lrze1End)

                def yysr3 = NumberHelper.decodeMoney(lrb.yysr3End) //营业收入
                def yysr2 = NumberHelper.decodeMoney(lrb.yysr2End)
                def yysr1 = NumberHelper.decodeMoney(lrb.yysr1End)

                if(yysr3 != 0 && yysr2 != 0 && yysr1 != 0) {
                    if(!this.xsyylrl3 && !this.xsyylrl2 && !this.xsyylrl1) {
                        this.xsyylrl3 = NumberHelper.format(lrze3 / yysr3 * 100)
                        this.xsyylrl2 = NumberHelper.format(lrze2 / yysr2 * 100)
                        this.xsyylrl1 = NumberHelper.format(lrze1 / yysr1 * 100)
                    }
                    hm.put("销售(营业)利润率", [xsyylrl3, xsyylrl2, xsyylrl1])
                }

                def cbfyze3 = NumberHelper.decodeMoney(lrb.zyywcb3End) + NumberHelper.decodeMoney(lrb.yysjjfj3End) + NumberHelper.decodeMoney(lrb.xsfy3End) + NumberHelper.decodeMoney(lrb.glfy3End) + NumberHelper.decodeMoney(lrb.cwfy3End) //成本费用总额
                def cbfyze2 = NumberHelper.decodeMoney(lrb.zyywcb2End) + NumberHelper.decodeMoney(lrb.yysjjfj2End) + NumberHelper.decodeMoney(lrb.xsfy2End) + NumberHelper.decodeMoney(lrb.glfy2End) + NumberHelper.decodeMoney(lrb.cwfy2End)
                def cbfyze1 = NumberHelper.decodeMoney(lrb.zyywcb1End) + NumberHelper.decodeMoney(lrb.yysjjfj1End) + NumberHelper.decodeMoney(lrb.xsfy1End) + NumberHelper.decodeMoney(lrb.glfy1End) + NumberHelper.decodeMoney(lrb.cwfy1End)

                if(cbfyze3 != 0 && cbfyze2 != 0 && cbfyze1 != 0) {
                    if(!this.cbfylrl3 && !this.cbfylrl2 && !this.cbfylrl1) {
                        this.cbfylrl3 = NumberHelper.format(lrze3 / cbfyze3 * 100)
                        this.cbfylrl2 = NumberHelper.format(lrze2 / cbfyze2 * 100)
                        this.cbfylrl1 = NumberHelper.format(lrze1 / cbfyze1 * 100)
                    }
                    hm.put("成本费用利润率", [cbfylrl3, cbfylrl2, cbfylrl1])
                }

                def lxzc3 = NumberHelper.decodeMoney(lrb.lxzc3End) //利息支出
                def lxzc2 = NumberHelper.decodeMoney(lrb.lxzc2End)
                def lxzc1 = NumberHelper.decodeMoney(lrb.lxzc1End)

                if(pjzcze3 != 0 && pjzcze2 != 0 && pjzcze1 != 0) {
                    if(!this.zzcbcl3 && !this.zzcbcl2 && !this.zzcbcl1) {
                        this.zzcbcl3 = NumberHelper.format((lrze3 + lxzc3) / pjzcze3 * 100)
                        this.zzcbcl2 = NumberHelper.format((lrze2 + lxzc2) / pjzcze2 * 100)
                        this.zzcbcl1 = NumberHelper.format((lrze1 + lxzc1) / pjzcze1 * 100)
                    }
                    hm.put("总资产报酬率", [zzcbcl3, zzcbcl2, zzcbcl1])
                }

                def bnzyywsrzze3 = zyywsr3 - zyywsr4 //本年主营业务收入增长额
                def bnzyywsrzze2 = zyywsr2 - zyywsr3
                def bnzyywsrzze1 = zyywsr1 - zyywsr2

                if(zyywsr4 != 0 && zyywsr3 != 0 && zyywsr2 != 0) {
                    if(!this.xsyysrzzl3 && !this.xsyysrzzl2 && !this.xsyysrzzl1) {
                        this.xsyysrzzl3 = NumberHelper.format(bnzyywsrzze3 / zyywsr4 * 100)
                        this.xsyysrzzl2 = NumberHelper.format(bnzyywsrzze2 / zyywsr3 * 100)
                        this.xsyysrzzl1 = NumberHelper.format(bnzyywsrzze1 / zyywsr2 * 100)
                    }
                    hm.put("销售(营业)收入增长率", [xsyysrzzl3, xsyysrzzl2, xsyysrzzl1])
                }

                if(syzqyhj4 != 0 && syzqyhj3 != 0 && syzqyhj2 != 0) {
                    if(!this.zbbzzzl3 && !this.zbbzzzl2 && !this.zbbzzzl1) {
                        this.zbbzzzl3 = NumberHelper.format(syzqyhj3 / syzqyhj4 * 100)
                        this.zbbzzzl2 = NumberHelper.format(syzqyhj2 / syzqyhj3 * 100)
                        this.zbbzzzl1 = NumberHelper.format(syzqyhj1 / syzqyhj2 * 100)
                    }
                    hm.put("资本保值增值率", [zbbzzzl3, zbbzzzl2, zbbzzzl1])
                }

                def yysjjfj4 = NumberHelper.decodeMoney(lrb.yysjjfj3Begin) //营业税金及附加
                def yysjjfj3 = NumberHelper.decodeMoney(lrb.yysjjfj3End)
                def yysjjfj2 = NumberHelper.decodeMoney(lrb.yysjjfj2End)
                def yysjjfj1 = NumberHelper.decodeMoney(lrb.yysjjfj1End)

                //营业成本
                def yycb4 = NumberHelper.decodeMoney(lrb.yycb3Begin) //营业成本
                def yycb3 = NumberHelper.decodeMoney(lrb.yycb3End)
                def yycb2 = NumberHelper.decodeMoney(lrb.yycb2End)
                def yycb1 = NumberHelper.decodeMoney(lrb.yycb1End)

                def bnzyywlr3 = zyywsr3 - yycb3 - yysjjfj3 //本年主营业务利润
                def bnzyywlr2 = zyywsr2 - yycb2 - yysjjfj2
                def bnzyywlr1 = zyywsr1 - yycb1 - yysjjfj1

                def snzyywlr4 = zyywsr4 - yycb4 - yysjjfj4 //上年主营业务利润
                def snzyywlr3 = zyywsr3 - yycb3 - yysjjfj3
                def snzyywlr2 = zyywsr2 - yycb2 - yysjjfj2

                if(snzyywlr4 != 0 && snzyywlr4 != 0 && snzyywlr4 != 0) {
                    if(!this.xsyylrzzl3 && !this.xsyylrzzl2 && !this.xsyylrzzl1) {
                        this.xsyylrzzl3 = NumberHelper.format((bnzyywlr3 - snzyywlr4) / snzyywlr4 * 100)
                        this.xsyylrzzl2 = NumberHelper.format((bnzyywlr2 - snzyywlr3) / snzyywlr3 * 100)
                        this.xsyylrzzl1 = NumberHelper.format((bnzyywlr1 - snzyywlr2) / snzyywlr2 * 100)
                    }
                    hm.put("销售(营业)利润增长率", [xsyylrzzl3, xsyylrzzl2, xsyylrzzl1])
                }

                def yylr3 = NumberHelper.decodeMoney(lrb.yylr3End)
                def yylr2 = NumberHelper.decodeMoney(lrb.yylr2End)
                def yylr1 = NumberHelper.decodeMoney(lrb.yylr1End)

                if(zyywsr3 != 0 && zyywsr2 != 0 && zyywsr1 != 0) {
                    if(!this.zyywlrl3 && !this.zyywlrl2 && !this.zyywlrl1) {
                        this.zyywlrl3 = NumberHelper.format(yylr3 / zyywsr3 * 100)
                        this.zyywlrl2 = NumberHelper.format(yylr2 / zyywsr2 * 100)
                        this.zyywlrl1 = NumberHelper.format(yylr1 / zyywsr1 * 100)
                    }
                    hm.put("主营业务利润率", [zyywlrl3, zyywlrl2, zyywlrl1])

                    if(!this.cbfyzzyywsrdbl3 && !this.cbfyzzyywsrdbl2 && !this.cbfyzzyywsrdbl1) {
                        this.cbfyzzyywsrdbl3 = NumberHelper.format(cbfyze3 / zyywsr3 * 100)
                        this.cbfyzzyywsrdbl2 = NumberHelper.format(cbfyze2 / zyywsr2 * 100)
                        this.cbfyzzyywsrdbl1 = NumberHelper.format(cbfyze1 / zyywsr1 * 100)
                    }
                    hm.put("成本费用占主营业务收入的比率", [cbfyzzyywsrdbl3, cbfyzzyywsrdbl2, cbfyzzyywsrdbl1])
                }

                def shgxze3 = jlr3 + NumberHelper.decodeMoney(xjllb.zfdgxsf3End) + NumberHelper.decodeMoney(xjllb.zfgzgyjwzgzfdxj3End)
                def shgxze2 = jlr3 + NumberHelper.decodeMoney(xjllb.zfdgxsf3End) + NumberHelper.decodeMoney(xjllb.zfgzgyjwzgzfdxj3End)
                def shgxze1 = jlr3 + NumberHelper.decodeMoney(xjllb.zfdgxsf3End) + NumberHelper.decodeMoney(xjllb.zfgzgyjwzgzfdxj3End)

                if(pjjzc3 != 0 && pjjzc2 != 0 && pjjzc1 != 0) {
                    if(!this.shgxl3 && !this.shgxl2 && !this.shgxl1) {
                        this.shgxl3 = NumberHelper.format(shgxze3 / pjjzc3 * 100)
                        this.shgxl2 = NumberHelper.format(shgxze2 / pjjzc2 * 100)
                        this.shgxl1 = NumberHelper.format(shgxze1 / pjjzc1 * 100)
                    }
                    hm.put("社会贡献率", [shgxl3, shgxl2, shgxl1])
                }

                if(syzqyhj3 != 0 && syzqyhj2 != 0 && syzqyhj1 != 0) {
                    if(!this.zwsx3 && !this.zwsx2 && !this.zwsx1) {
                        this.zwsx3 = NumberHelper.format((NumberHelper.decodeMoney(zcb.hbzj3End) + NumberHelper.decodeMoney(zcb.yspj3End) + yszk3 + NumberHelper.decodeMoney(zcb.yfkx3End) + ch3 - NumberHelper.decodeMoney(fzb.dqjk3End) - NumberHelper.decodeMoney(fzb.yfzk3End) - NumberHelper.decodeMoney(fzb.yskx3End)) / syzqyhj3)
                        this.zwsx2 = NumberHelper.format((NumberHelper.decodeMoney(zcb.hbzj2End) + NumberHelper.decodeMoney(zcb.yspj2End) + yszk2 + NumberHelper.decodeMoney(zcb.yfkx2End) + ch2 - NumberHelper.decodeMoney(fzb.dqjk2End) - NumberHelper.decodeMoney(fzb.yfzk2End) - NumberHelper.decodeMoney(fzb.yskx2End)) / syzqyhj2)
                        this.zwsx1 = NumberHelper.format((NumberHelper.decodeMoney(zcb.hbzj1End) + NumberHelper.decodeMoney(zcb.yspj1End) + yszk1 + NumberHelper.decodeMoney(zcb.yfkx1End) + ch1 - NumberHelper.decodeMoney(fzb.dqjk1End) - NumberHelper.decodeMoney(fzb.yfzk1End) - NumberHelper.decodeMoney(fzb.yskx1End)) / syzqyhj1)
                    }
                    hm.put("债务上限", [zwsx3, zwsx2, zwsx1])
                }

                this.pgzb = hm as JSON
            }
        }
    }

}
