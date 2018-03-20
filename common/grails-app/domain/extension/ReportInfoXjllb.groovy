package extension

/**
 * 信用报告-现金流量表
 */
class ReportInfoXjllb {
    static belongsTo = [parent: ReportInfo]

    String nf3 //年份（由远及近）
    String nf2 //年份（由远及近）
    String nf1 //年份（由远及近）

    /**
     * 经营活动产生的现金流量
     */
    String xssptglwsddxj3Begin //销售商品、提供劳务收到的现金-期初
    String xssptglwsddxj3End //销售商品、提供劳务收到的现金-期末
    String xssptglwsddxj2End //销售商品、提供劳务收到的现金-期末
    String xssptglwsddxj1End //销售商品、提供劳务收到的现金-期末

    String sddsffh3Begin //收到的税费返还-期初
    String sddsffh3End //收到的税费返还-期末
    String sddsffh2End //收到的税费返还-期末
    String sddsffh1End //收到的税费返还-期末

    String sdqtyjyhdygdxj3Begin //收到其他与经营活动有关的现金-期初
    String sdqtyjyhdygdxj3End //收到其他与经营活动有关的现金-期末
    String sdqtyjyhdygdxj2End //收到其他与经营活动有关的现金-期末
    String sdqtyjyhdygdxj1End //收到其他与经营活动有关的现金-期末

    String jyhdxjlrxj3Begin //经营活动现金流入小计-期初
    String jyhdxjlrxj3End //经营活动现金流入小计-期末
    String jyhdxjlrxj2End //经营活动现金流入小计-期末
    String jyhdxjlrxj1End //经营活动现金流入小计-期末

    String gmspjslwzfdxj3Begin //购买商品、接受劳务支付的现金-期初
    String gmspjslwzfdxj3End //购买商品、接受劳务支付的现金-期末
    String gmspjslwzfdxj2End //购买商品、接受劳务支付的现金-期末
    String gmspjslwzfdxj1End //购买商品、接受劳务支付的现金-期末

    String zfjzgyjwzgzfdxj3Begin //支付经职工以及为职工支付的现金-期初
    String zfjzgyjwzgzfdxj3End //支付经职工以及为职工支付的现金-期末
    String zfjzgyjwzgzfdxj2End //支付经职工以及为职工支付的现金-期末
    String zfjzgyjwzgzfdxj1End //支付经职工以及为职工支付的现金-期末

    String zfdgxsf3Begin //支付的各项税费-期初
    String zfdgxsf3End //支付的各项税费-期末
    String zfdgxsf2End //支付的各项税费-期末
    String zfdgxsf1End //支付的各项税费-期末

    String zfqtyjyhdygdxj3Begin //支付其他与经营活动有关的现金-期初
    String zfqtyjyhdygdxj3End //支付其他与经营活动有关的现金-期末
    String zfqtyjyhdygdxj2End //支付其他与经营活动有关的现金-期末
    String zfqtyjyhdygdxj1End //支付其他与经营活动有关的现金-期末

    String jyhdxjlcxj3Begin //经营活动现金流出小计-期初
    String jyhdxjlcxj3End //经营活动现金流出小计-期末
    String jyhdxjlcxj2End //经营活动现金流出小计-期末
    String jyhdxjlcxj1End //经营活动现金流出小计-期末

    String jyhdcsdxjllje3Begin // 经营活动产生的现金流量净额-期初
    String jyhdcsdxjllje3End // 经营活动产生的现金流量净额-期末
    String jyhdcsdxjllje2End // 经营活动产生的现金流量净额-期末
    String jyhdcsdxjllje1End // 经营活动产生的现金流量净额-期末

    /**
     * 投资活动产生的现金流量
     */
    String shtzsddxj3Begin //收回投资收到的现金-期初
    String shtzsddxj3End //收回投资收到的现金-期末
    String shtzsddxj2End //收回投资收到的现金-期末
    String shtzsddxj1End //收回投资收到的现金-期末

    String qdtzsysddxj3Begin //取得投资收益收到的现金-期初
    String qdtzsysddxj3End //取得投资收益收到的现金-期末
    String qdtzsysddxj2End //取得投资收益收到的现金-期末
    String qdtzsysddxj1End //取得投资收益收到的现金-期末

