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
            [contenteditable=true] {
                background-color: #c7f9c7;
            }
            [contenteditable=false] {
                background-color: #eee;
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

                        ${html}

                        <g:submitButton name="submit" value="暂存" class="btn btn-lg btn-primary"/>
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
                            jQuery(".contenteditable").keyup();
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
                            jQuery("." + key + "-sum").html(rtn.toFixed(2));
                        }
                    </script>
                </div>
                <div class="col-md-12">
                    <hr/>

                    <g:form name="pgzbReportForm" url="[controller:'report', action:'update', id:report.id]" class="form-horizontal ajaxForm">
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered">
                            <tr>
                                <th colspan="4" class="info">评估指标</th>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">
                                    项目&nbsp;\&nbsp;年份
                                </th>
                                <td class="form_th p5 tc h20 lh20">
                                    <g:textField name="info.nf3" value="${reportInfo.nf3}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20 ">
                                    <g:textField name="info.nf2" value="${reportInfo.nf2}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20">
                                    <g:textField name="info.nf1" value="${reportInfo.nf1}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">资产负债率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zcfzl3" value="${reportInfo.zcfzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zcfzl2" value="${reportInfo.zcfzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zcfzl1" value="${reportInfo.zcfzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">现金流动负债比率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xjldfzbl3" value="${reportInfo.xjldfzbl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xjldfzbl2" value="${reportInfo.xjldfzbl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xjldfzbl1" value="${reportInfo.xjldfzbl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">速动比率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.sdbl3" value="${reportInfo.sdbl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.sdbl2" value="${reportInfo.sdbl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.sdbl1" value="${reportInfo.sdbl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">总资产周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzczzl3" value="${reportInfo.zzczzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zzczzl2" value="${reportInfo.zzczzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzczzl1" value="${reportInfo.zzczzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">应收账款周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.yszkzzl3" value="${reportInfo.yszkzzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.yszkzzl2" value="${reportInfo.yszkzzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.yszkzzl1" value="${reportInfo.yszkzzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">流动资产周转率（次）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.ldzczzl3" value="${reportInfo.ldzczzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.ldzczzl2" value="${reportInfo.ldzczzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.ldzczzl1" value="${reportInfo.ldzczzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">净资产收益率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.jzcsyl3" value="${reportInfo.jzcsyl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.jzcsyl2" value="${reportInfo.jzcsyl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.jzcsyl1" value="${reportInfo.jzcsyl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">销售（营业）利润率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrl3" value="${reportInfo.xsyylrl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xsyylrl2" value="${reportInfo.xsyylrl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrl1" value="${reportInfo.xsyylrl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">成本费用利润率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfylrl3" value="${reportInfo.cbfylrl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.cbfylrl2" value="${reportInfo.cbfylrl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfylrl1" value="${reportInfo.cbfylrl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">总资产报酬率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzcbcl3" value="${reportInfo.zzcbcl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zzcbcl2" value="${reportInfo.zzcbcl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zzcbcl1" value="${reportInfo.zzcbcl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">销售（营业）收入增长率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyysrzzl3" value="${reportInfo.xsyysrzzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xsyysrzzl2" value="${reportInfo.xsyysrzzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyysrzzl1" value="${reportInfo.xsyysrzzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20">资本保值增值率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zbbzzzl3" value="${reportInfo.zbbzzzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zbbzzzl2" value="${reportInfo.zbbzzzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zbbzzzl1" value="${reportInfo.zbbzzzl1}" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">销售（营业）利润增长率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrzzl3" value="${reportInfo.xsyylrzzl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.xsyylrzzl2" value="${reportInfo.xsyylrzzl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.xsyylrzzl1" value="${reportInfo.xsyylrzzl1}" class="form-control" />
                                </td>
                            </tr>

                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">主营业务利润率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zyywlrl3" value="${reportInfo.zyywlrl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zyywlrl2" value="${reportInfo.zyywlrl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zyywlrl1" value="${reportInfo.zyywlrl1}" class="form-control" />
                                </td>
                            </tr>

                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">成本费用占主营业务收入的比率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfyzzyywsrdbl3" value="${reportInfo.cbfyzzyywsrdbl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.cbfyzzyywsrdbl2" value="${reportInfo.cbfyzzyywsrdbl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.cbfyzzyywsrdbl1" value="${reportInfo.cbfyzzyywsrdbl1}" class="form-control" />
                                </td>
                            </tr>

                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">社会贡献率（%）</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.shgxl3" value="${reportInfo.shgxl3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.shgxl2" value="${reportInfo.shgxl2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.shgxl1" value="${reportInfo.shgxl1}" class="form-control" />
                                </td>
                            </tr>

                            <tr>
                                <th class="form_th p5 tr h20 lh20" valign="top">债务上限</th>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zwsx3" value="${reportInfo.zwsx3}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20 ">
                                    <g:textField name="info.zwsx2" value="${reportInfo.zwsx2}" class="form-control" />
                                </td>
                                <td class="form_td p5 tc h20 lh20">
                                    <g:textField name="info.zwsx1" value="${reportInfo.zwsx1}" class="form-control" />
                                </td>
                            </tr>
                        </table>

                        <g:submitButton name="submit" value="持久化" class="btn btn-lg btn-warning"/>
                        （温馨提示：在确认数据无误后，请进行“持久化”操作。）
                    </g:form>
                </div>
                <div class="col-md-12">
                    <g:if test="${vip.isAdmin()}">
                        <hr/>

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
                            <g:submitButton name="submit" value="提交审查结果" class="btn btn-lg btn-success" style="display:block;margin:0 auto;"/>
                        </g:form>
                    </g:if>
                    <g:else>
                        <g:if test="${report.state.equals("已暂存") || report.state.equals("未合格") }">
                            <hr/>

                            <g:form name="submitForm" controller="report" action="update" id="${report.id}" class="ajaxForm">
                                <g:hiddenField name="state" value="已提交"/>
                                <g:submitButton name="submit" value="提交报告" class="btn btn-lg btn-success" style="display:block;margin:30px auto 0 auto;"/>
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
