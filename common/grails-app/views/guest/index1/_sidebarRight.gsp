<%@ page import="common.User;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarRight">
	<div class="info-header">
		<div class="glyphicon glyphicon-phone-alt info-header-icon" style="font-size:44px;"></div>
		<div class="info-header-msg" style="font-size:18px;">申报资讯热线</div>
	</div>
	<div class="info-body" style="font-size:18px;">
		<span class="info-body-key" style="font-weight:bold;">TEL:</span>
		<span class="info-body-value">024-23181588</span>
	</div>

	<g:link controller="report" action="index" target="_self" style="display:block;font-size:14px;margin-top:15px;">
		<span class="glyphicon glyphicon-menu-right"></span>&nbsp;信用报告
	</g:link>

	<g:if test="${vip}">
		<div style="padding:15px 55px 10px 0;">
			<g:form controller="vip" action="feedback" class="ajaxForm">
				<div class="row">
					<div class="col-md-12">
						<g:textArea name="content" required="" class="form-control" style="width:100%;min-height:170px;" placeholder="请您留言（姓名，电话，邮箱，内容），我们会尽快与您联系..."/>
					</div>
					<div class="col-md-12">
						<g:submitButton name="submit" value="发送" class="btn btn-primary" style="width:100%;"/>
					</div>
				</div>
			</g:form>
		</div>
	</g:if>
</div>