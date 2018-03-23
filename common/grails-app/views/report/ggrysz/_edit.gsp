<%@ page import="common.Role; extension.ReportInfoGgrysz;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editReportInfoGgryszModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editReportInfoGgryszModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editReportInfoGgryszModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editReportInfoGgryszForm${instance.id}" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editReportInfoGgryszModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <g:hiddenField name="info.ggryszs[${instance.id}].id" value="${instance.id}"/>

                    <fieldset class="modal-fieldset">
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].xm" class="col-sm-2">姓名
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textField name="info.ggryszs[${instance.id}].xm" value="${instance.xm}" required="required" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].zw" class="col-sm-2">职务
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textField name="info.ggryszs[${instance.id}].zw" value="${instance.zw}" required="required" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].nl" class="col-sm-2">年龄
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textField name="info.ggryszs[${instance.id}].nl" value="${instance.nl}" required="required" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].xljzc" class="col-sm-2">学历及职称
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textField name="info.ggryszs[${instance.id}].xljzc" value="${instance.xljzc}" required="required" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].cyzz" class="col-sm-2">从业资质
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textArea name="info.ggryszs[${instance.id}].cyzz" value="${instance.cyzz}" required="required" class="form-control" style="min-height:100px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="info.ggryszs[${instance.id}].hjqk" class="col-sm-2">获奖情况
                            <span class="required-indicator">*</span>
                        </label>
                        <div class="col-sm-10">
                            <g:textArea name="info.ggryszs[${instance.id}].hjqk" value="${instance.hjqk}" required="required" class="form-control" style="min-height:100px;"/>
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