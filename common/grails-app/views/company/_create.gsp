<%@ page import="extension.Contact; extension.Company;" %>

<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#createCompanyModal">
    <span class="glyphicon glyphicon-plus"></span>&nbsp;信息添加
</a>
<div class="modal fade" id="createCompanyModal" tabindex="-1" role="dialog" aria-labelledby="createCompanyModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="createCompanyForm" url="[controller:params.controller, action: 'save']" class="form-horizontal ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="createCompanyModalTitle">信息添加</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <label for="name" class="col-sm-2">企业名称
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="name" value="${instance.name}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="companyId" class="col-sm-2">企业编号
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="companyId" value="${instance.companyId}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="legalPerson" class="col-sm-2">法定代表人
                                <span class="required-indicator">*</span>
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="legalPerson" value="${instance.legalPerson}" required="required" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="capital" class="col-sm-2">注册资本
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="capital" value="${instance.capital}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="industry" class="col-sm-2">行业划分
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="industry" value="${instance.industry}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="code" class="col-sm-2">统一社会信用代码/注册码
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="code" value="${instance.code}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="registerAddr" class="col-sm-2">注册地
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="registerAddr" value="${instance.registerAddr}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="actualAddr" class="col-sm-2">实际经营地
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="actualAddr" value="${instance.actualAddr}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="registerDate" class="col-sm-2">成立日期
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="registerDate" value="${instance.registerDate}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="approvalDate" class="col-sm-2">核准日期
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="approvalDate" value="${instance.approvalDate}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="businessTerm" class="col-sm-2">营业期限
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="businessTerm" value="${instance.businessTerm}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="registerDept" class="col-sm-2">登记机关
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="registerDept" value="${instance.registerDept}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="businessState" class="col-sm-2">经营状况
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="businessState" value="${instance.businessState}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="employeeNum" class="col-sm-2">企业职工人数
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="employeeNum" value="${instance.employeeNum}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="contactText" class="col-sm-2">联系人
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="contactText" id="companyContact" value="${instance.contact?.getUniqueKey()}" class="form-control"/>
                                <script>
                                    jQuery("#companyContact").typeahead({
                                        minLength:0,
                                        showHintOnFocus:true,
                                        source:${Contact.list()*.getUniqueKey() as grails.converters.JSON}
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="actualContactText" class="col-sm-2">实际负责人
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="actualContactText" id="companyActualContact" value="${instance.actualContact?.getUniqueKey()}" class="form-control"/>
                                <script>
                                    jQuery("#companyActualContact").typeahead({
                                        minLength:0,
                                        showHintOnFocus:true,
                                        source:${Contact.list()*.getUniqueKey() as grails.converters.JSON}
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="rank" class="col-sm-2">信用等级
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="rank" value="${instance.rank}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="blacklist" class="col-sm-2">是否被列入企业黑名单
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="blacklist" value="${instance.blacklist}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bankName" class="col-sm-2">基本账户所在行
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="bankName" value="${instance.bankName}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="businessForm" class="col-sm-2">企业类型
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="businessForm" value="${instance.businessForm}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="businessScope" class="col-sm-2">经营范围（主营产品）
                            </label>
                            <div class="col-sm-10">
                                <g:textArea name="businessScope" value="${instance.businessScope}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="patent" class="col-sm-2">专利技术
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="patent" value="${instance.patent}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="certificate" class="col-sm-2">资质/认证/经营/许可情况
                            </label>
                            <div class="col-sm-10">
                                <g:textField name="certificate" value="${instance.certificate}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="honour" class="col-sm-2">企业荣誉
                            </label>
                            <div class="col-sm-10">
                                <g:textArea name="honour" value="${instance.honour}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="introduction" class="col-sm-2">企业简介
                            </label>
                            <div class="col-sm-10">
                                <g:textArea name="introduction" value="${instance.introduction}" class="form-control"/>
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