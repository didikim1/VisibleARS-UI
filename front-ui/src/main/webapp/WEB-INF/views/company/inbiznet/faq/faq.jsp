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
       ARS 인증 FAQ
      </div>
      
     	 <div class="thirdcomment">
     	 자주 문의하시는 문의사항을 안내해드립니다. </br> 더 많은 정보는 홈페이지를 이용해주세요.</br>
     	 </div>
    
     <div class="btn-common-wrap">
         <a href="noAnswer.do" class="btn-common">
             <img src="/company/basic/image/resize/partners.png" style="cursor: pointer;">
             <div class="btn-common-label">전화가 안와요</div>
         </a><!-- button -->

         <a href="kypdRcgnt.do" class="btn-common">
             <img src="/company/basic/image/resize/keypad.png">
             <div class="btn-common-label">키패드 인식 문의</div>
         </a><!-- button -->

         <a href="overseasUsageGuide.do" class="btn-common">
             <img src="/company/basic/image/resize/global.png">
             <div class="btn-common-label">해외 이용 안내</div>
         </a><!-- button -->

         <a href="cardInfoChange.do" class="btn-common">
             <img src="/company/basic/image/resize/card.png">
             <div class="btn-common-label">카드 정보 변경</div>
         </a><!-- button -->

         <a href="clientInfoChange.do" class="btn-common">
             <img src="/company/basic/image/resize/customer.png">
             <div class="btn-common-label">고객 정보 변경</div>
         </a><!-- button -->

         <a href="certificationDetails.do" class="btn-common">
             <img src="/company/basic/image/resize/certification_history.png">
             <div class="btn-common-label">인증 내역 변경/취소</div>
         </a><!-- button -->

     </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
</tag:layout>