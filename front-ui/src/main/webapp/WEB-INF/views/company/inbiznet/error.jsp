<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout2>
<div class="page-contents">
<!-- 여기서 부터 본문내용 -->
	     <div class="errorPage">
        	<img src="/company/basic/image/error.png">
	   	 </div><!-- btn-common-wrap -->
			<div class="page-contents-top-logo error-page-title" style="font-family: 'Nanum Gothic', sans-serif;"> 시스템 점검 안내<br></div>
			<div class="page-contents-top-logo error-page-comment" style="font-family: 'Nanum Gothic', sans-serif;">
			2022-06-24 ~ 2022-06-25 <br>
			현재 시스템 장애로 인하여 상담원 연결이 불가능 합니다. <br>
			이용에 불편을 드려 대단히 죄송합니다.  <br>
			</div>

<!-- 본문내용 끝 -->
</div><!-- page-contents -->


<!--- 하단 공통 -->
<footer class = "footer">
	<div class="mt-auto">
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
    	<div class="d-flex border-top border-1 border--bebebe">
	        <button type="button" class="btn-end-calling" onclick = "location.href = 'end.do';" >
	        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
	        </button>
    	</div>
	</div>
</footer>
<!--- //하단 공통 -->


<script>

function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/errorPage/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
				}
			})
}

$(document).ready(function(){
	setTimeout(function(){
		fnreplay();
	}, 300);
})




</script>

</tag:layout2>