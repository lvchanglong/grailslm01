<%@ page import="common.Role; extension.ReportInfoLsyg;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editReportInfoLsygModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editReportInfoLsygModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editReportInfoLsygModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editReportInfoLsygForm${instance.id}" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editReportInfoLsygModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <g:hiddenField name="info.lsygs[${instance.id}].id" value="${instance.id}"/>

                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.lsygs[${instance.id}].bgqmc" class="col-sm-2">变更前名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[${instance.id}].bgqmc" value="${instance.bgqmc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.lsygs[${instance.id}].bghmc" class="col-sm-2">变更后名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[${instance.id}].bghmc" value="${instance.bghmc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.lsygs[${instance.id}].pzsj" class="col-sm-2">批准时间
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.lsygs[${instance.id}].pzsj" value="${instance.pzsj}" required="required" class="form-control"/>
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