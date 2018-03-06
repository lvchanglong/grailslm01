<%@ page import="common.FunGroup; common.Function; common.Platform; common.User" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<nav class="navbar navbar-layout-header navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <g:set var="platform" value="${application.platform}"/>
            <g:if test="${platform?.data}">
                <g:link uri="/" class="navbar-brand-image">
                    <img src="${createLink(controller:'platform', action:"image", params:["id": platform?.id])}"/>
                </g:link>
            </g:if>
            <g:else>
                <g:link uri="/" class="navbar-brand">
                    ${platform?.name}
                </g:link>
            </g:else>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <g:if test="${vip}">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <g:render template="/layouts/demos/regenerate" model="[vip:vip]"/>
                    </li>
                    <li>
                        <g:render template="/layouts/demos/logout"/>
                    </li>
                </ul>
            </g:if>
            <g:else>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <g:render template="/layouts/demos/login"/>
                    </li>
                    <li>
                        <g:render template="/layouts/demos/register"/>
                    </li>
                </ul>
            </g:else>
        </div>
    </div>
</nav>