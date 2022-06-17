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
     	 일시적인 통신 오류일 수 있습니다. </br>이용하시는 휴대폰 전원을 재부팅 후 재시도 해주시길 바랍니다. </br>
     	 </div>

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->

<script>
function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/CertiInfo/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
			}
		})
}
		
$(document).ready(function(){
	setTimeout(function(){
		fnreplay();
	}, 500);
})
</script>
</tag:layout>