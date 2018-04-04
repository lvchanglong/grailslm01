package common

import com.aspose.cells.HtmlSaveOptions
import com.aspose.cells.Workbook
import com.aspose.words.Document
import com.aspose.words.DocumentBuilder
import org.jsoup.Jsoup

import java.text.DecimalFormat

class Test {

    static {
        AsposeLicense.setLicense()
    }

    static main(args) {
        //new DocumentBuilder(doc).insertHtml("")
        //println "0.00".toDouble() == 0
        //println "info.test.1xxx".find(/.*?(?=\.\d+xxx|$)/)

        def srcFile = FileHelper.getFile("F:\\workspace\\grailslm01\\common\\src\\main\\webapp\\报告导出模板", "模板AAA.doc")
        Document document = new Document(srcFile.newInputStream())
        DocumentBuilder builder = new DocumentBuilder(document)

        document.getRange().getBookmarks().each {bookmark->
            def bookmarkName = bookmark.getName()

            def htmlFlag = bookmarkName.matches(/(info_zzjgsz|info_jynl|info_cyryqk|info_gjcyzcqk|info_zwqk|info_yfnl|info_xzjgxyjl|info_sfjgxyjl|info_yhxdlyqk|info_glzdqk|info_glrzqk|info_ztzbjlyqk|info_ywqk|info_fznl|info_zjxyzk|info_zcyyzk|info_cwxyzk|info_shgxzk|info_shgy|info_qyry|info_jbjljfxts|info_sm|info_gzpjap|info_gdxxHtml|info_lsygHtml|info_fzjgHtml|info_ggryszHtml)/)

            def value = "info_gzpjap"
            if(htmlFlag) {

            } else {
                bookmark.setText(value)
            }
        }

        def tarFile = FileHelper.getFile("F:\\workspace\\grailslm01\\common\\src\\main\\webapp\\报告导出模板", "123456.doc")
        document.save(tarFile.getAbsolutePath())
    }

}