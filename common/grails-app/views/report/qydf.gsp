<%@ page import="common.CommonHelper; extension.ReportInfo; extension.Report; common.User;" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <g:set var="vip" value="${User.get(session.uid)}"/>
        <style>
            #excel-table {
                width:100% !important;
                font-size:12px;
                text-align:center;
            }
        </style>
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
                    <g:form name="reportForm" controller="report" action="update" id="${report.id}" class="qydfForm">
                        <g:hiddenField name="info.qydf" id="infoQydf"/>

                        ${reportInfo.qydf?:html}

                        <g:submitButton name="submit" value="保存" class="btn btn-lg btn-primary"/>
                    </g:form>

                    <script>
                        jQuery(".qydfForm").ajaxForm({
                            beforeSerialize: function ($form, options) {
                                var outerHTML = jQuery("#excel-table").prop("outerHTML");
                                jQuery("#infoQydf").val(outerHTML);
                                return true;
                            },
                            success: function (data) {
                                Messenger().post({
                                    message: "操作成功",
                                    hideAfter:2,
                                    showCloseButton: true
                                });
                                window.location.reload();
                            },
                            error: function (data) {
                                Messenger().post({
                                    message: "操作失败",
                                    hideAfter:2,
                                    showCloseButton: true
                                });
                            }
                        });
                    </script>

                    <script>
                        jQuery(document).ready(function() {
                            jQuery(".contenteditable").keyup(function(){
                                plusAll("data");
                            });
                        });

                        function plusAll(key) {
                            plus(key + "1");
                            plus(key + "2");
                            plus(key + "3");
                            plus(key + "4");
                        }

                        function plus(key) {
                            var rtn = 0.00; //结果
                            jQuery("." + key).each(function() {
                                var n = jQuery(this).html();
                                if(!isNaN(n)) {
                                    var cls = jQuery(this).attr("class");
                                    if(cls.indexOf("plus") != -1) {
                                        rtn += parseFloat(n);
                                    } else if(cls.indexOf("minus") != -1) {
                                        rtn -= parseFloat(n);
                                    }
                                }
                            });
                            jQuery("." + key + "-sum").html(rtn);
                        }
                    </script>
                </div>
                <div class="col-md-12">
                    <g:if test="${vip.isAdmin()}">
                        <hr/>

                        <h1 style="text-align:center;font-size:30px;">
                            抽查
                        </h1>

                        <g:form name="checkReportForm" url="[controller:'report', action:'update', id:report.id]" class="form-horizontal ajaxForm">
                            <div class="row">
                                <fieldset class="modal-fieldset">
                                    <div class="form-group">
                                        <label for="yxq" class="col-sm-2">有效期
                                        </label>
                                        <div class="col-sm-10">
                                            <g:textField name="yxq" value="${report.yxq?:new Date().format("yyyy-MM-dd")}" placeholder="如：1949-10-01" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ccr" class="col-sm-2">抽查人
                                        </label>
                                        <div class="col-sm-10">
                                            <g:textField name="ccr" value="${report.ccr}" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="scyj" class="col-sm-2">审查意见
                                        </label>
                                        <div class="col-sm-10">
                                            <g:textArea name="scyj" value="${report.scyj}" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="state" class="col-sm-2">状态
                                        </label>
                                        <div class="col-sm-10">
                                            <g:select from="${Report.constrainedProperties.state.inList}" name="state" value="${report.state}" valueMessagePrefix="report.state" class="form-control"/>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <g:submitButton name="submit" value="确定" class="btn btn-lg btn-primary"/>
                        </g:form>
                    </g:if>
                    <g:else>
                        <g:if test="${report.state.equals("已暂存") || report.state.equals("未合格") }">
                            <g:form name="submitForm" controller="report" action="update" id="${report.id}" class="ajaxForm pull-right" style="position:relative;left:0;top:-47px;">
                                <g:hiddenField name="state" value="已提交"/>
                                <g:submitButton name="submit" value="提交报告" class="btn btn-lg btn-success"/>
                            </g:form>
                        </g:if>
                    </g:else>
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
