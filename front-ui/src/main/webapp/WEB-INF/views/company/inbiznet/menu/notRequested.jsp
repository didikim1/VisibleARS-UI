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
       	요청하지 않은 <br>인증 전화가 걸려왔어요 
      </div>
      <div class="subcomment">
     	 ARS인증은 본인이 요청한 것이 맞는지 <br> 보안강화를 위하여 진행하는 본인인증 단계입니다. <br>
     	 요청하지 않은 전화가 걸려 왔을경우 정보를 입력하지 않으시면<br> 본인확인이 되지 않으므로 안심하셔도 됩니다. <br>계속 요청하지 않은 전화가 온다면 해당 고객사로 확인하시기 바랍니다.
     	 </div>
     	 <div class="homePage">
     	 <img src="/company/basic/image/resize/expand-arrows.png" style="cursor: pointer;">
     	<a class= "hometag" href="http://inbiznetcorp.com/FAQ/" style="color:#084298; text-align: center;">인비즈넷 홈페이지 바로가기 </a>
     	 </div>

     <div class="btn-common-wrap">
         <a href="#" class="btn-common-counseling">
             <img src="/company/basic/image/resize/counseling.png" style="cursor: pointer;">
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


<script type="text/javascript">

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