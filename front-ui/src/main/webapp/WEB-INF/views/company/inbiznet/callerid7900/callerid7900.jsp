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
       	전화가 걸려오지 않아요
      </div>
      <div class="subcomment">
     	  ARS 인증 요청 후 전화가 걸려오지 않는 경우</br>
     	 일시적인 통신 오류일 수 있습니다.<br> 이용하는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다<br>
     	 ARS 발신번호가 수신차단 되어있으면<br> 재부팅 후에도 동일한 현상이 나타날 수 있으니,<br> 아래와 같이 수신 관련 설정을 먼저 확인 후 이용해주시기 바랍니다.<br><br>
     	 </div>
     	 <div class="thirdcomment">
     	 1. ARS인증 받으시려는 휴대폰번호가 정확한지 확인<br><br>
     	 2. 1644-7900 또는 ARS인증 발신번호가 휴대폰 내 '수신차단 목록' 등록 여부<br><br>
     	 3. '후후/후스콜/뭐야이번호' 등 스팸차단 앱 확인 - '수신차단' 메뉴 등에 1644-7900 또는 ARS인증 발신번호가 등록되어 있는지 여부<br><br>
     	 4. 착신전환 설정 여부 <br><br>
     	 5. T전화 이용 여부 (T전화 앱 내 차단 번호 등록되어 있을 경우 안심차단으로 수신하지 못하는 경우가 있어 ARS발신번호 삭제 또는 일반전화 모드로 설정하여 이용 권유) <br><br>
     	 6. 통신사 수신차단 관련 부가서비스 가입 여부 <br><br>
     	 7. 백신 및 알약 앱 내 '차단' 관련 메뉴 설정 여부 <br><br>
     	 8. 아이폰의 경우 '방해금지 모드' 설정 여부 <br><br>
     	 
     	 </div>

     <div class="btn-common-wrap">
         <a href="#" class="btn-common-counseling">
             <img src="/company/basic/image/resize/counseling.png" style="cursor: pointer;">
       		<button onclick="fnOpenRegisterPage()">상담원 연결하기</button>      
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


<script type="text/javascript">

function fnOpenRegisterPage(){
 	$.ajax({
		type:'post',
		url:"/company/inbiznet/counseling.do?",
		contentType:"application/json",
		success:function(data){ 
			window.prompt('이용중이시던 서비스명을 입력해주세요.(ex. 신한카드 결제중 오류가 발생하였다면 신한카드 입력)','');
 		}
	}); 
}

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