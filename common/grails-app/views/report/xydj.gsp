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
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered table-striped">
                            <tr>
                                <th class="form_th p5 tc h20 lh20 ">信用等级</th>
                                <th class="form_th p5 tc h20 lh20 ">计分范围</th>
                                <th class="form_th p5 tc h20 lh20 ">信用提示</th>
                                <th class="form_th p5 tc h20 lh20 ">释义</th>
                            </tr>
                            <tr>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:select from="${ReportInfo.constrainedProperties.dj.inList}" id="reportInfoDj" name="info.dj" value="${reportInfo.dj}" class="form-control"/>

                                    <script>
                                        jQuery("#reportInfoDj").change(function(){
                                            jQuery.getJSON("${createLink(controller:"report", action:"ajaxXydjsyList")}", {"key":jQuery(this).val()}, function(data){
                                                jQuery("#reportInfoJffw").val(data.jffw);
                                                jQuery("#reportInfoXyts").val(data.xyts);
                                                jQuery("#reportInfoSy").val(data.sy);
                                            });
                                        });
                                    </script>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField id="reportInfoJffw" name="info.jffw" value="${reportInfo.jffw}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textField id="reportInfoXyts" name="info.xyts" value="${reportInfo.xyts}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="form_td p5 tl h20 lh20">
                                    <g:textArea id="reportInfoSy" name="info.sy" value="${reportInfo.sy}" class="form-control" resize="none" style="min-height:100px;" readonly="readonly"/>
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
