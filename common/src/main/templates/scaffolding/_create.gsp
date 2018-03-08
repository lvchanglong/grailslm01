${'<%'}@ page import="common.${className};" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#create${className}Modal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="create${className}Modal" role="dialog" aria-labelledby="create${className}ModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="create${className}Form" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="create${className}ModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="title" class="col-sm-2">标题
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="title" value="\${instance.title}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-2">内容
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="content" value="\${instance.content}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="remark" class="col-sm-2">备注
                            </label>
                            <div class="col-sm-10">
                                <ckeditor:editor name="remark" id="create${className}" width="100%" height="370px">
                                    \${instance.remark}
                                </ckeditor:editor>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="state" class="col-sm-2">状态
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:select from="\${${className}.constrainedProperties.state.inList}" name="state" value="\${instance.state}" valueMessagePrefix="${propertyName}.state" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="file" class="col-sm-2">上传
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <input type="file" id="file" name="file" value="" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="functions" class="col-sm-2">功能列表
                            </label>
                            <div class="col-sm-10">
                                <div class="row">
                                    <g:each in="\${${className}.list()}" status="i" var="one">
                                        <div class="col-sm-3 checkbox">
                                            <label class="checkbox-label">
                                                <g:checkBox name="functions" value="\${one.id}" checked="false"/>
                                                \${one}
                                            </label>
                                        </div>
                                    </g:each>
                                </div>
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