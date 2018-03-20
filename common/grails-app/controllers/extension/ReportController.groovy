package extension


import common.FileConverter
import common.FileHelper
import common.ExcelHelper
import common.User
import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ReportController {

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
        report.info = new ReportInfo(["bgqy":report.qymc, "hylx":report.hylx, "yyly":report.yyly])
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
     * 批量导出
    */
    def exportData() {
        def dirpath = servletContext.getRealPath("/") + "temp"
        def filetype = 'xls'
        def filename = new Date().format("yyyyMMddHHmmss") + "." + filetype
        def file = FileHelper.getFile(dirpath, filename)

        def array = new ArrayList()
        Report.list().each {
            def cell = new HashMap()
            cell.put(0, it.id)
            cell.put(1, it.version)
            cell.put(2, it.dateCreated)
            cell.put(3, it.lastUpdated)
            array.add(cell)
        }
        ExcelHelper.writeExcel(file, array)

        response.contentType = grailsApplication.config.grails.mime.types[filetype]
        response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(filename, "utf-8"))
        response.outputStream.withStream {
            it.write(file.getBytes())
            it.flush()
            it.close()
        }

        if(file.exists()) {
            file.delete()
        }
    }

    /**
     * 下载
     */
    def download(Report instance) {
        if(!instance.data) {
            render status: BAD_REQUEST, text: "无法下载"
            return
        }
        try {
            def filename = instance.filename
            def filetype = FileHelper.getFileType(filename)
            response.contentType = grailsApplication.config.grails.mime.types[filetype]
            response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(filename, "UTF-8"))
            def out = response.getOutputStream()
            out << instance.data.bytes
            out.flush()
            out.close()
        } catch(Exception e) {

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
    def xybgsy(ReportInfo reportInfo) {
        respond reportInfo
    }

    /**
     * 信用报告概述
     */
    def xybggs(ReportInfo reportInfo) {
        respond reportInfo
    }

    /**
     * 企业基本信息
     */
    def qyjbxx() {

    }

    /**
     * 股东信息
     */
    def gdxx() {

    }

    /**
     * 历史沿革
     */
    def llyg() {

    }

    /**
     * 分支机构
     */
    def fzjg() {

    }

    /**
     * 组织机构设置
     */
    def zzjgsz() {

    }

    /**
     * 经营能力
     */
    def jynl() {

    }

    /**
     * 高管人员素质
     */
    def ggrysz() {

    }

    /**
     * 从业人员情况
     */
    def cyryqk() {

    }

    /**
     * 国家产业政策情况
     */
    def gjcyzcqk() {

    }

    /**
     * 债务情况
     */
    def zwqk() {

    }

    /**
     * 研发能力
     */
    def yfnl() {

    }

    /**
     * 行政监管信用记录
     */
    def xzjgxyjl() {

    }

    /**
     * 司法监管信用记录
     */
    def sfjgxyjl() {

    }

    /**
     * 银行信贷履约情况
     */
    def yhxdlyqk() {

    }

    /**
     * 管理制度情况
     */
    def glzdqk() {

    }

    /**
     * 管理认证情况
     */
    def glrzqk() {

    }

    /**
     * 招投中标及履约情况（招标投标领域重点建设项目中标及履约情况）
     */
    def ztzbjlyqk() {

    }

    /**
     * 业务情况
     */
    def ywqk() {

    }

    /**
     * 发展能力
     */
    def fznl() {

    }

    /**
     * 资金信用状况
     */
    def zjxyzk() {

    }

    /**
     * 资产营运状况
     */
    def zcyyzk() {

    }

    /**
     * 财务效益状况
     */
    def cwxyzk() {

    }

    /**
     * 社会贡献状况
     */
    def shgxzk() {

    }

    /**
     * 社会公益
     */
    def shgy() {

    }

    /**
     * 企业荣誉
     */
    def qyry() {

    }

    /**
     * 基本结论及风险提示
     */
    def jbjljfxts() {

    }

    /**
     * 信用等级
     */
    def xydj() {

    }

    /**
     * 声明
     */
    def sm() {

    }

    /**
     * 跟踪评级安排
     */
    def gzpjap() {

    }

    /**
     * 资产负债表
     */
    def zcfzb() {

    }

    /**
     * 利润表
     */
    def lrb() {

    }

    /**
     * 现金流量表
     */
    def xjllb() {

    }

    /**
     * 企业打分
     */
    def qydf() {

    }

}
