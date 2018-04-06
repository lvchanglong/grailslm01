package extension

/**
 * 信用报告-利润表
 */
class ReportInfoLrb {

    static belongsTo = [parent: ReportInfo]

    /**
     * 营业收入
     */
    String yysr3Begin = "0.00"//营业收入-期初
    String yysr3End = "0.00"//营业收入-期末
    String yysr2End = "0.00"//营业收入-期末
    String yysr1End = "0.00"//营业收入-期末

    String zyywsr3Begin = "0.00"//其中：主营业务收入-期初
    String zyywsr3End = "0.00"//其中：主营业务收入-期末
    String zyywsr2End = "0.00"//其中：主营业务收入-期末
    String zyywsr1End = "0.00"//其中：主营业务收入-期末

    String yycb3Begin = "0.00"//减：营业成本-期初
    String yycb3End = "0.00"//减：营业成本-期末
    String yycb2End = "0.00"//减：营业成本-期末
    String yycb1End = "0.00"//减：营业成本-期末

    String zyywcb3Begin = "0.00"//其中：主营业务成本  -期初
    String zyywcb3End = "0.00"//其中：主营业务成本  -期末
    String zyywcb2End = "0.00"//其中：主营业务成本  -期末
    String zyywcb1End = "0.00"//其中：主营业务成本  -期末

    String yysjjfj3Begin = "0.00"//营业税金及附加-期初
    String yysjjfj3End = "0.00"//营业税金及附加-期末
    String yysjjfj2End = "0.00"//营业税金及附加-期末
    String yysjjfj1End = "0.00"//营业税金及附加-期末

    String xsfy3Begin = "0.00"//销售费用-期初
    String xsfy3End = "0.00"//销售费用-期末
    String xsfy2End = "0.00"//销售费用-期末
    String xsfy1End = "0.00"//销售费用-期末

    String glfy3Begin = "0.00"//管理费用-期初
    String glfy3End = "0.00"//管理费用-期末
    String glfy2End = "0.00"//管理费用-期末
    String glfy1End = "0.00"//管理费用-期末

    String cwfy3Begin = "0.00"//财务费用-期初
    String cwfy3End = "0.00"//财务费用-期末
    String cwfy2End = "0.00"//财务费用-期末
    String cwfy1End = "0.00"//财务费用-期末

    String lxzc3Begin = "0.00"//其中：利息支出-期初
    String lxzc3End = "0.00"//其中：利息支出-期末
    String lxzc2End = "0.00"//其中：利息支出-期末
    String lxzc1End = "0.00"//其中：利息支出-期末

    String zcjzss3Begin = "0.00"//资产减值损失-期初
    String zcjzss3End = "0.00"//资产减值损失-期末
    String zcjzss2End = "0.00"//资产减值损失-期末
    String zcjzss1End = "0.00"//资产减值损失-期末

    String gyjzbdsy3Begin = "0.00"//加：公允价值变动收益（损失以“-”号填列）-期初
    String gyjzbdsy3End = "0.00"//加：公允价值变动收益（损失以“-”号填列）-期末
    String gyjzbdsy2End = "0.00"//加：公允价值变动收益（损失以“-”号填列）-期末
    String gyjzbdsy1End = "0.00"//加：公允价值变动收益（损失以“-”号填列）-期末

    String tzsy3Begin = "0.00"//投资收益（损失以“-”号填列）-期初
    String tzsy3End = "0.00"//投资收益（损失以“-”号填列）-期末
    String tzsy2End = "0.00"//投资收益（损失以“-”号填列）-期末
    String tzsy1End = "0.00"//投资收益（损失以“-”号填列）-期末

    String dlyqyhhyqydtzsy3Begin = "0.00"//其中：对联营企业和合营企业的投资收益-期初
    String dlyqyhhyqydtzsy3End = "0.00"//其中：对联营企业和合营企业的投资收益-期末
    String dlyqyhhyqydtzsy2End = "0.00"//其中：对联营企业和合营企业的投资收益-期末
    String dlyqyhhyqydtzsy1End = "0.00"//其中：对联营企业和合营企业的投资收益-期末

    String yylr3Begin = "0.00"//营业利润（损失以“-”号填列）-期初
    String yylr3End = "0.00"//营业利润（损失以“-”号填列）-期末
    String yylr2End = "0.00"//营业利润（损失以“-”号填列）-期末
    String yylr1End = "0.00"//营业利润（损失以“-”号填列）-期末

    String yywsr3Begin = "0.00"//加：营业外收入-期初
    String yywsr3End = "0.00"//加：营业外收入-期末
    String yywsr2End = "0.00"//加：营业外收入-期末
    String yywsr1End = "0.00"//加：营业外收入-期末

    String yywzc3Begin = "0.00"//减：营业外支出-期初
    String yywzc3End = "0.00"//减：营业外支出-期末
    String yywzc2End = "0.00"//减：营业外支出-期末
    String yywzc1End = "0.00"//减：营业外支出-期末

