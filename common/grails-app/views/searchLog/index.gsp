<%@ page import="common.User; common.SearchLog;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <g:set var="vip" value="${User.get(session.uid)}"/>
    </head>
    <body>
        <g:applyLayout name="${application.platform.layout}">
            <h1 class="main-title" style="text-align: center">
                检索日志
            </h1>
            <g:if test="${!vip.onlyView(params)}">
                <g:render template="create" model="[instance: new SearchLog()]"/>

                <a href="#fakelink" class="btn btn-lg btn-danger" data-toggle="modal" data-target="#batchDeleteSearchLogModal">
                    <span class="glyphicon glyphicon-remove"></span>&nbsp;批量删除
                </a>
                <div class="modal fade" id="batchDeleteSearchLogModal" tabindex="-1" role="dialog" aria-labelledby="batchDeleteSearchLogModalTitle" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h3 class="modal-title" id="batchDeleteSearchLogModalTitle">是否删除？</h3>
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
            </g:if>

            <g:render template="export"/>

            <g:link controller="${params.controller}" action="chart" target="_blank" class="btn btn-lg btn-info">
                <span class="glyphicon glyphicon-hand-right"></span>&nbsp;图表展示
            </g:link>

            <table class="table table-striped">
                <tr>
                    <g:if test="${!vip.onlyView(params)}">
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
                    </g:if>
                    <th>序号</th>
                    <th>平台</th>
                    <th>检索类型</th>
                    <th>检索内容</th>
                    <th>结果数</th>
                    <th>ip</th>
                    <g:sortableColumn property="dateCreated" title="创建时间"/>
                    <th>操作</th>
                </tr>
                <g:each in="${searchLogList}" status="i" var="searchLog">
                    <tr>
                        <g:if test="${!vip.onlyView(params)}">
                            <td>
                                <g:checkBox name="ids" value="${searchLog.id}" checked="false"/>
                            </td>
                        </g:if>
                        <td>${offset.toInteger() + i + 1}</td>
                        <td>${searchLog.platform}</td>
                        <td>${searchLog.type}</td>
                        <td>${searchLog.q}</td>
                        <td>${searchLog.cnt}</td>
                        <td>${searchLog.ip}</td>
                        <td><g:formatDate format="yyyy-MM-dd" date="${searchLog.dateCreated}"/></td>
                        <td>
                            <g:if test="${!vip.onlyView(params)}">
                                <g:render template="edit" model="[instance:searchLog]"/>
                                &nbsp;
                                <g:render template="delete" model="[instance:searchLog]"/>
                            </g:if>
                            <g:else>
                                <span class="glyphicon glyphicon-minus"></span>
                            </g:else>
                        </td>
                    </tr>
                </g:each>
            </table>

            <div style="text-align: center;">
                <div class="pagination">
                    <g:paginate total="${searchLogCount ?: 0}" />
                </div>
            </div>
        </g:applyLayout>
    </body>
</html>