<%@ page import="common.User; extension.Report;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <g:set var="vip" value="${User.get(session.uid)}"/>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <h1 class="main-title" style="text-align: center">
                信用报告
            </h1>
            <g:render template="create" model="[instance: new Report()]"/>

            <a href="#fakelink" class="btn btn-lg btn-danger" data-toggle="modal" data-target="#batchDeleteReportModal">
                <span class="glyphicon glyphicon-remove"></span>&nbsp;批量删除
            </a>
            <div class="modal fade" id="batchDeleteReportModal" tabindex="-1" role="dialog" aria-labelledby="batchDeleteReportModalTitle" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h3 class="modal-title" id="batchDeleteReportModalTitle">是否删除？</h3>
                        </div>
                        <div class="modal-body">
                            &nbsp;删除后，<strong>不可恢复</strong>，请慎重操作
                        </div>
                        <div class="modal-footer">
                            <a href="javascript:void(0);" class="btn btn-lg btn-danger" id="batchDeleteMaster" data-url="${createLink(controller: params.controller, action: 'delete')}">
                                <span class="glyphicon glyphicon-remove"></span>&nbsp;确认删除
                            </a>
                            <script>
                                jQuery("#batchDeleteMaster").click(function () {
                                    var urlBase = jQuery(this).attr("data-url");//url = urlBase + "/" + id
                                    var array = jQuery("[name=ids]").serializeArray();
                                    if(0 == array.length) {
                                        Messenger().post({
                                            message: "请选择操作对象",
                                            hideAfter:2,
                                            showCloseButton: true
                                        });
                                        return;
                                    }
                                    jQuery.each(array, function(i, hm) {
                                        jQuery.ajax({
                                            async:false,
                                            type:'POST',
                                            url:urlBase + "/" + hm.value,
                                            success:function(data,textStatus){
                                                Messenger().post({
                                                    message: "操作成功",
                                                    hideAfter:2,
                                                    showCloseButton: true
                                                });
                                            },
                                            error:function(XMLHttpRequest,textStatus,errorThrown){
                                                Messenger().post({
                                                    message: "操作失败",
                                                    hideAfter:2,
                                                    showCloseButton: true
                                                });
                                            }
                                        });
                                    });
                                    window.location.reload();
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>

            %{--<g:render template="export"/>--}%

            <table class="table table-striped">
                <tr>
                    <th>
                        <g:checkBox name="checkBoxMaster" value="" checked="false"/>
                        <script>
                            jQuery("#checkBoxMaster").click(function () {
                                if(jQuery(this).is(":checked")) {
                                    jQuery("[name=ids]").prop("checked", true);
                                } else {
                                    jQuery("[name=ids]").prop("checked", false);
                                }
                            });
                        </script>
                    </th>
                    <th>序号</th>
                    <th>企业名称</th>
                    <th>报告类型</th>
                    <th>行业类型</th>
                    <th>应用领域</th>
                    <th>有效期</th>
                    <th>抽查人</th>
                    <th>状态</th>
                    <g:sortableColumn property="dateCreated" title="创建时间"/>
                    <th>操作</th>
                </tr>
                <g:each in="${reportList}" status="i" var="report">
                    <tr>
                        <td>
                            <g:checkBox name="ids" value="${report.id}" checked="false"/>
                        </td>
                        <td>${offset.toInteger() + i + 1}</td>
                        <td title="${report.dq}"><g:link controller="${params.controller}" action="xybgsy" id="${report.id}" target="_blank">${report.qymc}</g:link></td>
                        <td>${report.bglx}</td>
                        <td>${report.hylx}</td>
                        <td>${report.yyly}</td>
                        <td>${report.yxq}</td>
                        <td title="${report.scyj}">${report.ccr}</td>
                        <td>${report.state}</td>
                        <td><g:formatDate format="yyyy-MM-dd" date="${report.dateCreated}"/></td>
                        <td>
                            <g:render template="edit" model="[instance:report]"/>
                            &nbsp;
                            <g:render template="delete" model="[instance:report]"/>
                        </td>
                    </tr>
                </g:each>
            </table>

            <div style="text-align: center;">
                <div class="pagination">
                    <g:paginate total="${reportCount ?: 0}" />
                </div>
            </div>

            <content tag="sidebarLeft">
                <g:render template="index/sidebarLeft"/>
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