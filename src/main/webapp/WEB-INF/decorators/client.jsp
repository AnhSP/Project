<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><sitemesh:write property="title"/></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS START -->
    <!-- Color modes -->
    <script src="/client/js/vendors/color-modes.js"></script>

    <!-- Libs CSS -->
    <link href="/client/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />
    <link href="/client/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="/client/libs/bootstrap_full/css/bootstrap.css" rel="stylesheet" />
    <link href="/client/libs/bootstrap_full/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Scroll Cue -->
    <link rel="stylesheet" href="/client/libs/scrollcue/scrollCue.css" />

    <!-- Box icons -->
    <link rel="stylesheet" href="/client/fonts/css/boxicons.min.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="/client/css/theme.min.css?t=20240403" />
    <!-- CSS END -->

    <script src="/client/libs/jquery/jquery.js"></script>
    <%--        <sitemesh:write property="head"/>--%>
</head>
<body data-bs-theme="light">
<%@ include file="/common/client/header.jsp" %>

<sitemesh:write property="body"/>

<%@ include file="/common/client/footer.jsp" %>

<!-- Libs JS -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="/client/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/client/libs/simplebar/dist/simplebar.min.js"></script>
<script src="/client/libs/headhesive/dist/headhesive.min.js"></script>

<!-- Theme JS -->
<script src="/client/js/theme.min.js"></script>
<script src="/client/js/init.js?t=20240403"></script>
<script src="/client/libs/scrollcue/scrollCue.min.js"></script>
<script src="/client/js/vendors/scrollcue.js"></script>


<!-- JQuery  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</body>
</html>