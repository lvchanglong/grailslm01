<%@ page import="extension.ReportInfoGdxx; common.User;" %>
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
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.qymc}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <g:render template="gdxx/create" model="[report:report, instance:new ReportInfoGdxx()]"/>

                    <table class="table table-striped">
                        <tr>
                            <th>序号</th>
                            <th>单位或自然人</th>
                            <th>投资金额（元）</th>
                            <th>投资比例（％）</th>
                            <th>操作</th>
                        </tr>
                        <g:each in="${gdxxList}" status="i" var="gdxx">
                            <tr>
                                <td>${offset.toInteger() + i + 1}</td>
                                <td>${gdxx.dwhzrr}</td>
                                <td>${gdxx.tzje}</td>
                                <td>${gdxx.tzbl}</td>
                                <td>
                                    <g:render template="gdxx/edit" model="[report:report, instance:gdxx]"/>
                                    <g:render template="gdxx/delete" model="[report:report, instance:gdxx]"/>
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