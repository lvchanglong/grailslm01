<%@ page import="common.Role; extension.ReportInfoFzjg;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editReportInfoFzjgModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editReportInfoFzjgModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editReportInfoFzjgModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editReportInfoFzjgForm${instance.id}" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editReportInfoFzjgModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <g:hiddenField name="info.fzjgs[${instance.id}].id" value="${instance.id}"/>

                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.fzjgs[${instance.id}].ybgqygx" class="col-sm-2">与报告企业关系
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[${instance.id}].ybgqygx" value="${instance.ybgqygx}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[${instance.id}].qymc" class="col-sm-2">企业名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[${instance.id}].qymc" value="${instance.qymc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[${instance.id}].dz" class="col-sm-2">地址
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[${instance.id}].dz" value="${instance.dz}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[${instance.id}].lxdh" class="col-sm-2">联系电话
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[${instance.id}].lxdh" value="${instance.lxdh}" required="required" class="form-control"/>
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