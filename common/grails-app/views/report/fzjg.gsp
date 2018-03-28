<%@ page import="extension.ReportInfoFzjg; common.User;" %>
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
                    <g:render template="fzjg/create" model="[report:report, instance:new ReportInfoFzjg()]"/>

                    <table class="table table-striped">
                        <tr>
                            <th>序号</th>
                            <th>与报告企业关系</th>
                            <th>企业名称</th>
                            <th>地址</th>
                            <th>联系电话</th>
                            <th>操作</th>
                        </tr>
                        <g:each in="${fzjgList}" status="i" var="fzjg">
                            <tr>
                                <td>${offset.toInteger() + i + 1}</td>
                                <td>${fzjg.ybgqygx}</td>
                                <td>${fzjg.qymc}</td>
                                <td>${fzjg.dz}</td>
                                <td>${fzjg.lxdh}</td>
                                <td>
                                    <g:render template="fzjg/edit" model="[report:report, instance:fzjg]"/>
                                    <g:render template="fzjg/delete" model="[report:report, instance:fzjg]"/>
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