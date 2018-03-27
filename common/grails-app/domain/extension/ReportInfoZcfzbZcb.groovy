package extension

/**
 * 信用报告-资产负债表-资产表
 */
class ReportInfoZcfzbZcb {

    static belongsTo = [parent: ReportInfoZcfzb]

    /**
     * 流动资产
     */
    String hbzj3Begin = "0.00"//货币资金-期初
    String hbzj3End = "0.00"//货币资金-期末
    String hbzj2End = "0.00"//货币资金-期末
    String hbzj1End = "0.00"//货币资金-期末

    String jyxjrzc3Begin = "0.00"//交易性金融资产-期初
    String jyxjrzc3End = "0.00"//交易性金融资产-期末
    String jyxjrzc2End = "0.00"//交易性金融资产-期末
    String jyxjrzc1End = "0.00"//交易性金融资产-期末

    String yspj3Begin = "0.00"//应收票据-期初
    String yspj3End = "0.00"//应收票据-期末
    String yspj2End = "0.00"//应收票据-期末
    String yspj1End = "0.00"//应收票据-期末

    String yszk3Begin = "0.00"//应收账款-期初
    String yszk3End = "0.00"//应收账款-期末
    String yszk2End = "0.00"//应收账款-期末
    String yszk1End = "0.00"//应收账款-期末

    String yfkx3Begin = "0.00"//预付款项-期初
    String yfkx3End = "0.00"//预付款项-期末
    String yfkx2End = "0.00"//预付款项-期末
    String yfkx1End = "0.00"//预付款项-期末

    String yslx3Begin = "0.00"//应收利息-期初
    String yslx3End = "0.00"//应收利息-期末
    String yslx2End = "0.00"//应收利息-期末
    String yslx1End = "0.00"//应收利息-期末

    String ysgl3Begin = "0.00"//应收股利-期初
    String ysgl3End = "0.00"//应收股利-期末
    String ysgl2End = "0.00"//应收股利-期末
    String ysgl1End = "0.00"//应收股利-期末

    String qtysk3Begin = "0.00"//其他应收款-期初
    String qtysk3End = "0.00"//其他应收款-期末
    String qtysk2End = "0.00"//其他应收款-期末
    String qtysk1End = "0.00"//其他应收款-期末

    String ch3Begin = "0.00"//存货-期初
    String ch3End = "0.00"//存货-期末
    String ch2End = "0.00"//存货-期末
    String ch1End = "0.00"//存货-期末

    String ynndqdfldzc3Begin = "0.00"// 一年内到期的非流动资产-期初
    String ynndqdfldzc3End = "0.00"// 一年内到期的非流动资产-期末
    String ynndqdfldzc2End = "0.00"// 一年内到期的非流动资产-期末
    String ynndqdfldzc1End = "0.00"// 一年内到期的非流动资产-期末

    String qtldzc3Begin = "0.00"//其他流动资产-期初
    String qtldzc3End = "0.00"//其他流动资产-期末
    String qtldzc2End = "0.00"//其他流动资产-期末
    String qtldzc1End = "0.00"//其他流动资产-期末

    String ldzchj3Begin = "0.00"//流动资产合计-期初
    String ldzchj3End = "0.00"//流动资产合计-期末
    String ldzchj2End = "0.00"//流动资产合计-期末
    String ldzchj1End = "0.00"//流动资产合计-期末

    /**
     * 非流动资产
     */
    String kgcsjrzc3Begin = "0.00"//可供出售金融资产-期初
    String kgcsjrzc3End = "0.00"//可供出售金融资产-期末
    String kgcsjrzc2End = "0.00"//可供出售金融资产-期末
    String kgcsjrzc1End = "0.00"//可供出售金融资产-期末

    String cyzdqtz3Begin = "0.00"//持有至到期投资-期初
    String cyzdqtz3End = "0.00"//持有至到期投资-期末
    String cyzdqtz2End = "0.00"//持有至到期投资-期末
    String cyzdqtz1End = "0.00"//持有至到期投资-期末

    String cqysk3Begin = "0.00"//长期应收款-期初
    String cqysk3End = "0.00"//长期应收款-期末
    String cqysk2End = "0.00"//长期应收款-期末
    String cqysk1End = "0.00"//长期应收款-期末

    String cqgqtz3Begin = "0.00"//长期股权投资-期初
    String cqgqtz3End = "0.00"//长期股权投资-期末
    String cqgqtz2End = "0.00"//长期股权投资-期末
    String cqgqtz1End = "0.00"//长期股权投资-期末

    String tzxfc3Begin = "0.00"//投资性房地产-期初
    String tzxfc3End = "0.00"//投资性房地产-期末
    String tzxfc2End = "0.00"//投资性房地产-期末
    String tzxfc1End = "0.00"//投资性房地产-期末