    String czgdzcwxzchqtcqzcshdxjje3Begin //处置固定资产、无形资产和其他长期资产收回的现金净额-期初
    String czgdzcwxzchqtcqzcshdxjje3End //处置固定资产、无形资产和其他长期资产收回的现金净额-期末
    String czgdzcwxzchqtcqzcshdxjje2End //处置固定资产、无形资产和其他长期资产收回的现金净额-期末
    String czgdzcwxzchqtcqzcshdxjje1End //处置固定资产、无形资产和其他长期资产收回的现金净额-期末

    String czzgsjqtyydwsddxjje3Begin //处置子公司及其他营业单位收到的现金净额-期初
    String czzgsjqtyydwsddxjje3End //处置子公司及其他营业单位收到的现金净额-期末
    String czzgsjqtyydwsddxjje2End //处置子公司及其他营业单位收到的现金净额-期末
    String czzgsjqtyydwsddxjje1End //处置子公司及其他营业单位收到的现金净额-期末

    String sdqtytzhdygdxj3Begin //收到其他与投资活动有关的现金-期初
    String sdqtytzhdygdxj3End //收到其他与投资活动有关的现金-期末
    String sdqtytzhdygdxj2End //收到其他与投资活动有关的现金-期末
    String sdqtytzhdygdxj1End //收到其他与投资活动有关的现金-期末

    String tzhdxjlrxj3Begin //投资活动现金流入小计-期初
    String tzhdxjlrxj3End //投资活动现金流入小计-期末
    String tzhdxjlrxj2End //投资活动现金流入小计-期末
    String tzhdxjlrxj1End //投资活动现金流入小计-期末

    String gjgdzcwxzchqtcqzczfdxj3Begin //购建固定资产、无形资产和其他长期资产支付的现金-期初
    String gjgdzcwxzchqtcqzczfdxj3End //购建固定资产、无形资产和其他长期资产支付的现金-期末
    String gjgdzcwxzchqtcqzczfdxj2End //购建固定资产、无形资产和其他长期资产支付的现金-期末
    String gjgdzcwxzchqtcqzczfdxj1End //购建固定资产、无形资产和其他长期资产支付的现金-期末

    String tzzfdxj3Begin //投资支付的现金-期初
    String tzzfdxj3End //投资支付的现金-期末
    String tzzfdxj2End //投资支付的现金-期末
    String tzzfdxj1End //投资支付的现金-期末

    String qdzgsjqtyydwzfdxjje3Begin //取得子公司及其他营业单位支付的现金净额-期初
    String qdzgsjqtyydwzfdxjje3End //取得子公司及其他营业单位支付的现金净额-期末
    String qdzgsjqtyydwzfdxjje2End //取得子公司及其他营业单位支付的现金净额-期末
    String qdzgsjqtyydwzfdxjje1End //取得子公司及其他营业单位支付的现金净额-期末

    String gdzcjz3Begin //支付其他与投资活动有关的现金-期初
    String gdzcjz3End //支付其他与投资活动有关的现金-期末
    String gdzcjz2End //支付其他与投资活动有关的现金-期末
    String gdzcjz1End //支付其他与投资活动有关的现金-期末

    String tzhdxjlcxj3Begin //投资活动现金流出小计-期初
    String tzhdxjlcxj3End //投资活动现金流出小计-期末
    String tzhdxjlcxj2End //投资活动现金流出小计-期末
    String tzhdxjlcxj1End //投资活动现金流出小计-期末

    String tzhdcsdxjllje3Begin //投资活动产生的现金流量净额-期初
    String tzhdcsdxjllje3End //投资活动产生的现金流量净额-期末
    String tzhdcsdxjllje2End //投资活动产生的现金流量净额-期末
    String tzhdcsdxjllje1End //投资活动产生的现金流量净额-期末

    /**
     * 筹资活动产生的现金流量
     */
    String xstzsddxj3Begin //吸收投资收到的现金-期初
    String xstzsddxj3End //吸收投资收到的现金-期末
    String xstzsddxj2End //吸收投资收到的现金-期末
    String xstzsddxj1End //吸收投资收到的现金-期末

