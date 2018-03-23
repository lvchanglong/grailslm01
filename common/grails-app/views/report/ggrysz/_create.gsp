<%@ page import="common.User; extension.ReportInfoGgrysz;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createReportInfoGgryszModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createReportInfoGgryszModal" role="dialog" aria-labelledby="createReportInfoGgryszModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createReportInfoGgryszForm" url="[controller:params.controller, action: 'update', id:report.id]" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createReportInfoGgryszModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="info.ggryszs[0].xm" class="col-sm-2">姓名
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.ggryszs[0].xm" value="${instance.xm}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.ggryszs[0].zw" class="col-sm-2">职务
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.ggryszs[0].zw" value="${instance.zw}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.ggryszs[0].nl" class="col-sm-2">年龄
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.ggryszs[0].nl" value="${instance.nl}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.ggryszs[0].xljzc" class="col-sm-2">学历及职称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="info.ggryszs[0].xljzc" value="${instance.xljzc}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.ggryszs[0].cyzz" class="col-sm-2">从业资质
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textArea name="info.ggryszs[0].cyzz" value="${instance.cyzz}" required="required" class="form-control" style="min-height:100px;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info.ggryszs[0].hjqk" class="col-sm-2">获奖情况
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textArea name="info.ggryszs[0].hjqk" value="${instance.hjqk}" required="required" class="form-control" style="min-height:100px;"/>
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