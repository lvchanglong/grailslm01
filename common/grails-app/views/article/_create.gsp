<%@ page import="grails.converters.JSON; common.Article;" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createArticleModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createArticleModal" role="dialog" aria-labelledby="createArticleModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createArticleForm" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createArticleModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="type" class="col-sm-2">类型
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="type" value="${instance.type}" required="required" class="form-control" autocomplete="off" data-provide="typeahead" data-min-length="0" data-show-hint-on-focus="true" data-source="${Article.listTypes() as grails.converters.JSON}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="title" class="col-sm-2">标题
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="title" value="${instance.title}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-2">内容
                            </label>
                            <div class="col-sm-10">
                                <ckeditor:editor name="content" id="createArticle" width="100%" height="370px">
                                    ${instance.content}
                                </ckeditor:editor>
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