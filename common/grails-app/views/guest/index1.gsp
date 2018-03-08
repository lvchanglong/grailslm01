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
            <g:if test="${params.type}">
                %{--进入“类别”模式--}%
                <div class="row">
                    <div class="col-md-12">
                        <div class="mhead">${params.type}</div>
                        <div class="linedark"></div>
                        <div class="linelight"></div>
                    </div>
                    <g:each in="${articleList}" status="i" var="article">
                        <div class="col-md-12">
                            <div style="padding-bottom:5px;">
                                <g:render template="index0/articleShow" model="[instance:article]"/>
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
                </div>
            </g:if>
            <g:else>
                <div class="row">
                    <div class="col-md-12">
                        <div style="margin-bottom:15px;">
                            <g:render template="index0/slider"/>
                        </div>
                    </div>
                    <g:if test="${params.q}">
                        %{--进入“检索”模式--}%
                        <g:each in="${articleList}" status="i" var="article">
                            <div class="col-md-12">
                                <div style="padding-bottom:5px;">
                                    <g:render template="index0/articleShow" model="[instance:article]"/>
                                    <span style="float:right;color:gray;">
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
                    <g:else>
                        %{--进入“首页”模式--}%
                        <g:each in="${Article.listTypes()}" status="i" var="type">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mhead">${type}</div>
                                        <div class="linedark"></div>
                                        <div class="linelight"></div>
                                    </div>
                                    <g:each in="${Article.findAllByType(type, [max:10])}" status="j" var="article">
                                        <div class="col-md-12">
                                            <div style="padding-bottom:5px;">
                                                <g:render template="index0/articleShow" model="[instance:article]"/>
                                                <span style="float:right;color:gray;">
                                                    <g:formatDate format="yyyy-MM-dd" date="${article.dateCreated}"/>
                                                </span>
                                            </div>
                                        </div>
                                    </g:each>
                                </div>
                            </div>
                        </g:each>
                    </g:else>
                </div>
            </g:else>

            <content tag="sidebarLeft">
                <g:render template="index1/sidebarLeft"/>
            </content>

            <content tag="sidebarRight">
                <g:render template="index1/sidebarRight"/>
            </content>

            <content tag="header">
                <g:render template="index1/header"/>
            </content>

            <content tag="footer">
                <g:render template="index1/footer"/>
            </content>
        </g:applyLayout>
    </body>
</html>
