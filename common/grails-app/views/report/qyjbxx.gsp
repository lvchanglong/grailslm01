<%@ page import="extension.ReportInfo; extension.Report;" %>
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
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered">
                            <tr>
                                <th colspan="4" class="info">企业基本信息：</th>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">企业名称</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.qymc" value="${reportInfo.qymc}" class="form-control"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">法定代表人</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.fddbr" value="${reportInfo.fddbr}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">企业住所</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.qyzs" value="${reportInfo.qyzs}" class="form-control"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">邮政编码</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.yzbm" value="${reportInfo.yzbm}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">联系电话</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.lxdh" value="${reportInfo.lxdh}" class="form-control"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">注册资本</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.zczb" value="${reportInfo.zczb}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">经济类型</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.jjlx" value="${reportInfo.jjlx}" class="form-control"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">成立日期</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.clrq" value="${reportInfo.clrq?:new Date().format("yyyy-MM-dd")}" class="form-control" placeholder="如：2018-03-13"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">工商注册号</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.gszch" value="${reportInfo.gszch}" class="form-control"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">组织机构代码</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.zzjgdm" value="${reportInfo.zzjgdm}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 " rowspan="3">经营范围</th>
                                <td class="form_td p5 tl h20 lh20" rowspan="3">
                                    <g:textArea name="info.jyfw" value="${reportInfo.jyfw}" class="form-control" resize="vertical" style="min-height:150px;"/>
                                </td>
                                <th class="form_th p5 tr h20 lh20 ">基本开户行</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.jbkhh" value="${reportInfo.jbkhh}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">贷款证号</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.dkzh" value="${reportInfo.dkzh}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20 ">账号</th>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.zh" value="${reportInfo.zh}" class="form-control"/>
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
