package common

import com.aspose.cells.HtmlSaveOptions
import com.aspose.cells.Workbook
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

        println "info.test.1xxx".find(/.*?(?=\.\d+xxx|$)/)
    }

}