    String fldzcczss3Begin = "0.00"//其中：非流动资产处置损失-期初
    String fldzcczss3End = "0.00"//其中：非流动资产处置损失-期末
    String fldzcczss2End = "0.00"//其中：非流动资产处置损失-期末
    String fldzcczss1End = "0.00"//其中：非流动资产处置损失-期末

    String lrze3Begin = "0.00"//利润总额（损失以“-”号填列）-期初
    String lrze3End = "0.00"//利润总额（损失以“-”号填列）-期末
    String lrze2End = "0.00"//利润总额（损失以“-”号填列）-期末
    String lrze1End = "0.00"//利润总额（损失以“-”号填列）-期末

    String sdsfy3Begin = "0.00"//减：所得税费用-期初
    String sdsfy3End = "0.00"//减：所得税费用-期末
    String sdsfy2End = "0.00"//减：所得税费用-期末
    String sdsfy1End = "0.00"//减：所得税费用-期末

    String jlr3Begin = "0.00"//净利润-期初
    String jlr3End = "0.00"//净利润-期末
    String jlr2End = "0.00"//净利润-期末
    String jlr1End = "0.00"//净利润-期末

    String mgsy3Begin = "0.00"//每股收益-期初
    String mgsy3End = "0.00"//每股收益-期末
    String mgsy2End = "0.00"//每股收益-期末
    String mgsy1End = "0.00"//每股收益-期末

    String jbmgsy3Begin = "0.00"//基本每股收益-期初
    String jbmgsy3End = "0.00"//基本每股收益-期末
    String jbmgsy2End = "0.00"//基本每股收益-期末
    String jbmgsy1End = "0.00"//基本每股收益-期末

