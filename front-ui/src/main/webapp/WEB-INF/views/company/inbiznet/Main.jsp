<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout2>
<div class="page-contents">

	<div class="page-contents-top-logo main-page">
	</div><!-- 상단 로고 공통 서브페이지에서는 main-page 클래스를 삭제하세요 -->
<!-- 여기서 부터 본문내용 -->
		<div class="page-contents-top-logo main-page-comment" style="font-family: 'Nanum Gothic', sans-serif;">원하시는 서비스를 선택하세요.</div>
 	<div class="contents">

	     <div class="btn-common-wrap">

	         <a href="callerid7900/callerid7900.do" class="btn-common">
	             <img src="/company/basic/image/main_number.png">
	             <div class="btn-common-label">1644-7900</div>
	         </a><!-- button -->

	         <a href="callerid0559/callerid0559.do" class="btn-common">
	             <img src="/company/basic/image/main_number.png">
	             <div class="btn-common-label">1588-0559</div>
	         </a><!-- button -->

	         <a href="faq/faq.do" class="btn-common">
	             <img src="/company/basic/image/faq.png">
	             <div class="btn-common-label">FAQ</div>
	         </a><!-- button -->

	         <a href="sales/sales.do" class="btn-common">
	             <img src="/company/basic/image/contact_us.png">
	             <div class="btn-common-label">CONTACT US</div>
	         </a><!-- button -->

   	  </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->


<!--- 하단 공통 -->
<div class="mt-auto">
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
    <div class="d-flex border-top border-1 border--bebebe">
        <button type="button" class="btn-replay" onclick="fnreplay()">
        	<img src="/company/basic/image/icon-btn-replay.svg">다시듣기
        </button>

        <button type="button" class="btn-end-call" onclick = "location.href = 'hangup.do';" >
        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
        </button>
    </div>
</div>
<!--- //하단 공통 -->


<script>
function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/Intro/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
				}
			})
}

</script>

</tag:layout2>