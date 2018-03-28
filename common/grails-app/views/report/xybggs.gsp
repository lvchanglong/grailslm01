<%@ page import="common.CommonHelper; extension.ReportInfo; extension.Report;" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <div class="row">
                <g:if test="${report.scyj}">
                    <div class="col-md-12">
                        <p class="bg-info" style="padding:15px;">
                            审查意见：${report.scyj}
                        </p>
                    </div>
                </g:if>
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.qymc}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <g:form name="reportForm" controller="report" action="update" id="${report.id}" class="ajaxForm">
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered table-striped">
                            <tr>
                                <th colspan="4" class="form_th2 p5 tl h20 lh20 fb">基本信息：</th>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">企业名称</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.qymc" value="${reportInfo.qymc}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">企业住所</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.qyzs" value="${reportInfo.qyzs}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">法定代表人</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.fddbr" value="${reportInfo.fddbr}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">注册资本</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.zczb" value="${reportInfo.zczb}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">经济类型</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.jjlx" value="${reportInfo.jjlx}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">成立日期</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.clrq" value="${reportInfo.clrq?:new Date().format("yyyy-MM-dd")}" class="form-control" placeholder="如：2018-03-13"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">工商注册号/统一社会信用代码</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.gszch" value="${reportInfo.gszch}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">组织机构代码</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.zzjgdm" value="${reportInfo.zzjgdm}" class="form-control"/>
                                </td>
                            </tr>

                            <tr>
                                <th colspan="4" class="form_th2 p5 tl fb h20 lh20">主要财务数据与指标：</th>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">
                                    项目&nbsp;\&nbsp;年份
                                    <g:set var="year" value="${CommonHelper.getNian()}"/>
                                </th>
                                <td class="form_th p5 tc h20 lh20">
                                    <g:textField name="info.nf3" value="${reportInfo.nf3?:"${year - 3}"}" class="form-control" placeholder="如：2015"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20 ">
                                    <g:textField name="info.nf2" value="${reportInfo.nf2?:"${year - 2}"}" class="form-control" placeholder="如：2016"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20">
                                    <g:textField name="info.nf1" value="${reportInfo.nf1?:"${year - 1}"}" class="form-control" placeholder="如：2017"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">资产负债率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zcfzl3" value="${reportInfo.zcfzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zcfzl2" value="${reportInfo.zcfzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zcfzl1" value="${reportInfo.zcfzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">现金流动负债比率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xjldfzbl3" value="${reportInfo.xjldfzbl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xjldfzbl2" value="${reportInfo.xjldfzbl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xjldfzbl1" value="${reportInfo.xjldfzbl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">速动比率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.sdbl3" value="${reportInfo.sdbl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.sdbl2" value="${reportInfo.sdbl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.sdbl1" value="${reportInfo.sdbl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">总资产周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzczzl3" value="${reportInfo.zzczzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zzczzl2" value="${reportInfo.zzczzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzczzl1" value="${reportInfo.zzczzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">应收账款周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.yszkzzl3" value="${reportInfo.yszkzzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.yszkzzl2" value="${reportInfo.yszkzzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.yszkzzl1" value="${reportInfo.yszkzzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">流动资产周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.ldzczzl3" value="${reportInfo.ldzczzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.ldzczzl2" value="${reportInfo.ldzczzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.ldzczzl1" value="${reportInfo.ldzczzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">净资产收益率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.jzcsyl3" value="${reportInfo.jzcsyl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.jzcsyl2" value="${reportInfo.jzcsyl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.jzcsyl1" value="${reportInfo.jzcsyl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">销售(营业)利润率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrl3" value="${reportInfo.xsyylrl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xsyylrl2" value="${reportInfo.xsyylrl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrl1" value="${reportInfo.xsyylrl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">成本费用利润率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfylrl3" value="${reportInfo.cbfylrl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.cbfylrl2" value="${reportInfo.cbfylrl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfylrl1" value="${reportInfo.cbfylrl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">总资产报酬率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzcbcl3" value="${reportInfo.zzcbcl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zzcbcl2" value="${reportInfo.zzcbcl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzcbcl1" value="${reportInfo.zzcbcl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">销售收入增长率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xssrzzl3" value="${reportInfo.xssrzzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xssrzzl2" value="${reportInfo.xssrzzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xssrzzl1" value="${reportInfo.xssrzzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">资本保值增值率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zbbzzzl3" value="${reportInfo.zbbzzzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zbbzzzl2" value="${reportInfo.zbbzzzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zbbzzzl1" value="${reportInfo.zbbzzzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">销售利润增长率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xslrzzl3" value="${reportInfo.xslrzzl3}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xslrzzl2" value="${reportInfo.xslrzzl2}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xslrzzl1" value="${reportInfo.xslrzzl1}" class="form-control" placeholder="可不指定（自动计算）"/>
                                </td>
                            </tr>

                            <tr>
                                <th colspan="4" class="form_th2 p5 tl h20 lh20 fb">信用等级、释义及领域：</th>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">等级</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:select from="${ReportInfo.constrainedProperties.dj.inList}" id="reportInfoDj" name="info.dj" value="${reportInfo.dj}" class="form-control"/>

                                    <script>
                                        jQuery("#reportInfoDj").change(function(){
                                            jQuery.getJSON("${createLink(controller:"report", action:"ajaxXydjsyList")}", {"key":jQuery(this).val()}, function(data){
                                                jQuery("#reportInfoJffw").val(data.jffw);
                                                jQuery("#reportInfoXyts").val(data.xyts);
                                                jQuery("#reportInfoSy").val(data.sy);
                                            });
                                        });
                                    </script>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">释义</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:hiddenField id="reportInfoJffw" name="info.jffw" value="${reportInfo.jffw}"/>
                                    <g:hiddenField id="reportInfoXyts" name="info.xyts" value="${reportInfo.xyts}"/>
                                    <g:textArea id="reportInfoSy" name="info.sy" value="${reportInfo.sy}" class="form-control" resize="none" style="min-height:100px;" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">应用领域</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.yyly" value="${reportInfo.yyly}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">行业类型</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:textField name="info.hylx" value="${reportInfo.hylx}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">企业类型</th>
                                <td class="form_td p5 tl h20 lh20" colspan="3">
                                    <g:select from="${ReportInfo.constrainedProperties.qylx.inList}" name="info.qylx" value="${reportInfo.qylx}" class="form-control"/>
                                </td>
                            </tr>

                            <tr>
                                <th class="form_th2 p5 tl fb h20 lh20" colspan="4">基本结论及风险提示：</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20" colspan="4">
                                    <g:textArea name="info.jljts" value="${reportInfo.jljts}" class="form-control" resize="none" style="min-height:150px;"/>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2" class="form_th2 p5 tl fb h20 lh20" colspan="4">公共信用信息：</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20" colspan="4">
                                    <g:textArea name="info.ggxyxx" value="${reportInfo.ggxyxx}" class="form-control" resize="none" style="min-height:150px;"/>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2" class="form_th2 p5 tl fb h20 lh20" colspan="4">商业信用信息：</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20" colspan="4">
                                    <g:textArea name="info.syxyxx" value="${reportInfo.syxyxx}" class="form-control" resize="none" style="min-height:150px;"/>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2" class="form_th2 p5 tl fb h20 lh20" colspan="4">公益荣誉信息：</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20" colspan="4">
                                    <g:textArea name="info.gyryxx" value="${reportInfo.gyryxx}" class="form-control" resize="none" style="min-height:150px;"/>
                                </td>
                            </tr>
                        </table>

                        <g:submitButton name="submit" value="保存" class="btn btn-lg btn-primary"/>
                    </g:form>
                </div>
            </div>

            <content tag="sidebarLeft">
                <g:render template="else/sidebarLeft"/>
            </content>

            <content tag="sidebarRight">
                <g:render template="/guest/index1/sidebarRight"/>
            </content>

            <content tag="header">
                <g:render template="/guest/index1/header"/>
            </content>

            <content tag="footer">
                <g:render template="/guest/index1/footer"/>
            </content>
        </g:applyLayout>
    </body>
</html>
