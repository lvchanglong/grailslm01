package extension

/**
 * 信用报告-资产负债表-负债表
 */
class ReportInfoZcfzbFzb {

    static belongsTo = [parent: ReportInfoZcfzb]

    /**
     * 流动负债
     */
    String dqjk3Begin = "0.00"//短期借款-期初
    String dqjk3End = "0.00"//短期借款-期末
    String dqjk2End = "0.00"//短期借款-期末
    String dqjk1End = "0.00"//短期借款-期末

    String jyxjrfz3Begin = "0.00"//交易性金融负债-期初
    String jyxjrfz3End = "0.00"//交易性金融负债-期末
    String jyxjrfz2End = "0.00"//交易性金融负债-期末
    String jyxjrfz1End = "0.00"//交易性金融负债-期末

    String yfpj3Begin = "0.00"//应付票据-期初
    String yfpj3End = "0.00"//应付票据-期末
    String yfpj2End = "0.00"//应付票据-期末
    String yfpj1End = "0.00"//应付票据-期末

    String yfzk3Begin = "0.00"//应付账款-期初
    String yfzk3End = "0.00"//应付账款-期末
    String yfzk2End = "0.00"//应付账款-期末
    String yfzk1End = "0.00"//应付账款-期末

    String yskx3Begin = "0.00"//预收款项-期初
    String yskx3End = "0.00"//预收款项-期末
    String yskx2End = "0.00"//预收款项-期末
    String yskx1End = "0.00"//预收款项-期末

    String yfzgxc3Begin = "0.00"//应付职工薪酬-期初
    String yfzgxc3End = "0.00"//应付职工薪酬-期末
    String yfzgxc2End = "0.00"//应付职工薪酬-期末
    String yfzgxc1End = "0.00"//应付职工薪酬-期末

    String yjsf3Begin = "0.00"//应交税费-期初
    String yjsf3End = "0.00"//应交税费-期末
    String yjsf2End = "0.00"//应交税费-期末
    String yjsf1End = "0.00"//应交税费-期末

    String yflx3Begin = "0.00"//应付利息-期初
    String yflx3End = "0.00"//应付利息-期末
    String yflx2End = "0.00"//应付利息-期末
    String yflx1End = "0.00"//应付利息-期末

    String yfgl3Begin = "0.00"//应付股利-期初
    String yfgl3End = "0.00"//应付股利-期末
    String yfgl2End = "0.00"//应付股利-期末
    String yfgl1End = "0.00"//应付股利-期末

    String qtyfk3Begin = "0.00"//其他应付款-期初
    String qtyfk3End = "0.00"//其他应付款-期末
    String qtyfk2End = "0.00"//其他应付款-期末
    String qtyfk1End = "0.00"//其他应付款-期末

    String ynndqdfldfz3Begin = "0.00"//一年内到期的非流动负债-期初
    String ynndqdfldfz3End = "0.00"//一年内到期的非流动负债-期末
    String ynndqdfldfz2End = "0.00"//一年内到期的非流动负债-期末
    String ynndqdfldfz1End = "0.00"//一年内到期的非流动负债-期末

    String qtldfz3Begin = "0.00"//其他流动负债-期初
    String qtldfz3End = "0.00"//其他流动负债-期末
    String qtldfz2End = "0.00"//其他流动负债-期末
    String qtldfz1End = "0.00"//其他流动负债-期末

    String ldfzhj3Begin = "0.00"//流动负债合计-期初
    String ldfzhj3End = "0.00"//流动负债合计-期末
    String ldfzhj2End = "0.00"//流动负债合计-期末
    String ldfzhj1End = "0.00"//流动负债合计-期末

    /**
     * 非流动负债
     */
    String cqjk3Begin = "0.00"//长期借款-期初
    String cqjk3End = "0.00"//长期借款-期末
    String cqjk2End = "0.00"//长期借款-期末
    String cqjk1End = "0.00"//长期借款-期末

    String yfzq3Begin = "0.00"//应付债劵-期初
    String yfzq3End = "0.00"//应付债劵-期末
    String yfzq2End = "0.00"//应付债劵-期末
    String yfzq1End = "0.00"//应付债劵-期末

