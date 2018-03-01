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
        <g:applyLayout name="/bases/LeftRight">
            <div class="row">
                <div class="col-md-9">
                    <g:if test="${params.type}">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mhead">${params.type}</div>
                                <div class="linedark"></div>
                                <div class="linelight"></div>
                            </div>
                            <g:each in="${articleList}" status="i" var="article">
                                <div class="col-md-12">
                                    <div style="padding-bottom:5px;">
                                        <g:render template="index1/articleShow" model="[instance:article]"/>
                                        <span style="float:right;color:gray;">
                                            <g:formatDate format="yyyy-MM-dd" date="${article.dateCreated}"/>
                                        </span>
                                    </div>
                                </div>
                            </g:each>
                            <div class="col-md-12">
                                <div style="text-align: center;">
                                    <div class="pagination">
                                        <g:paginate total="${articleCount ?: 0}" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="row">
                            <div class="col-md-12">
                                <div style="margin-bottom:15px;">
                                    <g:render template="index1/slider"/>
                                </div>
                            </div>
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
                                                    <g:render template="index1/articleShow" model="[instance:article]"/>
                                                    <span style="float:right;color:gray;">
                                                        <g:formatDate format="yyyy-MM-dd" date="${article.dateCreated}"/>
                                                    </span>
                                                </div>
                                            </div>
                                        </g:each>
                                    </div>
                                </div>
                            </g:each>
                        </div>
                    </g:else>
                </div>

                <div class="col-md-3">
                    <div style="padding:0 20px;">
                        <div style="font-weight:bold;">
                            <div class="glyphicon glyphicon-phone-alt" style="font-size:50px;display:inline-block;vertical-align: middle;"></div>
                            <div style="font-size:22px;display:inline-block;vertical-align: middle;margin-left:9px;">联系方式</div>
                        </div>
                        <div style="font-size:18px;margin-top:10px;font-weight:bold;">
                            <span style="color:gray;">Ｑ群:</span>
                            <span style="color:black;margin-left:8px;">101150634</span>
                            <br/>
                            <span style="color:gray;">ＱＱ:</span>
                            <span style="color:black;margin-left:8px;">417891235</span>
                        </div>
                    </div>
                </div>
            </div>

            <content tag="footer">
                <g:render template="index0/footer"/>
            </content>
        </g:applyLayout>
    </body>
</html>
