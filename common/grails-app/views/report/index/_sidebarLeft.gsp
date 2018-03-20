<%@ page import="common.User; extension.Report;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarLeft" style="font-size:12px;">
	<ul class="nav nav-pills nav-stacked">
		<li role="presentation" class="${params.state?"":"active"}">
			<g:link controller="${params.controller}" action="${params.action}">
				全部
			</g:link>
		</li>
		<g:each in="${Report.constrainedProperties.state.inList}" status="i" var="state">
			<li role="presentation" class="${state.equals(params.state)?"active":""}">
				<g:link controller="${params.controller}" action="index" params="[state:state]">
					${state}
				</g:link>
			</li>
		</g:each>
	</ul>
</div>