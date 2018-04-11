<asset:stylesheet src="LeftCenterRight/main.css"/>

<div class="container-fluid layout-left-center-right">
    <div class="row">
        <div class="col-md-2 sidebar-left fadeInLeft animated">
            <g:pageProperty name="page.sidebarLeft" default="${ render(template:"/layouts/bars/LeftRight/sidebarLeft") }"/>
        </div>
        <div class="col-md-offset-2 col-md-8 main">
            <g:layoutBody/>
        </div>
        <div class="col-md-2 sidebar-right fadeInRight animated">
            <g:pageProperty name="page.sidebarRight" default="${ render(template:"/layouts/bars/LeftCenterRight/sidebarRight") }"/>
        </div>
    </div>
</div>

<content tag="header">
    <g:pageProperty name="page.header" default="${ render(template:"/layouts/headers/LeftRight/header") }"/>
</content>

<content tag="footer">
    <g:pageProperty name="page.footer" default="${ render(template:"/layouts/footers/Center/footer") }"/>
</content>