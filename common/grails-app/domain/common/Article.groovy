package common

import grails.converters.JSON

/**
 * 文章管理
 */
class Article {
    String title //标题
    String content //内容
    String type //类型

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
        type(blank:false, nullable:false)
    }

    String toString() {
        this.title
    }

    static def listTypes() {
        return Article.withCriteria {
            projections {
                distinct "type"
            }
        }
    }

}
