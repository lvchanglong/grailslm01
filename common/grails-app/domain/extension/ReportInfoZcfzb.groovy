package extension

/**
 * 信用报告-资产负债表
 */
class ReportInfoZcfzb {

    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    /**
     * 流动资产
     */
    String hbzj3Begin //货币资金-期初
    String hbzj3End //货币资金-期末
    String hbzj2End //货币资金-期末
    String hbzj1End //货币资金-期末

    String jyxjrzc3Begin //交易性金融资产-期初
    String jyxjrzc3End //交易性金融资产-期末
    String jyxjrzc2End //交易性金融资产-期末
    String jyxjrzc1End //交易性金融资产-期末

    String yspj3Begin //应收票据-期初
    String yspj3End //应收票据-期末
    String yspj2End //应收票据-期末
    String yspj1End //应收票据-期末

    String yszk3Begin //应收账款-期初
    String yszk3End //应收账款-期末
    String yszk2End //应收账款-期末
    String yszk1End //应收账款-期末

    String yfkx3Begin //预付款项-期初
    String yfkx3End //预付款项-期末
    String yfkx2End //预付款项-期末
    String yfkx1End //预付款项-期末

    String yslx3Begin //应收利息-期初
    String yslx3End //应收利息-期末
    String yslx2End //应收利息-期末
    String yslx1End //应收利息-期末

    String ysgl3Begin //应收股利-期初
    String ysgl3End //应收股利-期末
    String ysgl2End //应收股利-期末
    String ysgl1End //应收股利-期末

    String qtysk3Begin //其他应收款-期初
    String qtysk3End //其他应收款-期末
    String qtysk2End //其他应收款-期末
    String qtysk1End //其他应收款-期末

    String ch3Begin //存货-期初
    String ch3End //存货-期末
    String ch2End //存货-期末
    String ch1End //存货-期末

    String ynndqdfldzc3Begin // 一年内到期的非流动资产-期初
    String ynndqdfldzc3End // 一年内到期的非流动资产-期末
    String ynndqdfldzc2End // 一年内到期的非流动资产-期末
    String ynndqdfldzc1End // 一年内到期的非流动资产-期末

    String qtldzc3Begin //其他流动资产-期初
    String qtldzc3End //其他流动资产-期末
    String qtldzc2End //其他流动资产-期末
    String qtldzc1End //其他流动资产-期末

    String ldzchj3Begin //流动资产合计-期初
    String ldzchj3End //流动资产合计-期末
    String ldzchj2End //流动资产合计-期末
    String ldzchj1End //流动资产合计-期末

    /**
     * 非流动资产
     */
    String kgcsjrzc3Begin //可供出售金融资产-期初
    String kgcsjrzc3End //可供出售金融资产-期末
    String kgcsjrzc2End //可供出售金融资产-期末
    String kgcsjrzc1End //可供出售金融资产-期末

    String cyzdqtz3Begin //持有至到期投资-期初
    String cyzdqtz3End //持有至到期投资-期末
    String cyzdqtz2End //持有至到期投资-期末
    String cyzdqtz1End //持有至到期投资-期末

    String cqysk3Begin //长期应收款-期初
    String cqysk3End //长期应收款-期末
    String cqysk2End //长期应收款-期末
    String cqysk1End //长期应收款-期末

    String cqgqtz3Begin //长期股权投资-期初
    String cqgqtz3End //长期股权投资-期末
    String cqgqtz2End //长期股权投资-期末
    String cqgqtz1End //长期股权投资-期末

    String tzxfc3Begin //投资性房地产-期初
    String tzxfc3End //投资性房地产-期末
    String tzxfc2End //投资性房地产-期末
    String tzxfc1End //投资性房地产-期末

    String gdzcyz3Begin //固定资产原值-期初
    String gdzcyz3End //固定资产原值-期末
    String gdzcyz2End //固定资产原值-期末
    String gdzcyz1End //固定资产原值-期末

    String ljzj3Begin //减：累计折旧-期初
    String ljzj3End //减：累计折旧-期末
    String ljzj2End //减：累计折旧-期末
    String ljzj1End //减：累计折旧-期末

    String gdzcjz3Begin //固定资产净值-期初
    String gdzcjz3End //固定资产净值-期末
    String gdzcjz2End //固定资产净值-期末
    String gdzcjz1End //固定资产净值-期末

    String gdzcjzzb3Begin //减：固定资产减值准备-期初
    String gdzcjzzb3End //减：固定资产减值准备-期末
    String gdzcjzzb2End //减：固定资产减值准备-期末
    String gdzcjzzb1End //减：固定资产减值准备-期末