    String qdjksddxj3Begin //取得借款收到的现金-期初
    String qdjksddxj3End //取得借款收到的现金-期末
    String qdjksddxj2End //取得借款收到的现金-期末
    String qdjksddxj1End //取得借款收到的现金-期末

    String sdqtyczhdygdxj3Begin //收到其他与筹资活动有关的现金-期初
    String sdqtyczhdygdxj3End //收到其他与筹资活动有关的现金-期末
    String sdqtyczhdygdxj2End //收到其他与筹资活动有关的现金-期末
    String sdqtyczhdygdxj1End //收到其他与筹资活动有关的现金-期末

    String czhdxjlrxj3Begin //筹资活动现金流入小计-期初
    String czhdxjlrxj3End //筹资活动现金流入小计-期末
    String czhdxjlrxj2End //筹资活动现金流入小计-期末
    String czhdxjlrxj1End //筹资活动现金流入小计-期末

    String chzwzfdxj3Begin //偿还债务支付的现金-期初
    String chzwzfdxj3End //偿还债务支付的现金-期末
    String chzwzfdxj2End //偿还债务支付的现金-期末
    String chzwzfdxj1End //偿还债务支付的现金-期末

    String fpgllrhcflxzfdxj3Begin //分配股利、利润或偿付利息支付的现金-期初
    String fpgllrhcflxzfdxj3End //分配股利、利润或偿付利息支付的现金-期末
    String fpgllrhcflxzfdxj2End //分配股利、利润或偿付利息支付的现金-期末
    String fpgllrhcflxzfdxj1End //分配股利、利润或偿付利息支付的现金-期末

    String zfqtyczhdygdxj3Begin //支付其他与筹资活动有关的现金-期初
    String zfqtyczhdygdxj3End //支付其他与筹资活动有关的现金-期末
    String zfqtyczhdygdxj2End //支付其他与筹资活动有关的现金-期末
    String zfqtyczhdygdxj1End //支付其他与筹资活动有关的现金-期末

    String czhdxjlcxj3Begin //筹资活动现金流出小计-期初
    String czhdxjlcxj3End //筹资活动现金流出小计-期末
    String czhdxjlcxj2End //筹资活动现金流出小计-期末
    String czhdxjlcxj1End //筹资活动现金流出小计-期末

    String czhdcsdxjllje3Begin //筹资活动产生的现金流量净额-期初
    String czhdcsdxjllje3End //筹资活动产生的现金流量净额-期末
    String czhdcsdxjllje2End //筹资活动产生的现金流量净额-期末
    String czhdcsdxjllje1End //筹资活动产生的现金流量净额-期末

    String hlbddxjjxjdjwdyx3Begin //汇率变动对现金及现金等价物的影响-期初
    String hlbddxjjxjdjwdyx3End //汇率变动对现金及现金等价物的影响-期末
    String hlbddxjjxjdjwdyx2End //汇率变动对现金及现金等价物的影响-期末
    String hlbddxjjxjdjwdyx1End //汇率变动对现金及现金等价物的影响-期末

    String xjjxjdjwjzje3Begin //现金及现金等价物净增加额-期初
    String xjjxjdjwjzje3End //现金及现金等价物净增加额-期末
    String xjjxjdjwjzje2End //现金及现金等价物净增加额-期末
    String xjjxjdjwjzje1End //现金及现金等价物净增加额-期末

    String qcxjjxjdjwye3Begin //加：期初现金及现金等价物余额-期初
    String qcxjjxjdjwye3End //加：期初现金及现金等价物余额-期末
    String qcxjjxjdjwye2End //加：期初现金及现金等价物余额-期末
    String qcxjjxjdjwye1End //加：期初现金及现金等价物余额-期末

    String qmxjjxjdjwye3Begin //期末现金及现金等价物余额-期初
    String qmxjjxjdjwye3End //期末现金及现金等价物余额-期末
    String qmxjjxjdjwye2End //期末现金及现金等价物余额-期末
    String qmxjjxjdjwye1End //期末现金及现金等价物余额-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {

    }

    static mapping = {
        table "extension_reportinfo_xjllb"
        id column: "id"
        version column: "version"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }
}
