<%@ page import="common.FunGroup; common.Function; common.Platform; common.User; common.Article;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarLeft" style="font-size:12px;">
	<ul class="nav nav-pills nav-stacked">
		<g:each in="${Article.listTypes()}" status="i" var="type">
			<li role="presentation" class="${type.equals(params.type)?"active":""}">
				<g:link controller="${params.controller}" action="${params.action}" params="[type:type]">
					${type}
				</g:link>
			</li>
		</g:each>
	</ul>
</div>