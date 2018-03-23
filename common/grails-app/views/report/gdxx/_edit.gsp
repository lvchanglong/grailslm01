<%@ page import="common.Role; extension.ReportInfoGdxx;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editReportInfoGdxxModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editReportInfoGdxxModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editReportInfoGdxxModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editReportInfoGdxxForm${instance.id}" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editReportInfoGdxxModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <g:hiddenField name="info.gdxxs[${instance.id}].id" value="${instance.id}"/>

                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.gdxxs[${instance.id}].dwhzrr" class="col-sm-2">单位或自然人
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[${instance.id}].dwhzrr" value="${instance.dwhzrr}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.gdxxs[${instance.id}].tzje" class="col-sm-2">投资金额
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[${instance.id}].tzje" value="${instance.tzje}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.gdxxs[${instance.id}].tzbl" class="col-sm-2">投资比例
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.gdxxs[${instance.id}].tzbl" value="${instance.tzbl}" required="required" class="form-control"/>
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