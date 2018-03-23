<%@ page import="extension.ReportInfoGgrysz; common.User;" %>
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
                    <g:render template="ggrysz/create" model="[report:report, instance:new ReportInfoGgrysz()]"/>

                    <table class="table table-striped">
                        <tr>
                            <th>序号</th>
                            <th>姓名</th>
                            <th>职务</th>
                            <th>年龄</th>
                            <th>学历及职称</th>
                            <th>从业资质</th>
                            <th>获奖情况</th>
                            <th>操作</th>
                        </tr>
                        <g:each in="${ggryszList}" status="i" var="ggrysz">
                            <tr>
                                <td>${offset.toInteger() + i + 1}</td>
                                <td>${ggrysz.xm}</td>
                                <td>${ggrysz.zw}</td>
                                <td>${ggrysz.nl}</td>
                                <td>${ggrysz.xljzc}</td>
                                <td>${ggrysz.cyzz}</td>
                                <td>${ggrysz.hjqk}</td>
                                <td>
                                    <g:render template="ggrysz/edit" model="[report:report, instance:ggrysz]"/>
                                    <g:render template="ggrysz/delete" model="[report:report, instance:ggrysz]"/>
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