    String cqjyfk3Begin = "0.00"//长期借应付款-期初
    String cqjyfk3End = "0.00"//长期借应付款-期末
    String cqjyfk2End = "0.00"//长期借应付款-期末
    String cqjyfk1End = "0.00"//长期借应付款-期末

    String zxyfk3Begin = "0.00"//专项应付款-期初
    String zxyfk3End = "0.00"//专项应付款-期末
    String zxyfk2End = "0.00"//专项应付款-期末
    String zxyfk1End = "0.00"//专项应付款-期末

    String yjfz3Begin = "0.00"//预计负债-期初
    String yjfz3End = "0.00"//预计负债-期末
    String yjfz2End = "0.00"//预计负债-期末
    String yjfz1End = "0.00"//预计负债-期末

    String dysdsfz3Begin = "0.00"//递延所得税负债-期初
    String dysdsfz3End = "0.00"//递延所得税负债-期末
    String dysdsfz2End = "0.00"//递延所得税负债-期末
    String dysdsfz1End = "0.00"//递延所得税负债-期末

    String qtfldfz3Begin = "0.00"//其他非流动负债-期初
    String qtfldfz3End = "0.00"//其他非流动负债-期末
    String qtfldfz2End = "0.00"//其他非流动负债-期末
    String qtfldfz1End = "0.00"//其他非流动负债-期末

    String fldfzhj3Begin = "0.00"//非流动负债合计-期初
    String fldfzhj3End = "0.00"//非流动负债合计-期末
    String fldfzhj2End = "0.00"//非流动负债合计-期末
    String fldfzhj1End = "0.00"//非流动负债合计-期末

    String fzhj3Begin = "0.00"//负债合计-期初
    String fzhj3End = "0.00"//负债合计-期末
    String fzhj2End = "0.00"//负债合计-期末
    String fzhj1End = "0.00"//负债合计-期末

    /**
     * 所有者权益（或股东权益）
     */
    String ssgdqy3Begin = "0.00"//少数股东权益-期初
    String ssgdqy3End = "0.00"//少数股东权益-期末
    String ssgdqy2End = "0.00"//少数股东权益-期末
    String ssgdqy1End = "0.00"//少数股东权益-期末

    String sszb3Begin = "0.00"//实收资本（或股本）-期初
    String sszb3End = "0.00"//实收资本（或股本）-期末
    String sszb2End = "0.00"//实收资本（或股本）-期末
    String sszb1End = "0.00"//实收资本（或股本）-期末

    String zbgj3Begin = "0.00"//资本公积-期初
    String zbgj3End = "0.00"//资本公积-期末
    String zbgj2End = "0.00"//资本公积-期末
    String zbgj1End = "0.00"//资本公积-期末

    String kcg3Begin = "0.00"//减：库存股-期初
    String kcg3End = "0.00"//减：库存股-期末
    String kcg2End = "0.00"//减：库存股-期末
    String kcg1End = "0.00"//减：库存股-期末

    String yygj3Begin = "0.00"//盈余公积-期初
    String yygj3End = "0.00"//盈余公积-期末
    String yygj2End = "0.00"//盈余公积-期末
    String yygj1End = "0.00"//盈余公积-期末

    String wfplr3Begin = "0.00"//未分配利润-期初
    String wfplr3End = "0.00"//未分配利润-期末
    String wfplr2End = "0.00"//未分配利润-期末
    String wfplr1End = "0.00"//未分配利润-期末

    String syzqyhj3Begin = "0.00"//所有者权益（或股东权益）合计  -期初
    String syzqyhj3End = "0.00"//所有者权益（或股东权益）合计  -期末
    String syzqyhj2End = "0.00"//所有者权益（或股东权益）合计  -期末
    String syzqyhj1End = "0.00"//所有者权益（或股东权益）合计  -期末

    String fzhsyzqyzj3Begin = "0.00"//负债和所有者权益（或股东权益）总计-期初
    String fzhsyzqyzj3End = "0.00"//负债和所有者权益（或股东权益）总计-期末
    String fzhsyzqyzj2End = "0.00"//负债和所有者权益（或股东权益）总计-期末
    String fzhsyzqyzj1End = "0.00"//负债和所有者权益（或股东权益）总计-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        //'*'(size: 1..70)
    }

    static mapping = {
        table "extension_reportinfo_zcfzb_fzb"
        id column: "id"
        version column: "version"

        parent column: "parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
