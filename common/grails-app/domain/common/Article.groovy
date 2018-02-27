package common

/**
 * 文章管理
 */
class Article {
    String title //标题
    String content //内容
    String type = "关于我们"//类型

    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static mapping = {
        table "base_article"
        id column: "id"
        version column: "version"

        title column:"title"
        content column:"content", sqlType:"Text"
        type column:"type", sqlType:"VarChar(255)"
        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    static constraints = {
        title(blank:false, nullable:false)
        content(blank:true, nullable:true)
        type(blank:false, nullable:false, inList: ["关于我们", "信用评估政策", "新闻中文", "信用研究", "信用评级", "信用公示", "诚信示范企业", "失信黑名单"])
    }

    String toString() {
        this.title
    }
}
