package extension

/**
 * 信用报告-高管人员素质
 */
class ReportInfoGgrysz {

    static belongsTo = [parent: ReportInfo]

    String xm //姓名
    String zw //职务
    String nl //年龄
    String xljzc //学历及职称
    String cyzz //从业资质
    String hjqk //获奖情况

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        xm(blank:false, nullable:false)
        zw(blank:true, nullable:true)
        nl(blank:true, nullable:true)
        xljzc(blank:true, nullable:true)
        cyzz(blank:true, nullable:true)
        hjqk(blank:true, nullable:true)
    }

    static mapping = {
        table "extension_reportinfo_ggrysz"
        id column: "id"
        version column: "version"

        xm column:"xm"
        zw column:"zw"
        nl column:"nl"
        xljzc column:"xljzc"
        cyzz column:"cyzz", sqlType:"Text"
        hjqk column:"hjqk", sqlType:"Text"
        parent column:"parent_id"

        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    String toString() {
        return this.xm + "-" + this.zw
    }

}
