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
      	고객정보 변경
      </div>
     	 <div class="thirdcomment">
			당사는 ARS 본인인증만 담당하고 있으므로 고객님께서 ARS 인증 시 입력하신 정보의 변경 및 확인을 위해서는 해당 고객사 고객센터로 문의해주시기 바랍니다.
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
<footer class = "footer">
<div class="mt-auto">
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
    <div class="d-flex border-top border-1 border--bebebe">
        <button type="button" class="btn-replay" onclick="fnreplay()">
        	<img src="/company/basic/image/icon-btn-replay.svg">다시듣기
        </button>

        <button type="button" class="btn-end-call" onclick = "location.href = '/company/inbiznet/end.do';" >
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
		url : "/company/inbiznet/ttsKey/ClientInfo/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
				}
			})
		}
</script>
</tag:layout>