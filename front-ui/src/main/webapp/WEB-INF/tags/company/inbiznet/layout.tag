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

     <div class="d-flex align-items-center text-white bg-white top-bar">
		 <c:if test="${historyBack ne 'none' }">
	         <a href="javascript:history.back();" class="btn-top-bar-back"><img src="/company/basic/image/back-arrow.png"></a>
     	 </c:if>
		<div class="d-flex align-items-center justify-content-center title-logo-and-text-container">
            <a href="/company/inbiznet/Main.do" class="titlelogo">INBIZNET</a>
            <span class="title">보이는 ARS</span>
        </div>
        <c:if test="${historyBack ne 'none' }">
         	<a href="/company/inbiznet/Main.do" class="btn-top-bar-home" style="float: right;"><img src="/company/basic/image/home.png"></a>
         </c:if> 
	</div>
    <jsp:doBody/>


     <div class="mt-auto">
         <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
         <div class="d-flex border-top border-1 border--bebebe">
             <button type="button" class="btn-replay">
             	<img src="/company/basic/image/icon-btn-replay.svg">다시듣기</a>
             </button>
             	
             <button type="button" class="btn-end-call">
             	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
             </button>
         </div>
     </div><!--- 하단 공통 -->
</div><!-- wraper -->

</body>

<script type = "text/Jacascript">
	function goBack() {
		window.history.back();
</script>
</html>