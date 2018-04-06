package extension

import com.aspose.words.Document
import com.aspose.words.DocumentBuilder
import common.AsposeLicense
import common.CommonHelper
import common.FileConverter
import common.FileHelper
import common.ExcelHelper
import common.User
import grails.converters.JSON
import grails.validation.ValidationException
import groovy.json.JsonSlurper
import org.jsoup.Jsoup

import static org.springframework.http.HttpStatus.*

class ReportController {

    static {
        AsposeLicense.setLicense()
    }

    ReportService reportService
    ReportInfoService reportInfoService

    def index(String state, String q, Integer max) {
        def vip = User.get(session.uid)

        params.max = Math.min(max ?: 10, 100)
        def query = Report.where {
            if(state) {
                state == state
            }
            if(q) {
                qymc ==~ "%${q?q.trim():""}%"
            }
            if(!vip.isAdmin()) {
                creater == vip
            }
        }
        def reportCount = query.count()
        respond query.list(params), model:[reportCount: reportService.count()]
    }

    def show(Long id) {
        respond reportService.get(id)
    }

    def create() {
        respond new Report(params)
    }

    def save(Report report) {
        if (report == null) {
            notFound()
            return
        }
        report.creater = User.load(session.uid) //创建人
        report.info = ["qymc":report.qymc] //默认值
        try {
            reportService.save(report)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            println e.errors
            return
        }
        render status: CREATED
    }

    def edit(Long id) {
        respond reportService.get(id)
    }