    String gdzcyz3Begin = "0.00"//固定资产原值-期初
    String gdzcyz3End = "0.00"//固定资产原值-期末
    String gdzcyz2End = "0.00"//固定资产原值-期末
    String gdzcyz1End = "0.00"//固定资产原值-期末

    String ljzj3Begin = "0.00"//减：累计折旧-期初
    String ljzj3End = "0.00"//减：累计折旧-期末
    String ljzj2End = "0.00"//减：累计折旧-期末
    String ljzj1End = "0.00"//减：累计折旧-期末

    String gdzcjz3Begin = "0.00"//固定资产净值-期初
    String gdzcjz3End = "0.00"//固定资产净值-期末
    String gdzcjz2End = "0.00"//固定资产净值-期末
    String gdzcjz1End = "0.00"//固定资产净值-期末

    String gdzcjzzb3Begin = "0.00"//减：固定资产减值准备-期初
    String gdzcjzzb3End = "0.00"//减：固定资产减值准备-期末
    String gdzcjzzb2End = "0.00"//减：固定资产减值准备-期末
    String gdzcjzzb1End = "0.00"//减：固定资产减值准备-期末

    String gdzcje3Begin = "0.00"//固定资产净额-期初
    String gdzcje3End = "0.00"//固定资产净额-期末
    String gdzcje2End = "0.00"//固定资产净额-期末
    String gdzcje1End = "0.00"//固定资产净额-期末

    String zjgc3Begin = "0.00"//在建工程-期初
    String zjgc3End = "0.00"//在建工程-期末
    String zjgc2End = "0.00"//在建工程-期末
    String zjgc1End = "0.00"//在建工程-期末

    String gcwz3Begin = "0.00"//工程物资-期初
    String gcwz3End = "0.00"//工程物资-期末
    String gcwz2End = "0.00"//工程物资-期末
    String gcwz1End = "0.00"//工程物资-期末

    String gdzcql3Begin = "0.00"//固定资产清理-期初
    String gdzcql3End = "0.00"//固定资产清理-期末
    String gdzcql2End = "0.00"//固定资产清理-期末
    String gdzcql1End = "0.00"//固定资产清理-期末

    String scxswzc3Begin = "0.00"//生产性生物资产-期初
    String scxswzc3End = "0.00"//生产性生物资产-期末
    String scxswzc2End = "0.00"//生产性生物资产-期末
    String scxswzc1End = "0.00"//生产性生物资产-期末

    String yqzc3Begin = "0.00"//油气资产-期初
    String yqzc3End = "0.00"//油气资产-期末
    String yqzc2End = "0.00"//油气资产-期末
    String yqzc1End = "0.00"//油气资产-期末

    String wxzc3Begin = "0.00"//无形资产-期初
    String wxzc3End = "0.00"//无形资产-期末
    String wxzc2End = "0.00"//无形资产-期末
    String wxzc1End = "0.00"//无形资产-期末

    String kfzc3Begin = "0.00"//开发支出-期初
    String kfzc3End = "0.00"//开发支出-期末
    String kfzc2End = "0.00"//开发支出-期末
    String kfzc1End = "0.00"//开发支出-期末

    String sy3Begin = "0.00"//商誉-期初
    String sy3End = "0.00"//商誉-期末
    String sy2End = "0.00"//商誉-期末
    String sy1End = "0.00"//商誉-期末

    String cqdtfy3Begin = "0.00"//长期待摊费用-期初
    String cqdtfy3End = "0.00"//长期待摊费用-期末
    String cqdtfy2End = "0.00"//长期待摊费用-期末
    String cqdtfy1End = "0.00"//长期待摊费用-期末

    String dysdszc3Begin = "0.00"//递延所得税资产-期初
    String dysdszc3End = "0.00"//递延所得税资产-期末
    String dysdszc2End = "0.00"//递延所得税资产-期末
    String dysdszc1End = "0.00"//递延所得税资产-期末

    String qtfldzc3Begin = "0.00"//其他非流动资产-期初
    String qtfldzc3End = "0.00"//其他非流动资产-期末
    String qtfldzc2End = "0.00"//其他非流动资产-期末
    String qtfldzc1End = "0.00"//其他非流动资产-期末

    String fldzchj3Begin = "0.00"//非流动资产合计-期初
    String fldzchj3End = "0.00"//非流动资产合计-期末
    String fldzchj2End = "0.00"//非流动资产合计-期末
    String fldzchj1End = "0.00"//非流动资产合计-期末

    String zczj3Begin = "0.00"//资产总计-期初
    String zczj3End = "0.00"//资产总计-期末
    String zczj2End = "0.00"//资产总计-期末
    String zczj1End = "0.00"//资产总计-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        //'*'(size: 1..70)
    }

    static mapping = {
        table "extension_reportinfo_zcfzb_zcb"
        id column: "id"
        version column: "version"

        parent column: "parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
