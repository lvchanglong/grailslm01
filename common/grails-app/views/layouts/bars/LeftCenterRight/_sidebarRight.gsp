<%@ page import="common.User;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarRight">
	<g:if test="${vip}">
		<div class="info-header">
			<div class="glyphicon glyphicon-user info-header-icon"></div>
			<div class="info-header-msg">用户信息</div>
		</div>
		<div class="info-body">
			<span class="info-body-key">账号:</span>
			<span class="info-body-value">${vip.username}</span>
			<br/>
			<span class="info-body-key">昵称:</span>
			<span class="info-body-value">${vip.nickname}</span>
			<br/>
			<span class="info-body-key">角色:</span>
			<span class="info-body-value">${vip.role?:"未知"}</span>
			<br/>
			<span class="info-body-key">创建时间:</span>
			<span class="info-body-value"><g:formatDate format="yyyy-MM-dd" date="${vip.dateCreated}"/></span>
		</div>
	</g:if>
</div>