    def update(Report report) {
        if (report == null) {
            notFound()
            return
        }
        try {
            reportService.save(report)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            println e.errors
            return
        }
        render status: OK
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }
        reportService.delete(id)
        render status: NO_CONTENT
    }

    protected void notFound() {
        render status: NOT_FOUND
    }

    /**
     * 导出
    */
    def exportData(Report report) {
        def groovyShell = new GroovyShell(new Binding(["report": report]))

        def srcFile = FileHelper.getFile(servletContext.getRealPath("/") + "报告导出模板", "模板A.doc")
        Document document = new Document(srcFile.newInputStream())
        DocumentBuilder builder = new DocumentBuilder(document)

        document.getRange().getBookmarks().each { bookmark->
            def bookmarkName = bookmark.getName()
            def htmlFlag = bookmarkName.matches(/(info_zzjgsz|info_jynl|info_cyryqk|info_gjcyzcqk|info_zwqk|info_yfnl|info_xzjgxyjl|info_sfjgxyjl|info_yhxdlyqk|info_glzdqk|info_glrzqk|info_ztzbjlyqk|info_ywqk|info_fznl|info_zjxyzk|info_zcyyzk|info_cwxyzk|info_shgxzk|info_shgy|info_qyry|info_jbjljfxts|info_sm|info_gzpjap|info_gdxxHtml|info_lsygHtml|info_fzjgHtml|info_ggryszHtml)/)

            def propertyName = bookmarkName.replaceAll("_", ".")
            if(propertyName.endsWith("xxx")) {
                propertyName = propertyName.find(/.*?(?=\.\d+xxx|$)/)
            }

            def value = groovyShell.evaluate("return report.${propertyName}")
            if(htmlFlag) {
                bookmark.setText("")
                builder.moveToBookmark(bookmarkName)

                /**
                 * 本地图片导出处理
                 */
                if(value.contains("/uploads/Image/")) {
                    def htmlDocument = Jsoup.parse(value)
                    htmlDocument.getElementsByTag("img").each {img->
                        def imgPath = img.attr("src")
                        def fileName = FileHelper.getFileNameFromFilePath(imgPath) //有后缀
                        def fileType = FileHelper.getFileType(fileName) //后缀
                        def realName = FileHelper.getRealNameFromFileName(fileName) //无后缀
                        img.attr("src", "${createLink(uri:"/", absolute:true)}uploads/Image/${URLEncoder.encode(realName, "UTF-8")}.${fileType}")
                    }
                    value = htmlDocument.outerHtml()
                }

                builder.insertHtml(value)
            } else {
                bookmark.setText(value)
            }
        }

        def fileType = "doc"
        def fileName = "${report.qymc}.${fileType}"
        def tarFile = FileHelper.getFile(servletContext.getRealPath("/") + "temp", fileName)
        document.save(tarFile.getAbsolutePath())

        response.contentType = grailsApplication.config.grails.mime.types[fileType]
        response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(fileName, "utf-8"))
        response.outputStream.withStream {
            it.write(tarFile.getBytes())
            it.flush()
            it.close()
        }

        if(tarFile.exists()) {
            tarFile.delete()
        }
    }

    /**
     * 表格
     */
    def chart() {

    }

    def c1() {
        def labels = ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]

        Calendar calendar = Calendar.getInstance()
        def nYear = calendar.get(Calendar.YEAR)

        def instanceList = Report.where {
            year(dateCreated) == nYear
        }.list()

        ArrayList datas = new ArrayList()
        HashMap hmMonthGroup = instanceList.groupBy {it->
            it.dateCreated.month + 1
        }

        def zhcn = [1:"一月", 2:"二月", 3:"三月", 4:"四月", 5:"五月", 6:"六月", 7:"七月", 8:"八月", 9:"九月", 10:"十月", 11:"十一月", 12:"十二月"]
        def maps = new HashMap()
        for(int m in 1..12) {
            ArrayList list = hmMonthGroup.get(m)
            if(list) {
                datas.add(list.size())
            } else {
                datas.add(0)
            }
            maps.put(zhcn.get(m), list)
        }

        render new HashMap([labels:labels, datas:datas, maps:maps]) as JSON
    }

    //-------------------------------------------------------------

    /**
     * 信用报告首页
     */
    def xybgsy(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 信用报告概述
     */
    def xybggs(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 企业基本信息
     */
    def qyjbxx(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 股东信息
     */
    def gdxx(Report report) {
        [report:report, reportInfo:report.info, gdxxList:report.info.gdxxs]
    }

    def deleteGdxx(ReportInfoGdxx instance) {
        if (instance == null) {
            notFound()
            return
        }
        instance.delete(flush: true)
        render status: NO_CONTENT
    }

    /**
     * 历史沿革
     */
    def lsyg(Report report) {
        [report:report, reportInfo:report.info, lsygList:report.info.lsygs]
    }

    def deleteLsyg(ReportInfoLsyg instance) {
        if (instance == null) {
            notFound()
            return
        }
        instance.delete(flush: true)
        render status: NO_CONTENT
    }

    /**
     * 分支机构
     */
    def fzjg(Report report) {
        [report:report, reportInfo:report.info, fzjgList:report.info.fzjgs]
    }

    def deleteFzjg(ReportInfoFzjg instance) {
        if (instance == null) {
            notFound()
            return
        }
        instance.delete(flush: true)
        render status: NO_CONTENT
    }

    /**
     * 组织机构设置
     */
    def zzjgsz(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 经营能力
     */
    def jynl(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 高管人员素质
     */
    def ggrysz(Report report) {
        [report:report, reportInfo:report.info, ggryszList:report.info.ggryszs]
    }

    def deleteGgrysz(ReportInfoGgrysz instance) {
        if (instance == null) {
            notFound()
            return
        }
        instance.delete(flush: true)
        render status: NO_CONTENT
    }

    /**
     * 从业人员情况
     */
    def cyryqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 国家产业政策情况
     */
    def gjcyzcqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 债务情况
     */
    def zwqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 研发能力
     */
    def yfnl(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 行政监管信用记录
     */
    def xzjgxyjl(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 司法监管信用记录
     */
    def sfjgxyjl(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 银行信贷履约情况
     */
    def yhxdlyqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 管理制度情况
     */
    def glzdqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 管理认证情况
     */
    def glrzqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 招投中标及履约情况（招标投标领域重点建设项目中标及履约情况）
     */
    def ztzbjlyqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 业务情况
     */
    def ywqk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 发展能力
     */
    def fznl(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 资金信用状况
     */
    def zjxyzk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 资产营运状况
     */
    def zcyyzk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 财务效益状况
     */
    def cwxyzk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 社会贡献状况
     */
    def shgxzk(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 社会公益
     */
    def shgy(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 企业荣誉
     */
    def qyry(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 基本结论及风险提示
     */
    def jbjljfxts(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 信用等级
     */
    def xydj(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 声明
     */
    def sm(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 跟踪评级安排
     */
    def gzpjap(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 资产负债表
     */
    def zcfzb(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 利润表
     */
    def lrb(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 现金流量表
     */
    def xjllb(Report report) {
        [report:report, reportInfo:report.info]
    }

    /**
     * 企业打分
     */
    def qydf(Report report) {
        def file = FileHelper.getFile(servletContext.getRealPath("/") + "企业计分标准", "${report.hylx}.htm")
        def reportInfo = report.info
        def html = reportInfo.qydf?:file.getText("UTF-8")

        if(html && reportInfo.pgzb) {
            def hm = new JsonSlurper().parseText(reportInfo.pgzb)
            if(hm) {
                hm.each {k, v->
                    html = html.replaceFirst(">${k}.*?<", ">${k}<div style='color:#ff0000;'>${v[2]}</div><")
                }
            }
            html = html.replaceFirst(">企业类型<", ">${reportInfo.qylx}<")
        }
        [report:report, reportInfo:reportInfo, html:html]
    }

    /**
     * 信用等级释义-列表
     */
    def ajaxXydjsyList(String key) {
        render XydjsyHelper.getKey(key) as JSON
    }

    def test() {
//        ReportInfoZcfzbZcb.getConstrainedProperties().each {k, v->
//            if(k.endsWith("End") || k.endsWith("Begin")) {
//                println "$k column:\"$k\", sqlType:\"VarChar(30)\""
//            }
//        }

//        render FileHelper.list(servletContext.getRealPath("/") + "企业计分标准").collect {elem->
//            elem.replaceFirst(/\.htm/, "")
//        } as JSON

        render "Test"
    }

}
