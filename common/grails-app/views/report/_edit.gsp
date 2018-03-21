<%@ page import="common.User; extension.Report;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<a href="#fakelink" data-toggle="modal" data-target="#editReportModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editReportModal${instance.id}" role="dialog" aria-labelledby="editReportModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editReportForm${instance.id}" url="[controller:params.controller, action: 'update', id:instance.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editReportModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="qymc" class="col-sm-2">企业名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="qymc" value="${instance.qymc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bglx" class="col-sm-2">报告类型
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="bglx" value="${instance.bglx}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="hylx" class="col-sm-2">行业类型
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="hylx" value="${instance.hylx}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="yyly" class="col-sm-2">应用领域
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="yyly" value="${instance.yyly}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="dq" class="col-sm-2">地区
                            </label>
                            <div class="col-sm-10">
                                <g:select from="${Report.constrainedProperties.dq.inList}" name="dq" value="${instance.dq}" valueMessagePrefix="report.dq" class="form-control"/>
                            </div>
                        </div>
                        <g:if test="${vip.isAdmin()}">
                            <div class="form-group">
                                <label for="yxq" class="col-sm-2">有效期
                                </label>
                                <div class="col-sm-10">
                                    <g:textField name="yxq" value="${instance.yxq}" placeholder="如：1949-10-01" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ccr" class="col-sm-2">抽查人
                                </label>
                                <div class="col-sm-10">
                                    <g:textField name="ccr" value="${instance.ccr}" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="scyj" class="col-sm-2">审查意见
                                </label>
                                <div class="col-sm-10">
                                    <g:textArea name="scyj" value="${instance.scyj}" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="state" class="col-sm-2">状态
                                </label>
                                <div class="col-sm-10">
                                    <g:select from="${Report.constrainedProperties.state.inList}" name="state" value="${instance.state}" valueMessagePrefix="report.state" class="form-control"/>
                                </div>
                            </div>
                        </g:if>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="确定" class="btn btn-lg btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>