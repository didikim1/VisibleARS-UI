<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout2>
<div class="page-contents">

<!-- 여기서 부터 본문내용 -->
	     <div class="movingCall">
        	<img src="/company/basic/image/phone-call.png">
	   	 </div><!-- btn-common-wrap -->
		<div class="page-contents-top-logo calling-page-comment" style="font-family: 'Nanum Gothic', sans-serif;">상담원과 통화중입니다.</div>
 </div><!-- contents -->

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


</script>

</tag:layout2>