<%@ page import="common.LoginLog;" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createLoginLogModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createLoginLogModal" tabindex="-1" role="dialog" aria-labelledby="createLoginLogModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createLoginLogForm" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createLoginLogModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="username" class="col-sm-2">账号
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <input type="text" name="username" value="" required="required" id="username" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickname" class="col-sm-2">昵称</label>
                            <div class="col-sm-10">
                                <input type="text" name="nickname" value="" id="nickname" class="form-control col-sm-10">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="rolename" class="col-sm-2">角色</label>
                            <div class="col-sm-10">
                                <input type="text" name="rolename" value="" id="rolename" class="form-control col-sm-10">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="ip" class="col-sm-2">ip</label>
                            <div class="col-sm-10">
                                <input type="text" name="ip" value="" id="ip" class="form-control col-sm-10">
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