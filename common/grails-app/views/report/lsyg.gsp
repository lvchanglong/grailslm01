<%@ page import="extension.ReportInfoLsyg; common.User;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <g:set var="vip" value="${User.get(session.uid)}"/>
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
                    <g:render template="lsyg/create" model="[report:report, instance:new ReportInfoLsyg()]"/>

                    <table class="table table-striped">
                        <tr>
                            <th>序号</th>
                            <th>变更前名称</th>
                            <th>变更后名称</th>
                            <th>批准时间</th>
                            <th>操作</th>
                        </tr>
                        <g:each in="${lsygList}" status="i" var="lsyg">
                            <tr>
                                <td>${offset.toInteger() + i + 1}</td>
                                <td>${lsyg.bgqmc}</td>
                                <td>${lsyg.bghmc}</td>
                                <td>${lsyg.pzsj}</td>
                                <td>
                                    <g:render template="lsyg/edit" model="[report:report, instance:lsyg]"/>
                                    <g:render template="lsyg/delete" model="[report:report, instance:lsyg]"/>
                                </td>
                            </tr>
                        </g:each>
                    </table>
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