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
      	해외 이용 안내
      </div>
     	 <div class="thirdcomment">
		해외에서도 ARS 인증 이용이 가능합니다. </br>
		다만 이동통신사업자의 요금 정책에 따라 해외에서 이용 시 별도의 음성 통화 요금이 발생할 수 있으므로 원치 않으실 경우 다른 결제 방식을 이용해주시기 바랍니다. </br>
		또한, 간혹 거주 지역에 따라 인증에 실패하는 경우가 있으므로 유의해주시기 바랍니다.
     	 </div>
    
     <div class="btn-common-wrap">
         <a href="customers.do" class="btn-common-counseling">
             <img src="/company/basic/image/resize/counseling.png" style="cursor: pointer;">
             <div class="btn-common-label-counseling">상담원 연결하기</div>
         </a><!-- button -->

     </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
</tag:layout>