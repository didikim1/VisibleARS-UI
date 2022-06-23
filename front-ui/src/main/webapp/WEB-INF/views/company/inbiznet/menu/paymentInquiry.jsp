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
       	결제문의를 하고싶어요
      </div>
      <div class="subcomment">
     	 ARS인증이 아닌 결제 승인 및 고객정보 관련한 문의는<br> 해당 카드사로 문의해주시기 바랍니다.
		</div>
     <div class="btn-common-wrap">
         <a href="#" class="btn-common-counseling">
             <img src="/company/basic/image/resize/counseling.png" onclick="fnOpenRegisterPage()"style="cursor: pointer;">
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
	Swal.fire({
		  title: '고객사선택',
		  icon: 'question',
		  html:
		    ' ' +
		    '<select style= width:100%;>'+
		  	'<option>김다혜</option>'+
		  	'<option>박지혜</option>'+
		  	'<option>장인제</option>'+
		  	'<option>최령</option>'+
		  	'<option>전효성</option>'+
		  	'</select> ' +
		    '',
		  showCloseButton: true,
		  showCancelButton: true,
		  focusConfirm: false,
		  confirmButtonText:
		    '연결',
		  confirmButtonAriaLabel: 'Thumbs up, great!',
		  cancelButtonText:
		    '닫기',
		  cancelButtonAriaLabel: 'Thumbs down'
		}).then(function(isConfirm) {
		      if (isConfirm) {
		          alert("확인")
		        } else {
		          alert("확인아님")
		        }
		})
}

function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/paymentInquiry/retry.do",
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


</tag:layout>