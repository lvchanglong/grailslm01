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

    }

    static mapping = {
        table "extension_reportinfo_zcfzb_zcb"
        id column: "id"
        version column: "version"

        ch2End column:"ch2End", sqlType:"VarChar(30)"
        yfkx2End column:"yfkx2End", sqlType:"VarChar(30)"
        dysdszc3Begin column:"dysdszc3Begin", sqlType:"VarChar(30)"
        hbzj1End column:"hbzj1End", sqlType:"VarChar(30)"
        dysdszc2End column:"dysdszc2End", sqlType:"VarChar(30)"
        cqdtfy2End column:"cqdtfy2End", sqlType:"VarChar(30)"
        kfzc1End column:"kfzc1End", sqlType:"VarChar(30)"
        scxswzc3End column:"scxswzc3End", sqlType:"VarChar(30)"
        gdzcql3Begin column:"gdzcql3Begin", sqlType:"VarChar(30)"
        cqysk2End column:"cqysk2End", sqlType:"VarChar(30)"
        yslx1End column:"yslx1End", sqlType:"VarChar(30)"
        yspj2End column:"yspj2End", sqlType:"VarChar(30)"
        cqysk3End column:"cqysk3End", sqlType:"VarChar(30)"
        fldzchj3Begin column:"fldzchj3Begin", sqlType:"VarChar(30)"
        cyzdqtz3End column:"cyzdqtz3End", sqlType:"VarChar(30)"
        cqdtfy3Begin column:"cqdtfy3Begin", sqlType:"VarChar(30)"
        hbzj2End column:"hbzj2End", sqlType:"VarChar(30)"
        yszk3Begin column:"yszk3Begin", sqlType:"VarChar(30)"
        ldzchj1End column:"ldzchj1End", sqlType:"VarChar(30)"
        cqgqtz3End column:"cqgqtz3End", sqlType:"VarChar(30)"
        kfzc2End column:"kfzc2End", sqlType:"VarChar(30)"
        gdzcjzzb2End column:"gdzcjzzb2End", sqlType:"VarChar(30)"
        ysgl3End column:"ysgl3End", sqlType:"VarChar(30)"
        gdzcyz3End column:"gdzcyz3End", sqlType:"VarChar(30)"
        cqgqtz1End column:"cqgqtz1End", sqlType:"VarChar(30)"
        fldzchj3End column:"fldzchj3End", sqlType:"VarChar(30)"
        gcwz3End column:"gcwz3End", sqlType:"VarChar(30)"
        yqzc3Begin column:"yqzc3Begin", sqlType:"VarChar(30)"
        hbzj3End column:"hbzj3End", sqlType:"VarChar(30)"
        qtldzc3End column:"qtldzc3End", sqlType:"VarChar(30)"
        kgcsjrzc1End column:"kgcsjrzc1End", sqlType:"VarChar(30)"
        cqgqtz2End column:"cqgqtz2End", sqlType:"VarChar(30)"
        qtfldzc1End column:"qtfldzc1End", sqlType:"VarChar(30)"
        yszk1End column:"yszk1End", sqlType:"VarChar(30)"
        ljzj1End column:"ljzj1End", sqlType:"VarChar(30)"
        ysgl3Begin column:"ysgl3Begin", sqlType:"VarChar(30)"
        ynndqdfldzc2End column:"ynndqdfldzc2End", sqlType:"VarChar(30)"
        yszk2End column:"yszk2End", sqlType:"VarChar(30)"
        cqdtfy3End column:"cqdtfy3End", sqlType:"VarChar(30)"
        jyxjrzc3End column:"jyxjrzc3End", sqlType:"VarChar(30)"
        qtysk3Begin column:"qtysk3Begin", sqlType:"VarChar(30)"
        kfzc3End column:"kfzc3End", sqlType:"VarChar(30)"
        qtfldzc2End column:"qtfldzc2End", sqlType:"VarChar(30)"
        zjgc2End column:"zjgc2End", sqlType:"VarChar(30)"
        wxzc2End column:"wxzc2End", sqlType:"VarChar(30)"
        ynndqdfldzc3End column:"ynndqdfldzc3End", sqlType:"VarChar(30)"
        wxzc1End column:"wxzc1End", sqlType:"VarChar(30)"
        gcwz3Begin column:"gcwz3Begin", sqlType:"VarChar(30)"
        qtfldzc3End column:"qtfldzc3End", sqlType:"VarChar(30)"
        cyzdqtz1End column:"cyzdqtz1End", sqlType:"VarChar(30)"
        scxswzc3Begin column:"scxswzc3Begin", sqlType:"VarChar(30)"
        dysdszc3End column:"dysdszc3End", sqlType:"VarChar(30)"
        ldzchj3End column:"ldzchj3End", sqlType:"VarChar(30)"
        yqzc3End column:"yqzc3End", sqlType:"VarChar(30)"
        tzxfc3End column:"tzxfc3End", sqlType:"VarChar(30)"
        ldzchj3Begin column:"ldzchj3Begin", sqlType:"VarChar(30)"
        zczj3End column:"zczj3End", sqlType:"VarChar(30)"
        sy3Begin column:"sy3Begin", sqlType:"VarChar(30)"
        gdzcjzzb1End column:"gdzcjzzb1End", sqlType:"VarChar(30)"
        zczj3Begin column:"zczj3Begin", sqlType:"VarChar(30)"
        hbzj3Begin column:"hbzj3Begin", sqlType:"VarChar(30)"
        cqysk1End column:"cqysk1End", sqlType:"VarChar(30)"
        gdzcjz3End column:"gdzcjz3End", sqlType:"VarChar(30)"
        ch1End column:"ch1End", sqlType:"VarChar(30)"
        tzxfc3Begin column:"tzxfc3Begin", sqlType:"VarChar(30)"
        ljzj2End column:"ljzj2End", sqlType:"VarChar(30)"
        cqdtfy1End column:"cqdtfy1End", sqlType:"VarChar(30)"
        yslx3End column:"yslx3End", sqlType:"VarChar(30)"
        qtldzc2End column:"qtldzc2End", sqlType:"VarChar(30)"
        ljzj3End column:"ljzj3End", sqlType:"VarChar(30)"
        fldzchj1End column:"fldzchj1End", sqlType:"VarChar(30)"
        ljzj3Begin column:"ljzj3Begin", sqlType:"VarChar(30)"
        qtldzc3Begin column:"qtldzc3Begin", sqlType:"VarChar(30)"
        gdzcje3Begin column:"gdzcje3Begin", sqlType:"VarChar(30)"
        ynndqdfldzc1End column:"ynndqdfldzc1End", sqlType:"VarChar(30)"
        tzxfc1End column:"tzxfc1End", sqlType:"VarChar(30)"
        cyzdqtz3Begin column:"cyzdqtz3Begin", sqlType:"VarChar(30)"
        gdzcjz3Begin column:"gdzcjz3Begin", sqlType:"VarChar(30)"
        gdzcjzzb3End column:"gdzcjzzb3End", sqlType:"VarChar(30)"
        gdzcyz3Begin column:"gdzcyz3Begin", sqlType:"VarChar(30)"
        sy1End column:"sy1End", sqlType:"VarChar(30)"
        cyzdqtz2End column:"cyzdqtz2End", sqlType:"VarChar(30)"
        yfkx3End column:"yfkx3End", sqlType:"VarChar(30)"
        yfkx3Begin column:"yfkx3Begin", sqlType:"VarChar(30)"
        ch3End column:"ch3End", sqlType:"VarChar(30)"
        ch3Begin column:"ch3Begin", sqlType:"VarChar(30)"
        scxswzc2End column:"scxswzc2End", sqlType:"VarChar(30)"
        yfkx1End column:"yfkx1End", sqlType:"VarChar(30)"
        wxzc3End column:"wxzc3End", sqlType:"VarChar(30)"
        gdzcje3End column:"gdzcje3End", sqlType:"VarChar(30)"
        zczj1End column:"zczj1End", sqlType:"VarChar(30)"
        kgcsjrzc3End column:"kgcsjrzc3End", sqlType:"VarChar(30)"
        yqzc2End column:"yqzc2End", sqlType:"VarChar(30)"
        sy3End column:"sy3End", sqlType:"VarChar(30)"
        gcwz1End column:"gcwz1End", sqlType:"VarChar(30)"
        yspj3End column:"yspj3End", sqlType:"VarChar(30)"
        yspj1End column:"yspj1End", sqlType:"VarChar(30)"
        jyxjrzc3Begin column:"jyxjrzc3Begin", sqlType:"VarChar(30)"
        zczj2End column:"zczj2End", sqlType:"VarChar(30)"
        qtysk2End column:"qtysk2End", sqlType:"VarChar(30)"
        ysgl2End column:"ysgl2End", sqlType:"VarChar(30)"
        yspj3Begin column:"yspj3Begin", sqlType:"VarChar(30)"
        gdzcje2End column:"gdzcje2End", sqlType:"VarChar(30)"
        kgcsjrzc3Begin column:"kgcsjrzc3Begin", sqlType:"VarChar(30)"
        sy2End column:"sy2End", sqlType:"VarChar(30)"
        gdzcql2End column:"gdzcql2End", sqlType:"VarChar(30)"
        gdzcjz1End column:"gdzcjz1End", sqlType:"VarChar(30)"
        yszk3End column:"yszk3End", sqlType:"VarChar(30)"
        qtfldzc3Begin column:"qtfldzc3Begin", sqlType:"VarChar(30)"
        kfzc3Begin column:"kfzc3Begin", sqlType:"VarChar(30)"
        wxzc3Begin column:"wxzc3Begin", sqlType:"VarChar(30)"
        gcwz2End column:"gcwz2End", sqlType:"VarChar(30)"
        zjgc3End column:"zjgc3End", sqlType:"VarChar(30)"
        ynndqdfldzc3Begin column:"ynndqdfldzc3Begin", sqlType:"VarChar(30)"
        yslx3Begin column:"yslx3Begin", sqlType:"VarChar(30)"
        cqysk3Begin column:"cqysk3Begin", sqlType:"VarChar(30)"
        gdzcje1End column:"gdzcje1End", sqlType:"VarChar(30)"
        gdzcql3End column:"gdzcql3End", sqlType:"VarChar(30)"
        kgcsjrzc2End column:"kgcsjrzc2End", sqlType:"VarChar(30)"
        scxswzc1End column:"scxswzc1End", sqlType:"VarChar(30)"
        zjgc1End column:"zjgc1End", sqlType:"VarChar(30)"
        ysgl1End column:"ysgl1End", sqlType:"VarChar(30)"
        jyxjrzc1End column:"jyxjrzc1End", sqlType:"VarChar(30)"
        gdzcyz1End column:"gdzcyz1End", sqlType:"VarChar(30)"
        yslx2End column:"yslx2End", sqlType:"VarChar(30)"
        yqzc1End column:"yqzc1End", sqlType:"VarChar(30)"
        cqgqtz3Begin column:"cqgqtz3Begin", sqlType:"VarChar(30)"
        qtysk1End column:"qtysk1End", sqlType:"VarChar(30)"
        jyxjrzc2End column:"jyxjrzc2End", sqlType:"VarChar(30)"
        gdzcjz2End column:"gdzcjz2End", sqlType:"VarChar(30)"
        gdzcjzzb3Begin column:"gdzcjzzb3Begin", sqlType:"VarChar(30)"
        qtldzc1End column:"qtldzc1End", sqlType:"VarChar(30)"
        gdzcyz2End column:"gdzcyz2End", sqlType:"VarChar(30)"
        dysdszc1End column:"dysdszc1End", sqlType:"VarChar(30)"
        ldzchj2End column:"ldzchj2End", sqlType:"VarChar(30)"
        qtysk3End column:"qtysk3End", sqlType:"VarChar(30)"
        fldzchj2End column:"fldzchj2End", sqlType:"VarChar(30)"
        gdzcql1End column:"gdzcql1End", sqlType:"VarChar(30)"
        zjgc3Begin column:"zjgc3Begin", sqlType:"VarChar(30)"
        tzxfc2End column:"tzxfc2End", sqlType:"VarChar(30)"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