    String xsmgsy3Begin = "0.00"//稀释每股收益-期初
    String xsmgsy3End = "0.00"//稀释每股收益-期末
    String xsmgsy2End = "0.00"//稀释每股收益-期末
    String xsmgsy1End = "0.00"//稀释每股收益-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {

    }

    static mapping = {
        table "extension_reportinfo_lrb"
        id column: "id"
        version column: "version"

        lxzc1End column:"lxzc1End", sqlType:"VarChar(30)"
        tzsy2End column:"tzsy2End", sqlType:"VarChar(30)"
        fldzcczss2End column:"fldzcczss2End", sqlType:"VarChar(30)"
        lxzc3End column:"lxzc3End", sqlType:"VarChar(30)"
        yylr3End column:"yylr3End", sqlType:"VarChar(30)"
        glfy3End column:"glfy3End", sqlType:"VarChar(30)"
        glfy2End column:"glfy2End", sqlType:"VarChar(30)"
        yysr3Begin column:"yysr3Begin", sqlType:"VarChar(30)"
        yycb3End column:"yycb3End", sqlType:"VarChar(30)"
        lrze2End column:"lrze2End", sqlType:"VarChar(30)"
        xsmgsy3End column:"xsmgsy3End", sqlType:"VarChar(30)"
        yysr3End column:"yysr3End", sqlType:"VarChar(30)"
        jbmgsy3End column:"jbmgsy3End", sqlType:"VarChar(30)"
        yywzc1End column:"yywzc1End", sqlType:"VarChar(30)"
        zyywcb2End column:"zyywcb2End", sqlType:"VarChar(30)"
        jlr1End column:"jlr1End", sqlType:"VarChar(30)"
        zyywsr3End column:"zyywsr3End", sqlType:"VarChar(30)"
        lrze3End column:"lrze3End", sqlType:"VarChar(30)"
        cwfy2End column:"cwfy2End", sqlType:"VarChar(30)"
        yycb1End column:"yycb1End", sqlType:"VarChar(30)"
        zyywcb3Begin column:"zyywcb3Begin", sqlType:"VarChar(30)"
        cwfy3Begin column:"cwfy3Begin", sqlType:"VarChar(30)"
        yywsr1End column:"yywsr1End", sqlType:"VarChar(30)"
        yylr2End column:"yylr2End", sqlType:"VarChar(30)"
        sdsfy1End column:"sdsfy1End", sqlType:"VarChar(30)"
        lrze3Begin column:"lrze3Begin", sqlType:"VarChar(30)"
        yywzc3End column:"yywzc3End", sqlType:"VarChar(30)"
        zyywsr2End column:"zyywsr2End", sqlType:"VarChar(30)"
        yywsr3Begin column:"yywsr3Begin", sqlType:"VarChar(30)"
        gyjzbdsy3Begin column:"gyjzbdsy3Begin", sqlType:"VarChar(30)"
        dlyqyhhyqydtzsy3Begin column:"dlyqyhhyqydtzsy3Begin", sqlType:"VarChar(30)"
        jlr3End column:"jlr3End", sqlType:"VarChar(30)"
        yysjjfj2End column:"yysjjfj2End", sqlType:"VarChar(30)"
        dlyqyhhyqydtzsy1End column:"dlyqyhhyqydtzsy1End", sqlType:"VarChar(30)"
        zcjzss1End column:"zcjzss1End", sqlType:"VarChar(30)"
        xsfy3Begin column:"xsfy3Begin", sqlType:"VarChar(30)"
        mgsy3End column:"mgsy3End", sqlType:"VarChar(30)"
        jbmgsy2End column:"jbmgsy2End", sqlType:"VarChar(30)"
        zcjzss3End column:"zcjzss3End", sqlType:"VarChar(30)"
        yywzc2End column:"yywzc2End", sqlType:"VarChar(30)"
        yylr1End column:"yylr1End", sqlType:"VarChar(30)"
        yywsr2End column:"yywsr2End", sqlType:"VarChar(30)"
        mgsy3Begin column:"mgsy3Begin", sqlType:"VarChar(30)"
        tzsy3End column:"tzsy3End", sqlType:"VarChar(30)"
        gyjzbdsy2End column:"gyjzbdsy2End", sqlType:"VarChar(30)"
        dlyqyhhyqydtzsy2End column:"dlyqyhhyqydtzsy2End", sqlType:"VarChar(30)"
        jlr3Begin column:"jlr3Begin", sqlType:"VarChar(30)"
        xsfy3End column:"xsfy3End", sqlType:"VarChar(30)"
        tzsy1End column:"tzsy1End", sqlType:"VarChar(30)"
        lrze1End column:"lrze1End", sqlType:"VarChar(30)"
        zyywcb1End column:"zyywcb1End", sqlType:"VarChar(30)"
        xsmgsy3Begin column:"xsmgsy3Begin", sqlType:"VarChar(30)"
        yylr3Begin column:"yylr3Begin", sqlType:"VarChar(30)"
        xsfy1End column:"xsfy1End", sqlType:"VarChar(30)"
        lxzc3Begin column:"lxzc3Begin", sqlType:"VarChar(30)"
        lxzc2End column:"lxzc2End", sqlType:"VarChar(30)"
        fldzcczss3End column:"fldzcczss3End", sqlType:"VarChar(30)"
        xsmgsy1End column:"xsmgsy1End", sqlType:"VarChar(30)"
        yysjjfj3End column:"yysjjfj3End", sqlType:"VarChar(30)"
        xsmgsy2End column:"xsmgsy2End", sqlType:"VarChar(30)"
        jbmgsy1End column:"jbmgsy1End", sqlType:"VarChar(30)"
        fldzcczss3Begin column:"fldzcczss3Begin", sqlType:"VarChar(30)"
        dlyqyhhyqydtzsy3End column:"dlyqyhhyqydtzsy3End", sqlType:"VarChar(30)"
        gyjzbdsy3End column:"gyjzbdsy3End", sqlType:"VarChar(30)"
        fldzcczss1End column:"fldzcczss1End", sqlType:"VarChar(30)"
        cwfy1End column:"cwfy1End", sqlType:"VarChar(30)"
        yycb3Begin column:"yycb3Begin", sqlType:"VarChar(30)"
        zyywcb3End column:"zyywcb3End", sqlType:"VarChar(30)"
        zcjzss2End column:"zcjzss2End", sqlType:"VarChar(30)"
        yysjjfj3Begin column:"yysjjfj3Begin", sqlType:"VarChar(30)"
        glfy1End column:"glfy1End", sqlType:"VarChar(30)"
        glfy3Begin column:"glfy3Begin", sqlType:"VarChar(30)"
        yysr1End column:"yysr1End", sqlType:"VarChar(30)"
        mgsy2End column:"mgsy2End", sqlType:"VarChar(30)"
        jlr2End column:"jlr2End", sqlType:"VarChar(30)"
        mgsy1End column:"mgsy1End", sqlType:"VarChar(30)"
        sdsfy3Begin column:"sdsfy3Begin", sqlType:"VarChar(30)"
        sdsfy3End column:"sdsfy3End", sqlType:"VarChar(30)"
        sdsfy2End column:"sdsfy2End", sqlType:"VarChar(30)"
        yywsr3End column:"yywsr3End", sqlType:"VarChar(30)"
        yycb2End column:"yycb2End", sqlType:"VarChar(30)"
        xsfy2End column:"xsfy2End", sqlType:"VarChar(30)"
        yysjjfj1End column:"yysjjfj1End", sqlType:"VarChar(30)"
        zyywsr1End column:"zyywsr1End", sqlType:"VarChar(30)"
        jbmgsy3Begin column:"jbmgsy3Begin", sqlType:"VarChar(30)"
        zcjzss3Begin column:"zcjzss3Begin", sqlType:"VarChar(30)"
        tzsy3Begin column:"tzsy3Begin", sqlType:"VarChar(30)"
        gyjzbdsy1End column:"gyjzbdsy1End", sqlType:"VarChar(30)"
        yysr2End column:"yysr2End", sqlType:"VarChar(30)"
        zyywsr3Begin column:"zyywsr3Begin", sqlType:"VarChar(30)"
        cwfy3End column:"cwfy3End", sqlType:"VarChar(30)"
        yywzc3Begin column:"yywzc3Begin", sqlType:"VarChar(30)"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
