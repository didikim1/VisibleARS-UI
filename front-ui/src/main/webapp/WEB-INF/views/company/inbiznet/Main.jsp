<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
<div class="page-contents">
	<div class="page-contents-top-logo main-page"></div><!-- 상단 로고 공통 서브페이지에서는 main-page 클래스를 삭제하세요 -->

<!-- 여기서 부터 본문내용 -->

 <div class="contents">

     <div class="btn-common-wrap">

         <a href="#!" class="btn-common">
             <img src="/company/basic/image/main_number.png">
             <div class="btn-common-label">1644-7900</div>
         </a><!-- button -->

         <a href="#!" class="btn-common">
             <img src="/company/basic/image/main_number.png">
             <div class="btn-common-label">1688-0559</div>
         </a><!-- button -->

         <a href="#!" class="btn-common">
             <img src="/company/basic/image/faq.png">
             <div class="btn-common-label">FAQ</div>
         </a><!-- button -->

         <a href="#!" class="btn-common">
             <img src="/company/basic/image/contact_us.png">
             <div class="btn-common-label">CONTACT US</div>
         </a><!-- button -->

     </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
</tag:layout>