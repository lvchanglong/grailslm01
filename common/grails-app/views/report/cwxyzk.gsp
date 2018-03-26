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
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.qymc}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <g:form name="reportForm" controller="report" action="update" id="${report.id}" class="ajaxForm">
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered table-striped">
                            <tr>
                                <th class="form_th2 p5 tl h20 lh20 fb">财务效益状况：</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20">
                                    <ckeditor:editor name="info.cwxyzk" id="createInfoCwxyzk" width="100%" height="370px">
                                        ${reportInfo.cwxyzk}
                                    </ckeditor:editor>
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
