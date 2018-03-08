package common

/**
 * 幻灯片管理
 */
class Slide {

    SlideData data //图片数据
    String filename //图片名称

    String title //标题
    String url = "#fakelink"//url
    String content //内容
    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static mapping = {
        table "base_slide"
        id column: "id"
        version column: "version"

		filename column:"filename"
		data column:"data_id"
        title column:"title"
        url column:"url"
        content column:"content", sqlType:"Text"
		
        dateCreated column:"date_created"
        lastUpdated column:"last_updated"

        sort id:"desc"
    }

    static constraints = {
        filename(blank:false, nullable:false)
        data(nullable:false)
		title(blank:true, nullable:true)
        url(blank:false, nullable:false)
        content(blank:true, nullable:true)
    }

    String toString() {
        this.title
    }

}