    String gdzcje3Begin //固定资产净额-期初
    String gdzcje3End //固定资产净额-期末
    String gdzcje2End //固定资产净额-期末
    String gdzcje1End //固定资产净额-期末

    String zjgc3Begin //在建工程-期初
    String zjgc3End //在建工程-期末
    String zjgc2End //在建工程-期末
    String zjgc1End //在建工程-期末

    String gcwz3Begin //工程物资-期初
    String gcwz3End //工程物资-期末
    String gcwz2End //工程物资-期末
    String gcwz1End //工程物资-期末

    String gdzcql3Begin //固定资产清理-期初
    String gdzcql3End //固定资产清理-期末
    String gdzcql2End //固定资产清理-期末
    String gdzcql1End //固定资产清理-期末

    String scxswzc3Begin //生产性生物资产-期初
    String scxswzc3End //生产性生物资产-期末
    String scxswzc2End //生产性生物资产-期末
    String scxswzc1End //生产性生物资产-期末

    String yqzc3Begin //油气资产-期初
    String yqzc3End //油气资产-期末
    String yqzc2End //油气资产-期末
    String yqzc1End //油气资产-期末

    String wxzc3Begin //无形资产-期初
    String wxzc3End //无形资产-期末
    String wxzc2End //无形资产-期末
    String wxzc1End //无形资产-期末

    String kfzc3Begin //开发支出-期初
    String kfzc3End //开发支出-期末
    String kfzc2End //开发支出-期末
    String kfzc1End //开发支出-期末

    String sy3Begin //商誉-期初
    String sy3End //商誉-期末
    String sy2End //商誉-期末
    String sy1End //商誉-期末

    String cqdtfy3Begin //长期待摊费用-期初
    String cqdtfy3End //长期待摊费用-期末
    String cqdtfy2End //长期待摊费用-期末
    String cqdtfy1End //长期待摊费用-期末

    String dysdszc3Begin //递延所得税资产-期初
    String dysdszc3End //递延所得税资产-期末
    String dysdszc2End //递延所得税资产-期末
    String dysdszc1End //递延所得税资产-期末

    String qtfldzc3Begin //其他非流动资产-期初
    String qtfldzc3End //其他非流动资产-期末
    String qtfldzc2End //其他非流动资产-期末
    String qtfldzc1End //其他非流动资产-期末

    String fldzchj3Begin //非流动资产合计-期初
    String fldzchj3End //非流动资产合计-期末
    String fldzchj2End //非流动资产合计-期末
    String fldzchj1End //非流动资产合计-期末

    String zczj3Begin //资产总计-期初
    String zczj3End //资产总计-期末
    String zczj2End //资产总计-期末
    String zczj1End //资产总计-期末

    /**
     * 流动负债
     */
    String dqjk3Begin //短期借款-期初
    String dqjk3End //短期借款-期末
    String dqjk2End //短期借款-期末
    String dqjk1End //短期借款-期末

    String jyxjrfz3Begin //交易性金融负债-期初
    String jyxjrfz3End //交易性金融负债-期末
    String jyxjrfz2End //交易性金融负债-期末
    String jyxjrfz1End //交易性金融负债-期末

    String yfpj3Begin //应付票据-期初
    String yfpj3End //应付票据-期末
    String yfpj2End //应付票据-期末
    String yfpj1End //应付票据-期末

    String yfzk3Begin //应付账款-期初
    String yfzk3End //应付账款-期末
    String yfzk2End //应付账款-期末
    String yfzk1End //应付账款-期末

    String yskx3Begin //预收款项-期初
    String yskx3End //预收款项-期末
    String yskx2End //预收款项-期末
    String yskx1End //预收款项-期末

    String yfzgxc3Begin //应付职工薪酬-期初
    String yfzgxc3End //应付职工薪酬-期末
    String yfzgxc2End //应付职工薪酬-期末
    String yfzgxc1End //应付职工薪酬-期末

    String yjsf3Begin //应交税费-期初
    String yjsf3End //应交税费-期末
    String yjsf2End //应交税费-期末
    String yjsf1End //应交税费-期末

    String yflx3Begin //应付利息-期初
    String yflx3End //应付利息-期末
    String yflx2End //应付利息-期末
    String yflx1End //应付利息-期末

    String yfgl3Begin //应付股利-期初
    String yfgl3End //应付股利-期末
    String yfgl2End //应付股利-期末
    String yfgl1End //应付股利-期末

    String qtyfk3Begin //其他应付款-期初
    String qtyfk3End //其他应付款-期末
    String qtyfk2End //其他应付款-期末
    String qtyfk1End //其他应付款-期末

