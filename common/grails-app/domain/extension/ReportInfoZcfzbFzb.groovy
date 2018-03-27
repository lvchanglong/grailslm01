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

    }

    static mapping = {
        table "extension_reportinfo_zcfzb_fzb"
        id column: "id"
        version column: "version"

        yskx3End column:"yskx3End", sqlType:"VarChar(30)"
        yfgl3End column:"yfgl3End", sqlType:"VarChar(30)"
        yfzgxc3Begin column:"yfzgxc3Begin", sqlType:"VarChar(30)"
        ssgdqy1End column:"ssgdqy1End", sqlType:"VarChar(30)"
        dysdsfz3End column:"dysdsfz3End", sqlType:"VarChar(30)"
        syzqyhj3Begin column:"syzqyhj3Begin", sqlType:"VarChar(30)"
        yfgl3Begin column:"yfgl3Begin", sqlType:"VarChar(30)"
        yjfz3Begin column:"yjfz3Begin", sqlType:"VarChar(30)"
        yjsf2End column:"yjsf2End", sqlType:"VarChar(30)"
        wfplr2End column:"wfplr2End", sqlType:"VarChar(30)"
        cqjk2End column:"cqjk2End", sqlType:"VarChar(30)"
        syzqyhj3End column:"syzqyhj3End", sqlType:"VarChar(30)"
        dysdsfz2End column:"dysdsfz2End", sqlType:"VarChar(30)"
        cqjyfk1End column:"cqjyfk1End", sqlType:"VarChar(30)"
        ynndqdfldfz2End column:"ynndqdfldfz2End", sqlType:"VarChar(30)"
        yjsf3End column:"yjsf3End", sqlType:"VarChar(30)"
        zbgj3End column:"zbgj3End", sqlType:"VarChar(30)"
        wfplr3Begin column:"wfplr3Begin", sqlType:"VarChar(30)"
        yjfz1End column:"yjfz1End", sqlType:"VarChar(30)"
        qtfldfz2End column:"qtfldfz2End", sqlType:"VarChar(30)"
        fzhsyzqyzj3End column:"fzhsyzqyzj3End", sqlType:"VarChar(30)"
        yjfz2End column:"yjfz2End", sqlType:"VarChar(30)"
        yygj3End column:"yygj3End", sqlType:"VarChar(30)"
        yflx3Begin column:"yflx3Begin", sqlType:"VarChar(30)"
        cqjk1End column:"cqjk1End", sqlType:"VarChar(30)"
        dqjk2End column:"dqjk2End", sqlType:"VarChar(30)"
        yygj1End column:"yygj1End", sqlType:"VarChar(30)"
        dysdsfz3Begin column:"dysdsfz3Begin", sqlType:"VarChar(30)"
        ssgdqy3End column:"ssgdqy3End", sqlType:"VarChar(30)"
        ldfzhj2End column:"ldfzhj2End", sqlType:"VarChar(30)"
        cqjyfk3Begin column:"cqjyfk3Begin", sqlType:"VarChar(30)"
        jyxjrfz1End column:"jyxjrfz1End", sqlType:"VarChar(30)"
        yfzq3Begin column:"yfzq3Begin", sqlType:"VarChar(30)"
        qtfldfz3Begin column:"qtfldfz3Begin", sqlType:"VarChar(30)"
        fzhsyzqyzj1End column:"fzhsyzqyzj1End", sqlType:"VarChar(30)"
        yygj2End column:"yygj2End", sqlType:"VarChar(30)"
        ssgdqy3Begin column:"ssgdqy3Begin", sqlType:"VarChar(30)"
        yfzk1End column:"yfzk1End", sqlType:"VarChar(30)"
        qtldfz1End column:"qtldfz1End", sqlType:"VarChar(30)"
        qtyfk1End column:"qtyfk1End", sqlType:"VarChar(30)"
        yfpj3Begin column:"yfpj3Begin", sqlType:"VarChar(30)"
        fzhj3End column:"fzhj3End", sqlType:"VarChar(30)"
        wfplr3End column:"wfplr3End", sqlType:"VarChar(30)"
        yfzgxc1End column:"yfzgxc1End", sqlType:"VarChar(30)"
        yflx3End column:"yflx3End", sqlType:"VarChar(30)"
        yfgl1End column:"yfgl1End", sqlType:"VarChar(30)"
        yflx1End column:"yflx1End", sqlType:"VarChar(30)"
        dqjk3End column:"dqjk3End", sqlType:"VarChar(30)"
        cqjk3Begin column:"cqjk3Begin", sqlType:"VarChar(30)"
        dqjk3Begin column:"dqjk3Begin", sqlType:"VarChar(30)"
        yfzq2End column:"yfzq2End", sqlType:"VarChar(30)"
        yfgl2End column:"yfgl2End", sqlType:"VarChar(30)"
        wfplr1End column:"wfplr1End", sqlType:"VarChar(30)"
        yjfz3End column:"yjfz3End", sqlType:"VarChar(30)"
        ssgdqy2End column:"ssgdqy2End", sqlType:"VarChar(30)"
        yygj3Begin column:"yygj3Begin", sqlType:"VarChar(30)"
        kcg3Begin column:"kcg3Begin", sqlType:"VarChar(30)"
        zxyfk3Begin column:"zxyfk3Begin", sqlType:"VarChar(30)"
        yfzq3End column:"yfzq3End", sqlType:"VarChar(30)"
        syzqyhj2End column:"syzqyhj2End", sqlType:"VarChar(30)"
        zbgj2End column:"zbgj2End", sqlType:"VarChar(30)"
        yfzk3Begin column:"yfzk3Begin", sqlType:"VarChar(30)"
        kcg1End column:"kcg1End", sqlType:"VarChar(30)"
        zbgj1End column:"zbgj1End", sqlType:"VarChar(30)"
        fzhj1End column:"fzhj1End", sqlType:"VarChar(30)"
        fzhsyzqyzj2End column:"fzhsyzqyzj2End", sqlType:"VarChar(30)"
        qtldfz2End column:"qtldfz2End", sqlType:"VarChar(30)"
        yjsf1End column:"yjsf1End", sqlType:"VarChar(30)"
        syzqyhj1End column:"syzqyhj1End", sqlType:"VarChar(30)"
        zxyfk2End column:"zxyfk2End", sqlType:"VarChar(30)"
        fldfzhj2End column:"fldfzhj2End", sqlType:"VarChar(30)"
        zxyfk1End column:"zxyfk1End", sqlType:"VarChar(30)"
        yfzgxc3End column:"yfzgxc3End", sqlType:"VarChar(30)"
        jyxjrfz3Begin column:"jyxjrfz3Begin", sqlType:"VarChar(30)"
        ynndqdfldfz3End column:"ynndqdfldfz3End", sqlType:"VarChar(30)"
        cqjk3End column:"cqjk3End", sqlType:"VarChar(30)"
        yfzgxc2End column:"yfzgxc2End", sqlType:"VarChar(30)"
        fldfzhj3End column:"fldfzhj3End", sqlType:"VarChar(30)"
        fzhj3Begin column:"fzhj3Begin", sqlType:"VarChar(30)"
        yfzk2End column:"yfzk2End", sqlType:"VarChar(30)"
        fldfzhj1End column:"fldfzhj1End", sqlType:"VarChar(30)"
        kcg2End column:"kcg2End", sqlType:"VarChar(30)"
        ynndqdfldfz3Begin column:"ynndqdfldfz3Begin", sqlType:"VarChar(30)"
        yfpj1End column:"yfpj1End", sqlType:"VarChar(30)"
        fldfzhj3Begin column:"fldfzhj3Begin", sqlType:"VarChar(30)"
        kcg3End column:"kcg3End", sqlType:"VarChar(30)"
        ldfzhj1End column:"ldfzhj1End", sqlType:"VarChar(30)"
        yfpj2End column:"yfpj2End", sqlType:"VarChar(30)"
        yskx1End column:"yskx1End", sqlType:"VarChar(30)"
        jyxjrfz3End column:"jyxjrfz3End", sqlType:"VarChar(30)"
        zxyfk3End column:"zxyfk3End", sqlType:"VarChar(30)"
        dysdsfz1End column:"dysdsfz1End", sqlType:"VarChar(30)"
        qtyfk2End column:"qtyfk2End", sqlType:"VarChar(30)"
        sszb1End column:"sszb1End", sqlType:"VarChar(30)"
        ldfzhj3Begin column:"ldfzhj3Begin", sqlType:"VarChar(30)"
        sszb3End column:"sszb3End", sqlType:"VarChar(30)"
        qtfldfz3End column:"qtfldfz3End", sqlType:"VarChar(30)"
        cqjyfk2End column:"cqjyfk2End", sqlType:"VarChar(30)"
        yfpj3End column:"yfpj3End", sqlType:"VarChar(30)"
        qtldfz3End column:"qtldfz3End", sqlType:"VarChar(30)"
        yskx2End column:"yskx2End", sqlType:"VarChar(30)"
        fzhj2End column:"fzhj2End", sqlType:"VarChar(30)"
        ldfzhj3End column:"ldfzhj3End", sqlType:"VarChar(30)"
        yfzk3End column:"yfzk3End", sqlType:"VarChar(30)"
        zbgj3Begin column:"zbgj3Begin", sqlType:"VarChar(30)"
        sszb3Begin column:"sszb3Begin", sqlType:"VarChar(30)"
        qtyfk3End column:"qtyfk3End", sqlType:"VarChar(30)"
        yskx3Begin column:"yskx3Begin", sqlType:"VarChar(30)"
        yflx2End column:"yflx2End", sqlType:"VarChar(30)"
        sszb2End column:"sszb2End", sqlType:"VarChar(30)"
        dqjk1End column:"dqjk1End", sqlType:"VarChar(30)"
        yjsf3Begin column:"yjsf3Begin", sqlType:"VarChar(30)"
        ynndqdfldfz1End column:"ynndqdfldfz1End", sqlType:"VarChar(30)"
        qtyfk3Begin column:"qtyfk3Begin", sqlType:"VarChar(30)"
        qtfldfz1End column:"qtfldfz1End", sqlType:"VarChar(30)"
        cqjyfk3End column:"cqjyfk3End", sqlType:"VarChar(30)"
        yfzq1End column:"yfzq1End", sqlType:"VarChar(30)"
        fzhsyzqyzj3Begin column:"fzhsyzqyzj3Begin", sqlType:"VarChar(30)"
        jyxjrfz2End column:"jyxjrfz2End", sqlType:"VarChar(30)"
        qtldfz3Begin column:"qtldfz3Begin", sqlType:"VarChar(30)"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

}
