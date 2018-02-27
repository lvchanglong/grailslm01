<%@ page import="common.Article;" %>

<a href="#fakelink" data-toggle="modal" data-target="#editArticleModal${instance.id}">
    <span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="修改"></span>
</a>

<div class="modal fade" id="editArticleModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="editArticleModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="editArticleForm${instance.id}" url="[controller:params.controller, action: 'update', id:instance.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="editArticleModal${instance.id}Title">信息修改</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="type" class="col-sm-2">类型
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:select from="${Article.constrainedProperties.type.inList}" name="type" value="${instance.type}" valueMessagePrefix="article.type" class="form-control"/>
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
                                <ckeditor:editor name="content" id="articleContent${instance.id}" width="100%" height="370px">
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