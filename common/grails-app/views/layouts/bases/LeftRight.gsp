<asset:stylesheet src="LeftRight/main.css"/>

<div class="container-fluid layout-left-right">
    <div class="row">
        <div class="col-md-2 sidebar-left">
            <g:pageProperty name="page.sidebarLeft" default="${ render(template:"/layouts/bars/LeftRight/sidebarLeft") }"/>
        </div>
        <div class="col-md-offset-2 col-md-10 main">
            <g:layoutBody/>
        </div>
    </div>
</div>

<content tag="header">
    <g:pageProperty name="page.header" default="${ render(template:"/layouts/headers/LeftRight/header") }"/>
</content>

<content tag="footer">
    <g:pageProperty name="page.footer" default="${ render(template:"/layouts/footers/LeftRight/footer") }"/>
</content>