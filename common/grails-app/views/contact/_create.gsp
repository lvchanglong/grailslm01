<%@ page import="extension.Contact;" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createContactModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createContactModal" tabindex="-1" role="dialog" aria-labelledby="createContactModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createContactForm" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createContactModalTitle">信息添加</h3>
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