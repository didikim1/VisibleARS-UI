<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>


<tag:layout>
<div class="page-contents">

<!-- 여기서 부터 본문내용 -->

 <div class="contents">
	<div class="maincomment">
       1644-7900
      </div>
      <div class="subcomment">
     	 인비즈넷(주) ARS 인증 대표 발신 번호입니다</br>
     	 </div>
     	 <div class="thirdcomment">
     	 ARS 인증 서비스를 제공받는 고객사 ARS인증 사용 시 </br> 1644-7900으로 전화가 걸려옵니다.</br>
     	 </div>
    
     <div class="btn-common-wrap">
         <a href="customers.do" class="btn-common">
             <img src="/company/basic/image/resize/partners.png" style="cursor: pointer;">
             <div class="btn-common-label">고객사 확인하기</div>
         </a><!-- button -->

         <a href="callerid0559/callerid0559.do" class="btn-common">
             <img src="/company/basic/image/resize/call_fail.png">
             <div class="btn-common-label">전화가 안와요</div>
         </a><!-- button -->

     </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
</tag:layout>