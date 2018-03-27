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
    String xssptglwsddxj3Begin = "0.00"//销售商品、提供劳务收到的现金-期初
    String xssptglwsddxj3End = "0.00"//销售商品、提供劳务收到的现金-期末
    String xssptglwsddxj2End = "0.00"//销售商品、提供劳务收到的现金-期末
    String xssptglwsddxj1End = "0.00"//销售商品、提供劳务收到的现金-期末

    String sddsffh3Begin = "0.00"//收到的税费返还-期初
    String sddsffh3End = "0.00"//收到的税费返还-期末
    String sddsffh2End = "0.00"//收到的税费返还-期末
    String sddsffh1End = "0.00"//收到的税费返还-期末

    String sdqtyjyhdygdxj3Begin = "0.00"//收到其他与经营活动有关的现金-期初
    String sdqtyjyhdygdxj3End = "0.00"//收到其他与经营活动有关的现金-期末
    String sdqtyjyhdygdxj2End = "0.00"//收到其他与经营活动有关的现金-期末
    String sdqtyjyhdygdxj1End = "0.00"//收到其他与经营活动有关的现金-期末

    String jyhdxjlrxj3Begin = "0.00"//经营活动现金流入小计-期初
    String jyhdxjlrxj3End = "0.00"//经营活动现金流入小计-期末
    String jyhdxjlrxj2End = "0.00"//经营活动现金流入小计-期末
    String jyhdxjlrxj1End = "0.00"//经营活动现金流入小计-期末

    String gmspjslwzfdxj3Begin = "0.00"//购买商品、接受劳务支付的现金-期初
    String gmspjslwzfdxj3End = "0.00"//购买商品、接受劳务支付的现金-期末
    String gmspjslwzfdxj2End = "0.00"//购买商品、接受劳务支付的现金-期末
    String gmspjslwzfdxj1End = "0.00"//购买商品、接受劳务支付的现金-期末

    String zfjzgyjwzgzfdxj3Begin = "0.00"//支付经职工以及为职工支付的现金-期初
    String zfjzgyjwzgzfdxj3End = "0.00"//支付经职工以及为职工支付的现金-期末
    String zfjzgyjwzgzfdxj2End = "0.00"//支付经职工以及为职工支付的现金-期末
    String zfjzgyjwzgzfdxj1End = "0.00"//支付经职工以及为职工支付的现金-期末

    String zfdgxsf3Begin = "0.00"//支付的各项税费-期初
    String zfdgxsf3End = "0.00"//支付的各项税费-期末
    String zfdgxsf2End = "0.00"//支付的各项税费-期末
    String zfdgxsf1End = "0.00"//支付的各项税费-期末

    String zfqtyjyhdygdxj3Begin = "0.00"//支付其他与经营活动有关的现金-期初
    String zfqtyjyhdygdxj3End = "0.00"//支付其他与经营活动有关的现金-期末
    String zfqtyjyhdygdxj2End = "0.00"//支付其他与经营活动有关的现金-期末
    String zfqtyjyhdygdxj1End = "0.00"//支付其他与经营活动有关的现金-期末

    String jyhdxjlcxj3Begin = "0.00"//经营活动现金流出小计-期初
    String jyhdxjlcxj3End = "0.00"//经营活动现金流出小计-期末
    String jyhdxjlcxj2End = "0.00"//经营活动现金流出小计-期末
    String jyhdxjlcxj1End = "0.00"//经营活动现金流出小计-期末

    String jyhdcsdxjllje3Begin = "0.00"// 经营活动产生的现金流量净额-期初
    String jyhdcsdxjllje3End = "0.00"// 经营活动产生的现金流量净额-期末
    String jyhdcsdxjllje2End = "0.00"// 经营活动产生的现金流量净额-期末
    String jyhdcsdxjllje1End = "0.00"// 经营活动产生的现金流量净额-期末

    /**
     * 投资活动产生的现金流量
     */
    String shtzsddxj3Begin = "0.00"//收回投资收到的现金-期初
    String shtzsddxj3End = "0.00"//收回投资收到的现金-期末
    String shtzsddxj2End = "0.00"//收回投资收到的现金-期末
    String shtzsddxj1End = "0.00"//收回投资收到的现金-期末

    String qdtzsysddxj3Begin = "0.00"//取得投资收益收到的现金-期初
    String qdtzsysddxj3End = "0.00"//取得投资收益收到的现金-期末
    String qdtzsysddxj2End = "0.00"//取得投资收益收到的现金-期末
    String qdtzsysddxj1End = "0.00"//取得投资收益收到的现金-期末

    String czgdzcwxzchqtcqzcshdxjje3Begin = "0.00"//处置固定资产、无形资产和其他长期资产收回的现金净额-期初
    String czgdzcwxzchqtcqzcshdxjje3End = "0.00"//处置固定资产、无形资产和其他长期资产收回的现金净额-期末
    String czgdzcwxzchqtcqzcshdxjje2End = "0.00"//处置固定资产、无形资产和其他长期资产收回的现金净额-期末
    String czgdzcwxzchqtcqzcshdxjje1End = "0.00"//处置固定资产、无形资产和其他长期资产收回的现金净额-期末

    String czzgsjqtyydwsddxjje3Begin = "0.00"//处置子公司及其他营业单位收到的现金净额-期初
    String czzgsjqtyydwsddxjje3End = "0.00"//处置子公司及其他营业单位收到的现金净额-期末
    String czzgsjqtyydwsddxjje2End = "0.00"//处置子公司及其他营业单位收到的现金净额-期末
    String czzgsjqtyydwsddxjje1End = "0.00"//处置子公司及其他营业单位收到的现金净额-期末

    String sdqtytzhdygdxj3Begin = "0.00"//收到其他与投资活动有关的现金-期初
    String sdqtytzhdygdxj3End = "0.00"//收到其他与投资活动有关的现金-期末
    String sdqtytzhdygdxj2End = "0.00"//收到其他与投资活动有关的现金-期末
    String sdqtytzhdygdxj1End = "0.00"//收到其他与投资活动有关的现金-期末

    String tzhdxjlrxj3Begin = "0.00"//投资活动现金流入小计-期初
    String tzhdxjlrxj3End = "0.00"//投资活动现金流入小计-期末
    String tzhdxjlrxj2End = "0.00"//投资活动现金流入小计-期末
    String tzhdxjlrxj1End = "0.00"//投资活动现金流入小计-期末

    String gjgdzcwxzchqtcqzczfdxj3Begin = "0.00"//购建固定资产、无形资产和其他长期资产支付的现金-期初
    String gjgdzcwxzchqtcqzczfdxj3End = "0.00"//购建固定资产、无形资产和其他长期资产支付的现金-期末
    String gjgdzcwxzchqtcqzczfdxj2End = "0.00"//购建固定资产、无形资产和其他长期资产支付的现金-期末
    String gjgdzcwxzchqtcqzczfdxj1End = "0.00"//购建固定资产、无形资产和其他长期资产支付的现金-期末

    String tzzfdxj3Begin = "0.00"//投资支付的现金-期初
    String tzzfdxj3End = "0.00"//投资支付的现金-期末
    String tzzfdxj2End = "0.00"//投资支付的现金-期末
    String tzzfdxj1End = "0.00"//投资支付的现金-期末

    String qdzgsjqtyydwzfdxjje3Begin = "0.00"//取得子公司及其他营业单位支付的现金净额-期初
    String qdzgsjqtyydwzfdxjje3End = "0.00"//取得子公司及其他营业单位支付的现金净额-期末
    String qdzgsjqtyydwzfdxjje2End = "0.00"//取得子公司及其他营业单位支付的现金净额-期末
    String qdzgsjqtyydwzfdxjje1End = "0.00"//取得子公司及其他营业单位支付的现金净额-期末

    String gdzcjz3Begin = "0.00"//支付其他与投资活动有关的现金-期初
    String gdzcjz3End = "0.00"//支付其他与投资活动有关的现金-期末
    String gdzcjz2End = "0.00"//支付其他与投资活动有关的现金-期末
    String gdzcjz1End = "0.00"//支付其他与投资活动有关的现金-期末

    String tzhdxjlcxj3Begin = "0.00"//投资活动现金流出小计-期初
    String tzhdxjlcxj3End = "0.00"//投资活动现金流出小计-期末
    String tzhdxjlcxj2End = "0.00"//投资活动现金流出小计-期末
    String tzhdxjlcxj1End = "0.00"//投资活动现金流出小计-期末

    String tzhdcsdxjllje3Begin = "0.00"//投资活动产生的现金流量净额-期初
    String tzhdcsdxjllje3End = "0.00"//投资活动产生的现金流量净额-期末
    String tzhdcsdxjllje2End = "0.00"//投资活动产生的现金流量净额-期末
    String tzhdcsdxjllje1End = "0.00"//投资活动产生的现金流量净额-期末

    /**
     * 筹资活动产生的现金流量
     */
    String xstzsddxj3Begin = "0.00"//吸收投资收到的现金-期初
    String xstzsddxj3End = "0.00"//吸收投资收到的现金-期末
    String xstzsddxj2End = "0.00"//吸收投资收到的现金-期末
    String xstzsddxj1End = "0.00"//吸收投资收到的现金-期末

    String qdjksddxj3Begin = "0.00"//取得借款收到的现金-期初
    String qdjksddxj3End = "0.00"//取得借款收到的现金-期末
    String qdjksddxj2End = "0.00"//取得借款收到的现金-期末
    String qdjksddxj1End = "0.00"//取得借款收到的现金-期末

    String sdqtyczhdygdxj3Begin = "0.00"//收到其他与筹资活动有关的现金-期初
    String sdqtyczhdygdxj3End = "0.00"//收到其他与筹资活动有关的现金-期末
    String sdqtyczhdygdxj2End = "0.00"//收到其他与筹资活动有关的现金-期末
    String sdqtyczhdygdxj1End = "0.00"//收到其他与筹资活动有关的现金-期末

    String czhdxjlrxj3Begin = "0.00"//筹资活动现金流入小计-期初
    String czhdxjlrxj3End = "0.00"//筹资活动现金流入小计-期末
    String czhdxjlrxj2End = "0.00"//筹资活动现金流入小计-期末
    String czhdxjlrxj1End = "0.00"//筹资活动现金流入小计-期末

    String chzwzfdxj3Begin = "0.00"//偿还债务支付的现金-期初
    String chzwzfdxj3End = "0.00"//偿还债务支付的现金-期末
    String chzwzfdxj2End = "0.00"//偿还债务支付的现金-期末
    String chzwzfdxj1End = "0.00"//偿还债务支付的现金-期末

    String fpgllrhcflxzfdxj3Begin = "0.00"//分配股利、利润或偿付利息支付的现金-期初
    String fpgllrhcflxzfdxj3End = "0.00"//分配股利、利润或偿付利息支付的现金-期末
    String fpgllrhcflxzfdxj2End = "0.00"//分配股利、利润或偿付利息支付的现金-期末
    String fpgllrhcflxzfdxj1End = "0.00"//分配股利、利润或偿付利息支付的现金-期末

    String zfqtyczhdygdxj3Begin = "0.00"//支付其他与筹资活动有关的现金-期初
    String zfqtyczhdygdxj3End = "0.00"//支付其他与筹资活动有关的现金-期末
    String zfqtyczhdygdxj2End = "0.00"//支付其他与筹资活动有关的现金-期末
    String zfqtyczhdygdxj1End = "0.00"//支付其他与筹资活动有关的现金-期末

    String czhdxjlcxj3Begin = "0.00"//筹资活动现金流出小计-期初
    String czhdxjlcxj3End = "0.00"//筹资活动现金流出小计-期末
    String czhdxjlcxj2End = "0.00"//筹资活动现金流出小计-期末
    String czhdxjlcxj1End = "0.00"//筹资活动现金流出小计-期末

    String czhdcsdxjllje3Begin = "0.00"//筹资活动产生的现金流量净额-期初
    String czhdcsdxjllje3End = "0.00"//筹资活动产生的现金流量净额-期末
    String czhdcsdxjllje2End = "0.00"//筹资活动产生的现金流量净额-期末
    String czhdcsdxjllje1End = "0.00"//筹资活动产生的现金流量净额-期末

    String hlbddxjjxjdjwdyx3Begin = "0.00"//汇率变动对现金及现金等价物的影响-期初
    String hlbddxjjxjdjwdyx3End = "0.00"//汇率变动对现金及现金等价物的影响-期末
    String hlbddxjjxjdjwdyx2End = "0.00"//汇率变动对现金及现金等价物的影响-期末
    String hlbddxjjxjdjwdyx1End = "0.00"//汇率变动对现金及现金等价物的影响-期末

    String xjjxjdjwjzje3Begin = "0.00"//现金及现金等价物净增加额-期初
    String xjjxjdjwjzje3End = "0.00"//现金及现金等价物净增加额-期末
    String xjjxjdjwjzje2End = "0.00"//现金及现金等价物净增加额-期末
    String xjjxjdjwjzje1End = "0.00"//现金及现金等价物净增加额-期末

    String qcxjjxjdjwye3Begin = "0.00"//加：期初现金及现金等价物余额-期初
    String qcxjjxjdjwye3End = "0.00"//加：期初现金及现金等价物余额-期末
    String qcxjjxjdjwye2End = "0.00"//加：期初现金及现金等价物余额-期末
    String qcxjjxjdjwye1End = "0.00"//加：期初现金及现金等价物余额-期末

    String qmxjjxjdjwye3Begin = "0.00"//期末现金及现金等价物余额-期初
    String qmxjjxjdjwye3End = "0.00"//期末现金及现金等价物余额-期末
    String qmxjjxjdjwye2End = "0.00"//期末现金及现金等价物余额-期末
    String qmxjjxjdjwye1End = "0.00"//期末现金及现金等价物余额-期末

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        nf3(blank:false, nullable:false)
        nf2(blank:false, nullable:false)
        nf1(blank:false, nullable:false)
    }

    static mapping = {
        table "extension_reportinfo_xjllb"
        id column: "id"
        version column: "version"

        nf3 column:"nf3", sqlType:"VarChar(30)"
        nf2 column:"nf2", sqlType:"VarChar(30)"
        nf1 column:"nf1", sqlType:"VarChar(30)"

        sdqtyczhdygdxj3Begin column:"sdqtyczhdygdxj3Begin", sqlType:"VarChar(30)"
        tzzfdxj3Begin column:"tzzfdxj3Begin", sqlType:"VarChar(30)"
        sddsffh1End column:"sddsffh1End", sqlType:"VarChar(30)"
        sdqtyjyhdygdxj2End column:"sdqtyjyhdygdxj2End", sqlType:"VarChar(30)"
        xstzsddxj2End column:"xstzsddxj2End", sqlType:"VarChar(30)"
        zfqtyjyhdygdxj3Begin column:"zfqtyjyhdygdxj3Begin", sqlType:"VarChar(30)"
        zfdgxsf2End column:"zfdgxsf2End", sqlType:"VarChar(30)"
        zfdgxsf3End column:"zfdgxsf3End", sqlType:"VarChar(30)"
        tzhdxjlrxj1End column:"tzhdxjlrxj1End", sqlType:"VarChar(30)"
        qmxjjxjdjwye3Begin column:"qmxjjxjdjwye3Begin", sqlType:"VarChar(30)"
        tzzfdxj3End column:"tzzfdxj3End", sqlType:"VarChar(30)"
        czhdxjlrxj3End column:"czhdxjlrxj3End", sqlType:"VarChar(30)"
        tzhdxjlcxj2End column:"tzhdxjlcxj2End", sqlType:"VarChar(30)"
        sdqtytzhdygdxj1End column:"sdqtytzhdygdxj1End", sqlType:"VarChar(30)"
        zfqtyczhdygdxj3End column:"zfqtyczhdygdxj3End", sqlType:"VarChar(30)"
        czhdxjlrxj2End column:"czhdxjlrxj2End", sqlType:"VarChar(30)"
        zfjzgyjwzgzfdxj3End column:"zfjzgyjwzgzfdxj3End", sqlType:"VarChar(30)"
        qdzgsjqtyydwzfdxjje1End column:"qdzgsjqtyydwzfdxjje1End", sqlType:"VarChar(30)"
        jyhdcsdxjllje3End column:"jyhdcsdxjllje3End", sqlType:"VarChar(30)"
        czzgsjqtyydwsddxjje1End column:"czzgsjqtyydwsddxjje1End", sqlType:"VarChar(30)"
        xjjxjdjwjzje3Begin column:"xjjxjdjwjzje3Begin", sqlType:"VarChar(30)"
        zfqtyjyhdygdxj1End column:"zfqtyjyhdygdxj1End", sqlType:"VarChar(30)"
        jyhdxjlrxj3Begin column:"jyhdxjlrxj3Begin", sqlType:"VarChar(30)"
        qdzgsjqtyydwzfdxjje2End column:"qdzgsjqtyydwzfdxjje2End", sqlType:"VarChar(30)"
        qdjksddxj3End column:"qdjksddxj3End", sqlType:"VarChar(30)"
        zfqtyczhdygdxj3Begin column:"zfqtyczhdygdxj3Begin", sqlType:"VarChar(30)"
        zfqtyczhdygdxj1End column:"zfqtyczhdygdxj1End", sqlType:"VarChar(30)"
        gmspjslwzfdxj2End column:"gmspjslwzfdxj2End", sqlType:"VarChar(30)"
        sdqtyjyhdygdxj3Begin column:"sdqtyjyhdygdxj3Begin", sqlType:"VarChar(30)"
        xssptglwsddxj1End column:"xssptglwsddxj1End", sqlType:"VarChar(30)"
        xstzsddxj3Begin column:"xstzsddxj3Begin", sqlType:"VarChar(30)"
        zfqtyczhdygdxj2End column:"zfqtyczhdygdxj2End", sqlType:"VarChar(30)"
        qmxjjxjdjwye1End column:"qmxjjxjdjwye1End", sqlType:"VarChar(30)"
        tzhdxjlrxj3End column:"tzhdxjlrxj3End", sqlType:"VarChar(30)"
        tzhdcsdxjllje3End column:"tzhdcsdxjllje3End", sqlType:"VarChar(30)"
        qdtzsysddxj3End column:"qdtzsysddxj3End", sqlType:"VarChar(30)"
        zfqtyjyhdygdxj3End column:"zfqtyjyhdygdxj3End", sqlType:"VarChar(30)"
        gjgdzcwxzchqtcqzczfdxj1End column:"gjgdzcwxzchqtcqzczfdxj1End", sqlType:"VarChar(30)"
        jyhdcsdxjllje1End column:"jyhdcsdxjllje1End", sqlType:"VarChar(30)"
        czgdzcwxzchqtcqzcshdxjje3Begin column:"czgdzcwxzchqtcqzcshdxjje3Begin", sqlType:"VarChar(30)"
        qdjksddxj3Begin column:"qdjksddxj3Begin", sqlType:"VarChar(30)"
        czhdxjlcxj2End column:"czhdxjlcxj2End", sqlType:"VarChar(30)"
        chzwzfdxj1End column:"chzwzfdxj1End", sqlType:"VarChar(30)"
        qdzgsjqtyydwzfdxjje3Begin column:"qdzgsjqtyydwzfdxjje3Begin", sqlType:"VarChar(30)"
        sddsffh3Begin column:"sddsffh3Begin", sqlType:"VarChar(30)"
        sdqtyczhdygdxj1End column:"sdqtyczhdygdxj1End", sqlType:"VarChar(30)"
        sdqtytzhdygdxj2End column:"sdqtytzhdygdxj2End", sqlType:"VarChar(30)"
        gjgdzcwxzchqtcqzczfdxj2End column:"gjgdzcwxzchqtcqzczfdxj2End", sqlType:"VarChar(30)"
        czhdxjlrxj3Begin column:"czhdxjlrxj3Begin", sqlType:"VarChar(30)"
        gmspjslwzfdxj3Begin column:"gmspjslwzfdxj3Begin", sqlType:"VarChar(30)"
        qdtzsysddxj1End column:"qdtzsysddxj1End", sqlType:"VarChar(30)"
        czzgsjqtyydwsddxjje3End column:"czzgsjqtyydwsddxjje3End", sqlType:"VarChar(30)"
        hlbddxjjxjdjwdyx3End column:"hlbddxjjxjdjwdyx3End", sqlType:"VarChar(30)"
        czgdzcwxzchqtcqzcshdxjje3End column:"czgdzcwxzchqtcqzcshdxjje3End", sqlType:"VarChar(30)"
        tzhdxjlrxj3Begin column:"tzhdxjlrxj3Begin", sqlType:"VarChar(30)"
        czhdxjlrxj1End column:"czhdxjlrxj1End", sqlType:"VarChar(30)"
        tzhdxjlcxj1End column:"tzhdxjlcxj1End", sqlType:"VarChar(30)"
        jyhdxjlcxj3Begin column:"jyhdxjlcxj3Begin", sqlType:"VarChar(30)"
        sddsffh2End column:"sddsffh2End", sqlType:"VarChar(30)"
        czhdxjlcxj3Begin column:"czhdxjlcxj3Begin", sqlType:"VarChar(30)"
        zfjzgyjwzgzfdxj1End column:"zfjzgyjwzgzfdxj1End", sqlType:"VarChar(30)"
        fpgllrhcflxzfdxj2End column:"fpgllrhcflxzfdxj2End", sqlType:"VarChar(30)"
        zfdgxsf3Begin column:"zfdgxsf3Begin", sqlType:"VarChar(30)"
        sdqtytzhdygdxj3End column:"sdqtytzhdygdxj3End", sqlType:"VarChar(30)"
        gdzcjz3End column:"gdzcjz3End", sqlType:"VarChar(30)"
        xssptglwsddxj2End column:"xssptglwsddxj2End", sqlType:"VarChar(30)"
        hlbddxjjxjdjwdyx3Begin column:"hlbddxjjxjdjwdyx3Begin", sqlType:"VarChar(30)"
        xstzsddxj3End column:"xstzsddxj3End", sqlType:"VarChar(30)"
        xjjxjdjwjzje2End column:"xjjxjdjwjzje2End", sqlType:"VarChar(30)"
        zfqtyjyhdygdxj2End column:"zfqtyjyhdygdxj2End", sqlType:"VarChar(30)"
        zfjzgyjwzgzfdxj2End column:"zfjzgyjwzgzfdxj2End", sqlType:"VarChar(30)"
        sdqtyczhdygdxj3End column:"sdqtyczhdygdxj3End", sqlType:"VarChar(30)"
        czgdzcwxzchqtcqzcshdxjje1End column:"czgdzcwxzchqtcqzcshdxjje1End", sqlType:"VarChar(30)"
        tzhdxjlcxj3End column:"tzhdxjlcxj3End", sqlType:"VarChar(30)"
        czzgsjqtyydwsddxjje2End column:"czzgsjqtyydwsddxjje2End", sqlType:"VarChar(30)"
        qdjksddxj1End column:"qdjksddxj1End", sqlType:"VarChar(30)"
        qdzgsjqtyydwzfdxjje3End column:"qdzgsjqtyydwzfdxjje3End", sqlType:"VarChar(30)"
        sdqtyczhdygdxj2End column:"sdqtyczhdygdxj2End", sqlType:"VarChar(30)"
        chzwzfdxj3Begin column:"chzwzfdxj3Begin", sqlType:"VarChar(30)"
        sddsffh3End column:"sddsffh3End", sqlType:"VarChar(30)"
        jyhdxjlrxj3End column:"jyhdxjlrxj3End", sqlType:"VarChar(30)"
        sdqtytzhdygdxj3Begin column:"sdqtytzhdygdxj3Begin", sqlType:"VarChar(30)"
        qcxjjxjdjwye1End column:"qcxjjxjdjwye1End", sqlType:"VarChar(30)"
        zfdgxsf1End column:"zfdgxsf1End", sqlType:"VarChar(30)"
        zfjzgyjwzgzfdxj3Begin column:"zfjzgyjwzgzfdxj3Begin", sqlType:"VarChar(30)"
        shtzsddxj2End column:"shtzsddxj2End", sqlType:"VarChar(30)"
        tzhdxjlrxj2End column:"tzhdxjlrxj2End", sqlType:"VarChar(30)"
        sdqtyjyhdygdxj3End column:"sdqtyjyhdygdxj3End", sqlType:"VarChar(30)"
        gdzcjz3Begin column:"gdzcjz3Begin", sqlType:"VarChar(30)"
        hlbddxjjxjdjwdyx1End column:"hlbddxjjxjdjwdyx1End", sqlType:"VarChar(30)"
        czhdxjlcxj1End column:"czhdxjlcxj1End", sqlType:"VarChar(30)"
        czgdzcwxzchqtcqzcshdxjje2End column:"czgdzcwxzchqtcqzcshdxjje2End", sqlType:"VarChar(30)"
        gmspjslwzfdxj3End column:"gmspjslwzfdxj3End", sqlType:"VarChar(30)"
        chzwzfdxj3End column:"chzwzfdxj3End", sqlType:"VarChar(30)"
        czzgsjqtyydwsddxjje3Begin column:"czzgsjqtyydwsddxjje3Begin", sqlType:"VarChar(30)"
        qcxjjxjdjwye3End column:"qcxjjxjdjwye3End", sqlType:"VarChar(30)"
        czhdcsdxjllje2End column:"czhdcsdxjllje2End", sqlType:"VarChar(30)"
        xssptglwsddxj3Begin column:"xssptglwsddxj3Begin", sqlType:"VarChar(30)"
        xjjxjdjwjzje1End column:"xjjxjdjwjzje1End", sqlType:"VarChar(30)"
        tzzfdxj1End column:"tzzfdxj1End", sqlType:"VarChar(30)"
        tzzfdxj2End column:"tzzfdxj2End", sqlType:"VarChar(30)"
        fpgllrhcflxzfdxj3End column:"fpgllrhcflxzfdxj3End", sqlType:"VarChar(30)"
        jyhdxjlcxj2End column:"jyhdxjlcxj2End", sqlType:"VarChar(30)"
        chzwzfdxj2End column:"chzwzfdxj2End", sqlType:"VarChar(30)"
        hlbddxjjxjdjwdyx2End column:"hlbddxjjxjdjwdyx2End", sqlType:"VarChar(30)"
        qcxjjxjdjwye2End column:"qcxjjxjdjwye2End", sqlType:"VarChar(30)"
        xjjxjdjwjzje3End column:"xjjxjdjwjzje3End", sqlType:"VarChar(30)"
        qdtzsysddxj3Begin column:"qdtzsysddxj3Begin", sqlType:"VarChar(30)"
        qdtzsysddxj2End column:"qdtzsysddxj2End", sqlType:"VarChar(30)"
        gdzcjz1End column:"gdzcjz1End", sqlType:"VarChar(30)"
        jyhdxjlrxj1End column:"jyhdxjlrxj1End", sqlType:"VarChar(30)"
        fpgllrhcflxzfdxj1End column:"fpgllrhcflxzfdxj1End", sqlType:"VarChar(30)"
        tzhdcsdxjllje2End column:"tzhdcsdxjllje2End", sqlType:"VarChar(30)"
        jyhdcsdxjllje3Begin column:"jyhdcsdxjllje3Begin", sqlType:"VarChar(30)"
        gmspjslwzfdxj1End column:"gmspjslwzfdxj1End", sqlType:"VarChar(30)"
        shtzsddxj3Begin column:"shtzsddxj3Begin", sqlType:"VarChar(30)"
        xssptglwsddxj3End column:"xssptglwsddxj3End", sqlType:"VarChar(30)"
        jyhdxjlrxj2End column:"jyhdxjlrxj2End", sqlType:"VarChar(30)"
        czhdcsdxjllje3Begin column:"czhdcsdxjllje3Begin", sqlType:"VarChar(30)"
        fpgllrhcflxzfdxj3Begin column:"fpgllrhcflxzfdxj3Begin", sqlType:"VarChar(30)"
        qmxjjxjdjwye2End column:"qmxjjxjdjwye2End", sqlType:"VarChar(30)"
        tzhdxjlcxj3Begin column:"tzhdxjlcxj3Begin", sqlType:"VarChar(30)"
        tzhdcsdxjllje3Begin column:"tzhdcsdxjllje3Begin", sqlType:"VarChar(30)"
        qdjksddxj2End column:"qdjksddxj2End", sqlType:"VarChar(30)"
        gdzcjz2End column:"gdzcjz2End", sqlType:"VarChar(30)"
        shtzsddxj3End column:"shtzsddxj3End", sqlType:"VarChar(30)"
        qmxjjxjdjwye3End column:"qmxjjxjdjwye3End", sqlType:"VarChar(30)"
        czhdcsdxjllje3End column:"czhdcsdxjllje3End", sqlType:"VarChar(30)"
        sdqtyjyhdygdxj1End column:"sdqtyjyhdygdxj1End", sqlType:"VarChar(30)"
        jyhdxjlcxj1End column:"jyhdxjlcxj1End", sqlType:"VarChar(30)"
        shtzsddxj1End column:"shtzsddxj1End", sqlType:"VarChar(30)"
        tzhdcsdxjllje1End column:"tzhdcsdxjllje1End", sqlType:"VarChar(30)"
        xstzsddxj1End column:"xstzsddxj1End", sqlType:"VarChar(30)"
        gjgdzcwxzchqtcqzczfdxj3Begin column:"gjgdzcwxzchqtcqzczfdxj3Begin", sqlType:"VarChar(30)"
        gjgdzcwxzchqtcqzczfdxj3End column:"gjgdzcwxzchqtcqzczfdxj3End", sqlType:"VarChar(30)"
        jyhdxjlcxj3End column:"jyhdxjlcxj3End", sqlType:"VarChar(30)"
        czhdxjlcxj3End column:"czhdxjlcxj3End", sqlType:"VarChar(30)"
        jyhdcsdxjllje2End column:"jyhdcsdxjllje2End", sqlType:"VarChar(30)"
        qcxjjxjdjwye3Begin column:"qcxjjxjdjwye3Begin", sqlType:"VarChar(30)"
        czhdcsdxjllje1End column:"czhdcsdxjllje1End", sqlType:"VarChar(30)"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }
}