    String ynndqdfldfz3Begin //一年内到期的非流动负债-期初
    String ynndqdfldfz3End //一年内到期的非流动负债-期末
    String ynndqdfldfz2End //一年内到期的非流动负债-期末
    String ynndqdfldfz1End //一年内到期的非流动负债-期末

    String qtldfz3Begin //其他流动负债-期初
    String qtldfz3End //其他流动负债-期末
    String qtldfz2End //其他流动负债-期末
    String qtldfz1End //其他流动负债-期末

    String ldfzhj3Begin //流动负债合计-期初
    String ldfzhj3End //流动负债合计-期末
    String ldfzhj2End //流动负债合计-期末
    String ldfzhj1End //流动负债合计-期末

    /**
     * 非流动负债
     */
    String cqjk3Begin //长期借款-期初
    String cqjk3End //长期借款-期末
    String cqjk2End //长期借款-期末
    String cqjk1End //长期借款-期末

    String yfzq3Begin //应付债劵-期初
    String yfzq3End //应付债劵-期末
    String yfzq2End //应付债劵-期末
    String yfzq1End //应付债劵-期末

    String cqjyfk3Begin //长期借应付款-期初
    String cqjyfk3End //长期借应付款-期末
    String cqjyfk2End //长期借应付款-期末
    String cqjyfk1End //长期借应付款-期末

    String zxyfk3Begin //专项应付款-期初
    String zxyfk3End //专项应付款-期末
    String zxyfk2End //专项应付款-期末
    String zxyfk1End //专项应付款-期末

    String yjfz3Begin //预计负债-期初
    String yjfz3End //预计负债-期末
    String yjfz2End //预计负债-期末
    String yjfz1End //预计负债-期末

    String dysdsfz3Begin //递延所得税负债-期初
    String dysdsfz3End //递延所得税负债-期末
    String dysdsfz2End //递延所得税负债-期末
    String dysdsfz1End //递延所得税负债-期末

    String qtfldfz3Begin //其他非流动负债-期初
    String qtfldfz3End //其他非流动负债-期末
    String qtfldfz2End //其他非流动负债-期末
    String qtfldfz1End //其他非流动负债-期末

    String fldfzhj3Begin //非流动负债合计-期初
    String fldfzhj3End //非流动负债合计-期末
    String fldfzhj2End //非流动负债合计-期末
    String fldfzhj1End //非流动负债合计-期末

    String fzhj3Begin //负债合计-期初
    String fzhj3End //负债合计-期末
    String fzhj2End //负债合计-期末
    String fzhj1End //负债合计-期末

    /**
     * 所有者权益（或股东权益）
     */
    String ssgdqy3Begin //少数股东权益-期初
    String ssgdqy3End //少数股东权益-期末
    String ssgdqy2End //少数股东权益-期末
    String ssgdqy1End //少数股东权益-期末

    String sszb3Begin //实收资本（或股本）-期初
    String sszb3End //实收资本（或股本）-期末
    String sszb2End //实收资本（或股本）-期末
    String sszb1End //实收资本（或股本）-期末

    String zbgj3Begin //资本公积-期初
    String zbgj3End //资本公积-期末
    String zbgj2End //资本公积-期末
    String zbgj1End //资本公积-期末

    String kcg3Begin //减：库存股-期初
    String kcg3End //减：库存股-期末
    String kcg2End //减：库存股-期末
    String kcg1End //减：库存股-期末

    String yygj3Begin //盈余公积-期初
    String yygj3End //盈余公积-期末
    String yygj2End //盈余公积-期末
    String yygj1End //盈余公积-期末

    String wfplr3Begin //未分配利润-期初
    String wfplr3End //未分配利润-期末
    String wfplr2End //未分配利润-期末
    String wfplr1End //未分配利润-期末

    String syzqyhj3Begin //所有者权益（或股东权益）合计  -期初
    String syzqyhj3End //所有者权益（或股东权益）合计  -期末
    String syzqyhj2End //所有者权益（或股东权益）合计  -期末
    String syzqyhj1End //所有者权益（或股东权益）合计  -期末

    String fzhsyzqyzj3Begin //负债和所有者权益（或股东权益）总计-期初
    String fzhsyzqyzj3End //负债和所有者权益（或股东权益）总计-期末
    String fzhsyzqyzj2End //负债和所有者权益（或股东权益）总计-期末
    String fzhsyzqyzj1End //负债和所有者权益（或股东权益）总计-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {

    }

    static mapping = {
        table "extension_reportinfo_zcfzb"
        id column: "id"
        version column: "version"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
