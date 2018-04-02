<%@ page import="common.User; extension.ReportInfoLsyg;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createReportInfoLsygModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createReportInfoLsygModal" role="dialog" aria-labelledby="createReportInfoLsygModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createReportInfoLsygForm" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createReportInfoLsygModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.lsygs[0].bgqmc" class="col-sm-2">变更前名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[0].bgqmc" value="${instance.bgqmc?:"-"}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.lsygs[0].bghmc" class="col-sm-2">变更后名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[0].bghmc" value="${instance.bghmc?:"-"}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.lsygs[0].pzsj" class="col-sm-2">批准时间
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[0].pzsj" value="${instance.pzsj?:"-"}" required="required" class="form-control"/>
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