<%@ page import="extension.Contact;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editContactModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editContactModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editContactModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editContactForm${instance.id}" url="[controller:params.controller, action: 'update', id:instance.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editContactModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="name" class="col-sm-2">姓名
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="name" value="${instance.name}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="duty" class="col-sm-2">职务
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="duty" value="${instance.duty}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-2">电话
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="phone" value="${instance.phone}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2">邮箱
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="email" value="${instance.email}" class="form-control"/>
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