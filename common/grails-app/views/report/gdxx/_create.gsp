<%@ page import="common.User; extension.ReportInfoGdxx;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createReportInfoGdxxModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createReportInfoGdxxModal" role="dialog" aria-labelledby="createReportInfoGdxxModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createReportInfoGdxxForm" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createReportInfoGdxxModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.gdxxs[0].dwhzrr" class="col-sm-2">单位或自然人
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[0].dwhzrr" value="${instance.dwhzrr}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.gdxxs[0].tzje" class="col-sm-2">投资金额
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[0].tzje" value="${instance.tzje}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.gdxxs[0].tzbl" class="col-sm-2">投资比例
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[0].tzbl" value="${instance.tzbl}" required="required" class="form-control"/>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="确定" class="btn btn-lg btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>