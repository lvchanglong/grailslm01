<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><g:layoutTitle default="${application.platform.name}"/></title>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

        <meta name="Keywords" content="grails联盟,Grails联盟,GRAILS联盟"/>
        <meta name="Description" content="grails,grails教程,grails视频教程,网站开发,深思君"/>

        <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.bootcss.com/messenger/1.5.0/css/messenger.min.css">
        <link rel="stylesheet" href="https://cdn.bootcss.com/messenger/1.5.0/css/messenger-theme-future.min.css">
        <link rel="stylesheet" href="https://cdn.bootcss.com/jstree/3.3.5/themes/default/style.min.css">
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet src="${application.platform.css}"/>

        <!--[if lt IE 9]>
            <script type="text/javascript" src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/es5-shim/4.5.10/es5-shim.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/es5-shim/4.5.10/es5-sham.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/json3/3.3.2/json3.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/es6-shim/0.35.3/es6-shim.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/es6-shim/0.35.3/es6-sham.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/es7-shim/6.0.0/es7-shim.min.js"></script>
            <script type="text/javascript" src="https://cdn.bootcss.com/console-polyfill/0.3.0/index.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/messenger/1.5.0/js/messenger.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/messenger/1.5.0/js/messenger-theme-future.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/jstree/3.3.5/jstree.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/echarts/4.0.4/echarts.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/pdfobject/2.0.201604172/pdfobject.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery-placeholder/2.3.1/jquery.placeholder.min.js"></script>
        <script type="text/javascript" src="https://cdn.bootcss.com/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>

        %{--<ckeditor:resources/>--}%
        <script type="text/javascript" src="https://cdn.bootcss.com/ckeditor/4.5.9/ckeditor.js"></script>

        <asset:javascript src="application.js"/>

        <g:layoutHead/>
    </head>
    <body onload="${pageProperty(name:"body.onload")}" class="${pageProperty(name:"body.class")}">
        <g:pageProperty name="page.header" default="${ render(template:"/layouts/headers/Center/header") }"/>
        <g:layoutBody/>
        <g:pageProperty name="page.footer" default="${ render(template:"/layouts/footers/Center/footer") }"/>
        <asset:image src="spinner.gif" id="spinner" style="position:fixed;left:15px;bottom:30px;display:none;"/>
    </body>
</html>
