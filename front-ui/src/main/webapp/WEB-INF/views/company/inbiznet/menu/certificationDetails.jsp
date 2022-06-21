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
      	 인증번호 입력이 안돼요
      </div>
     	 <div class="subcomment">
			ARS인증 시 정상적으로 인증번호를 입력하셨음에도<br> 입력되지 않았다고 나오신다면 <br>아래 내용 참고하시어 재부팅 후 이용해주시기 바랍니다. <br><br>

			1. 전화 받으신 화면에 키패드 입력 (전화 앱 선택 후 입력 x)<br>
			2. 수신 전화 화면 확인 <br>(팝업 화면의 경우 팝업 터치하여 전체 화면으로 변경 후 입력)<br><br>

			자세한 사항은 인비즈넷 홈페이지를 통해 확인하시기 바랍니다.<br>
     	 </div>

      	<div class="homePage">
     	 	<img src="/company/basic/image/resize/expand-arrows.png" style="cursor: pointer;">
     		<a class= "hometag" href="http://inbiznetcorp.com/FAQ/" style="color:#084298; text-align: center;">인비즈넷 홈페이지 바로가기 </a>
     	 </div>

     <div class="btn-common-wrap">
         <a href="customers.do" class="btn-common-counseling">
             <img src="/company/basic/image/resize/counseling.png" onclick="fnOpenRegisterPage()"  style="cursor: pointer;">
             <button class="counseling" onclick="fnOpenRegisterPage()">상담원 연결하기</button>
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

function fnOpenRegisterPage(){
 	$.ajax({
		type:'post',
		contentType:"application/json",
		success:function(data){
			window.prompt('이용중이시던 서비스명을 입력해주세요.(ex. 신한카드 결제중 오류가 발생하였다면 신한카드 입력)','');
 		}
	});
}



function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/certificationDetails/retry.do",
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