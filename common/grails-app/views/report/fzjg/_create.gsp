<%@ page import="common.User; extension.ReportInfoFzjg;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createReportInfoFzjgModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createReportInfoFzjgModal" role="dialog" aria-labelledby="createReportInfoFzjgModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createReportInfoFzjgForm" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createReportInfoFzjgModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.fzjgs[0].ybgqygx" class="col-sm-2">与报告企业关系
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[0].ybgqygx" value="${instance.ybgqygx}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[0].qymc" class="col-sm-2">企业名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[0].qymc" value="${instance.qymc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[0].dz" class="col-sm-2">地址
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[0].dz" value="${instance.dz}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.fzjgs[0].lxdh" class="col-sm-2">联系电话
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.fzjgs[0].lxdh" value="${instance.lxdh}" required="required" class="form-control"/>
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