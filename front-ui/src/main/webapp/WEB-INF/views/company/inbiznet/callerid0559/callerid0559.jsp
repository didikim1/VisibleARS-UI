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
     	  정상적으로 번호를 입력했음에도 입력되지 않았다고 나온다면 </br>
     	 일시적인 통신 오류일 수 있습니다.<br> 이용하는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다<br>
     	 ARS 발신번호가 수신차단 되어있으면<br> 재부팅 후에도 동일한 현상이 나타날 수 있으니,<br> 아래와 같이 수신 관련 설정을 먼저 확인 후 이용해주시기 바랍니다.<br><br>
     	 </div>
     	 <div class="thirdcomment">
     	 1.	스마트폰 왼쪽 하단의 '전화앱' 선택하여 키패드 입력게 아닌지 확인<br>
 		(하단의 '전화앱' 선택하여 키패드 숫자 입력하신 경우 현재 전화받으신 상태에서 키패드 숫자를 입력하신게 아닌 전화 거는 화면에 키패드를 입력한 것이 되어 입력값이 없는 것으로 나오므로, 전화 받으신 화면을 전체 화면으로 띄우신 후 그 화면 내에서 키패드 숫자 입력 부탁드립니다. )
		* 전화 걸려오는 화면이 전체화면이 아닌 상단의 팝업으로 작게 뜰 경우에는 전화 수신 후 상단에 떠있는 작은 팝업화면을 터치하여 전체화면으로 변경 필요<br><br>
		2. 이용하시는 고객사 화면이 아닌 통화중인 화면에 입력한 키패드 숫자가 보이는지 여부 확인<br><br>
		3. T전화 앱 이용 여부 (일반전화 모드로 설정하여 이용 권유)<br><br>
		4. #버튼 함께 클릭 여부 (#버튼 누를경우 통화 종료됨)<br><br>
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
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라<br> 데이터 통화료가 부과 될 수 있습니다.</div>
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