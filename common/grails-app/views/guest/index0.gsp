<%@ page import="common.Article" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <style>
            .linedark {
                border-bottom: 1px solid darkred;
                width: 10%;
                float: left;
                margin-bottom: 15px;
            }
            .linelight {
                border-bottom: 1px solid lightgray;
                width: 90%;
                float: left;
                margin-bottom: 15px;
            }
            .mhead {
                text-align: left;
                font-size: 22px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <div class="row">
                <g:if test="${params.q}">
                    %{--进入“检索”模式--}%
                    <div class="col-md-12">
                        <div class="mhead">${params.q}</div>
                        <div class="linedark"></div>
                        <div class="linelight"></div>
                    </div>
                    <g:each in="${articleList}" status="i" var="article">
                        <div class="col-md-12">
                            <div style="position:relative;padding-bottom:5px;">
                                <g:render template="index0/articleShow" model="[instance:article]"/>
                                <span style="position:absolute;right:0;top:0;color:gray;">
                                    <g:formatDate format="yyyy-MM-dd" date="${article.dateCreated}"/>
                                </span>
                            </div>
                        </div>
                    </g:each>
                    <div class="col-md-12">
                        <div style="text-align: center;">
                            <div class="pagination">
                                <g:paginate total="${articleCount ?: 0}" params="[q:params.q]"/>
                            </div>
                        </div>
                    </div>
                </g:if>
                <g:elseif test="${params.type}">
                    %{--进入“类别”模式--}%
                    <div class="col-md-12">
                        <div class="mhead">${params.type}</div>
                        <div class="linedark"></div>
                        <div class="linelight"></div>
                    </div>
                    <g:each in="${articleList}" status="i" var="article">
                        <div class="col-md-12">
                            <div style="position:relative;padding-bottom:5px;">
                                <g:render template="index0/articleShow" model="[instance:article]"/>
                                <span style="position:absolute;right:0;top:0;color:gray;">
                                    <g:formatDate format="yyyy-MM-dd" date="${article.dateCreated}"/>
                                </span>
                            </div>
                        </div>
                    </g:each>
                    <div class="col-md-12">
                        <div style="text-align: center;">
                            <div class="pagination">
                                <g:paginate total="${articleCount ?: 0}" params="[type:params.type]"/>
                            </div>
                        </div>
                    </div>
                </g:elseif>
                <g:else>
                    %{--进入“首页”模式--}%
                    <div class="col-md-12">
                        <div style="margin-bottom:15px;">
                            <g:render template="index0/slider"/>
                        </div>
                    </div>
                    <g:each in="${Article.listTypes()}" status="i" var="type">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mhead">
                                        <g:link controller="${params.controller}" action="${params.action}" params="[type:type]" style="color:#333;">
                                            ${type}
                                        </g:link>
                                    </div>
                                    <div class="linedark"></div>
                                    <div class="linelight"></div>
                                </div>
                                <g:each in="${Article.findAllByType(type, [max:10])}" status="j" var="article">
                                    <div class="col-md-12">
                                        <div style="position:relative;padding-bottom:5px;">
                                            <g:render template="index0/articleShow" model="[instance:article]"/>
                                        </div>
                                    </div>
                                </g:each>
                            </div>
                        </div>
                    </g:each>
                </g:else>
            </div>

            <content tag="sidebarLeft">
                <g:render template="index0/sidebarLeft"/>
            </content>

            <content tag="sidebarRight">
                <g:render template="index0/sidebarRight"/>
            </content>

            <content tag="header">
                <g:render template="index0/header"/>
            </content>

            <content tag="footer">
                <g:render template="index0/footer"/>
            </content>
        </g:applyLayout>
    </body>
</html>
