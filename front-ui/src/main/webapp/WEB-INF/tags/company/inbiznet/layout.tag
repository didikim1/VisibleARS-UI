<%@ tag language="java" pageEncoding="UTF-8"%><%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%> --%>
<%@ attribute name="activePageIndex" required="false"%>
<%@ attribute name="bodyClass" required="false"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<!DOCTYPE html>
<html>

<head>
    <title>Mobile Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="mobile portfolio, mobile portfolio site">
    <meta name="author" content="sam deering">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="/company/inbiznet/js/jquery-1.8.3.min.js"></script>
    <script src="/company/inbiznet/js/jquery.mobile-1.2.0.js"></script>
    <link href="/company/inbiznet/css/jquery.mobile.structure-1.2.0.css" rel="stylesheet">
    <link href="/company/inbiznet/css/jquery.mobile.theme-1.2.0.css" rel="stylesheet">
    <link href="/company/inbiznet/css/jquery.mobile-1.2.0.css" rel="stylesheet">
    <link href="/company/inbiznet/css/photoswipe.css" rel="stylesheet">
    <link href="/company/inbiznet/css/style.css" rel="stylesheet">
    <script src="/company/inbiznet/js/script.js"></script>
    <script src="/company/inbiznet/js/settings.js"></script>
    <script src="/company/inbiznet/js/klass.min.js"></script>
    <script src="/company/inbiznet/js/code.photoswipe.jquery-3.0.5.min.js"></script>
</head>

<body>
	<jsp:doBody/>
</body>
</html>