<%@ page import="common.FunGroup; common.Function; common.Platform; common.User" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarLeft">
	<g:if test="${vip}">
		<g:if test="${vip.isSuperman()}">
			<g:set var="groups" value="${Function.listToGroup()}"/>
		</g:if>
		<g:elseif test="${vip.isAdmin()}">
			<g:set var="groups" value="${Platform.listActivePlatformFunctionsToGroup()}"/>
		</g:elseif>
		<g:else>
			<g:set var="groups" value="${vip.listFunctionsToGroup()}"/>
		</g:else>

		<div class="panel panel-default">
			<g:each in="${groups}" status="j" var="hm">
				<div class="panel-heading" role="tab" id="sidebarLeftHeading${j}">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" href="#sidebarLeftCollapse${j}" aria-expanded="true" aria-controls="sidebarLeftCollapse${j}">
							${hm.getKey()} <b class="caret"></b>
						</a>
					</h4>
				</div>
				<div id="sidebarLeftCollapse${j}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="sidebarLeftHeading${j}">
					<ul class="list-group">
						<g:each in="${hm.getValue()}" status="i" var="function">
							<g:if test="${function.getStateToBoolean() || vip.isSuperman()}">
								<li class="list-group-item ${function.controllerName.equals(params.controller)?"active":""}">
									<g:link controller="${function.controllerName}" action="${function.actionName}" elementId="sidebarLeft-${function.controllerName}" style="color:inherit;">${function.name}</g:link>
								</li>
							</g:if>
						</g:each>
					</ul>
				</div>
			</g:each>
		</div>
	</g:if>
</div>

<script>
    jQuery(document).ready(function() {
        var $root = jQuery("#sidebarLeft");
        var position = jQuery("#sidebarLeft-${params.controller}").offset().top - $root.offset().top;
        $root.parent().scrollTop(position - 210);
    });
</script>