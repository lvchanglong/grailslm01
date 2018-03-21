<%@ page import="extension.ReportInfo; extension.Report;" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <style>
            .linedark {
                border-bottom: 1px solid darkred;
                width: 10%;
                float: left;
                margin-bottom: 15px;
            }
            .linelight {
                border-bottom: 1px solid lightgray;
                width: 90%;
                float: left;
                margin-bottom: 15px;
            }
            .mhead {
                text-align: left;
                font-size: 22px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <div class="row">
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.bgqy}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <g:form name="reportForm" controller="report" action="update" id="${report.id}" class="ajaxForm">
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered">
                            <tr>
                                <td colspan="4" class="form_th2 p5 tl h20 lh20 fb">
                                    企业信用报告：
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    报告企业&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.bgqy" value="${reportInfo.bgqy}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    报告编号&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.bgbh" value="${reportInfo.bgbh}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    制作机构&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.zzjg" value="${reportInfo.zzjg}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    制作日期&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.zzrq" value="${reportInfo.zzrq}" class="form-control" placeholder="2018-03-13"/>
                                </td>
                            </tr>

                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    评估师1&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.pgs1" value="${reportInfo.pgs1}" class="form-control"/>
                                </td>
                                <td class="form_th p5 tr h20 lh20 ">
                                    联系方式&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.pgs1Lxfs" value="${reportInfo.pgs1Lxfs}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    评估师2&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.pgs2" value="${reportInfo.pgs2}" class="form-control"/>
                                </td>
                                <td class="form_th p5 tr h20 lh20 ">
                                    联系方式&nbsp;<span style="color: #ff0000">*</span>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField name="info.pgs2Lxfs" value="${reportInfo.pgs2Lxfs}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    特定情况信用报告申请
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:select from="${ReportInfo.constrainedProperties.tdqkxybgsq.inList}" name="info.tdqkxybgsq" value="${reportInfo.tdqkxybgsq}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="form_th p5 tr h20 lh20 ">
                                    申请说明
                                </td>
                                <td colspan="3" class="form_td p5 tl h20 lh20">
                                    <g:textArea name="info.sqsm" value="${reportInfo.sqsm}" class="form-control" resize="vertical" style="min-height:100px;"/>
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
