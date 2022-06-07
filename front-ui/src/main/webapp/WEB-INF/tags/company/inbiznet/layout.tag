<%@ tag language="java" pageEncoding="UTF-8"%><%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%> --%>
<%@ attribute name="activePageIndex" required="false"%>
<%@ attribute name="bodyClass" required="false"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<!DOCTYPE html>
<html>

<head>
    <title>INBIZNET 고객센터 - 보이는 ARS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="mobile portfolio, mobile portfolio site">
    <meta name="author" content="sam deering">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/company/basic/css/bootstrap.min.css">
    <link rel="stylesheet" href="/company/basic/css/inbiznet.css">
    <script src="/company/basic/js/jquery.min.js"></script>
    <script src="/company/basic/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Serif+KR&display=swap" rel="stylesheet">
</head>

<body>
     <div class="wraper d-flex flex-column">
     <div class="d-flex align-items-center text-white bg-white top-bar ">
		 <c:if test="${historyBack ne 'none' }">
	         <a href="#" onclick="goBack();" class="btn-top-bar-back"><img src="/company/basic/image/back-arrow.png"></a>
     	 </c:if>
		<div class="d-flex align-items-center justify-content-center title-logo-and-text-container">
            <a href="/company/inbiznet/Main.do" class="titlelogo">INBIZNET</a>
            <span class="title">보이는 ARS</span>
        </div>
         	<a href="/company/inbiznet/Main.do" class="btn-top-bar-home" style="float: right;"><img src="/company/basic/image/home.png"></a>
	</div>
    <jsp:doBody/>

	</div><!-- wraper -->
</body>

<script type = "text/javascript">
function goBack() {
	//window.history.back();
	alert(document.referrer);
}

</script>
</html>