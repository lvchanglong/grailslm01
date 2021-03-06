<%@ page import="common.SearchLog;" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createSearchLogModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createSearchLogModal" tabindex="-1" role="dialog" aria-labelledby="createSearchLogModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createSearchLogForm" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createSearchLogModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="platform" class="col-sm-2">平台
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:select from="${SearchLog.constrainedProperties.platform.inList}" name="platform" value="${instance.platform}" valueMessagePrefix="searchLog.platform" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="type" class="col-sm-2">检索类型</label>
                            <div class="col-sm-10">
                                <g:textField name="type" value="${instance.type}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="q" class="col-sm-2">检索内容
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="q" value="${instance.q}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cnt" class="col-sm-2">结果数
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="cnt" value="${instance.cnt}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="ip" class="col-sm-2">ip
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="ip" value="${instance.ip}" class="form-control"/>
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