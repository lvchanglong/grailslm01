package extension

/**
 * 信用报告-利润表
 */
class ReportInfoLrb {

    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    /**
     * 营业收入
     */
    String yysr3Begin = "0.00"//营业收入-期初
    String yysr3End = "0.00"//营业收入-期末
    String yysr2End = "0.00"//营业收入-期末
    String yysr1End = "0.00"//营业收入-期末

    String zyysr3Begin = "0.00"//其中：主营业务收入-期初
    String zyysr3End = "0.00"//其中：主营业务收入-期末
    String zyysr2End = "0.00"//其中：主营业务收入-期末
    String zyysr1End = "0.00"//其中：主营业务收入-期末

    String yycb3Begin = "0.00"//减：营业成本-期初
    String yycb3End = "0.00"//减：营业成本-期末
    String yycb2End = "0.00"//减：营业成本-期末
    String yycb1End = "0.00"//减：营业成本-期末

    String zyycb3Begin = "0.00"//其中：主营业务成本  -期初
    String zyycb3End = "0.00"//其中：主营业务成本  -期末
    String zyycb2End = "0.00"//其中：主营业务成本  -期末
    String zyycb1End = "0.00"//其中：主营业务成本  -期末

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
        nf3(blank:false, nullable:false, size:1..10)
        nf2(blank:false, nullable:false, size:1..10)
        nf1(blank:false, nullable:false, size:1..10)
        //'*'(size: 1..70)
    }

    static mapping = {
        table "extension_reportinfo_lrb"
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
