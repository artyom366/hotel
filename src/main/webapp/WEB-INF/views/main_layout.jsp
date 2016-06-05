<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/stat/images/favicon.ico">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/stat/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/stat/css/dashboard.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/stat/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/stat/css/datepicker.css" rel="stylesheet">

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">

    <link rel="stylesheet" href="//rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/css/bootstrap-editable.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${pageContext.request.contextPath}/stat/js/jquery-1.12.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/stat/js/jquery-2.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/stat/js/bootstrap-datepicker.js"></script>

    <title><tiles:insertAttribute name="title"/></title>
</head>

<body>
<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="menu" />
<tiles:insertAttribute name="body" />
<tiles:insertAttribute name="footer" />
</body>



<script src="${pageContext.request.contextPath}/stat/js/bootstrap.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>

<script src="${pageContext.request.contextPath}/stat/js/table/bootstrap-table.js"></script>

<script src="${pageContext.request.contextPath}/stat/js/table/bootstrap-table-editable.js"></script>
<script src="http://rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script src="${pageContext.request.contextPath}/stat/js/table/bootstrap-table-export.js"></script>
<script src="http://rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>





</html>