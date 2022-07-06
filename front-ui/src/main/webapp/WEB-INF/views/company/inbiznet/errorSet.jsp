<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout2>
<div class="page-contents">
<!-- 여기서 부터 본문내용 -->
			<div class="page-contents-top-logo main-page-set" style="font-family: 'Nanum Gothic', sans-serif;">설정페이지</div>
				<div class="errorSetPage">
					<p><input type="radio" name="errorset"  value="CODE_INTRO-1-1" id="errorsetValue" checked> <label for="a">정상</label></p>
  					<p><input type="radio" name="errorset" 	value="CODE_INTRO-1-2" id="errorsetValue"> <label for="c">화면 에러페이지</label></p>
  					<p><input type="radio" name="errorset"  value="CODE_INTRO-2-1" id="errorsetValue"> <label for="b">ARS 인입시 안내</label></p>
    			</div>
				<div class="set-border">
					<button type="button" class="setButton" onclick="fnErrorSetValue()">확인</button>
				</div>
				<div class="counselerNowNumber">
				현재 상담원 번호 :  ${counsellorNumber}
				</div>

				<div class="counselerNumber">
				<input type="text" name ="counsellor" id="counsellor" placeholder="상담원 번호">
				<button type="button" class="counselerButton" onclick="fnCounseler()">변경</button>
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

function fnCounseler() {

	var textBox =document.getElementById("counsellor");

	$.ajax({
		type : 'post',
		url : "/company/inbiznet/counsellor.do",
		data: { 'counsellor' : $("input[name='counsellor']").val()},
		success : function(data) {
				// alert("상담원 번호가 [ " + textBox.value + " ]로 변경되었습니다.");
				Swal.fire ({html: "상담원 번호가 ["+ textBox.value+ '] 로 변경 되었습니다.'})
				}
		})
}


function fnErrorSetValue() {
	var errorValue = $("input[name='errorset']:checked").val();
	var errorText  = $("input[name='errorset']:checked").next("label").text();

	$.ajax({
		type : 'post',
		url : "/company/inbiznet/errorSet.do",
		data: { 'errorset' : $("input[name='errorset']:checked").val()},
		success : function(data) {
				var _errorValue = errorValue;
				var _errorText 	= errorText;

				Swal.fire({html: "[ " + _errorText+' ] 상태로 변경 되었습니다.'})
			}
		})
}

/*
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
*/
$(document).ready(function(){
	/*
	setTimeout(function(){
		fnreplay();
	}, 300);
	*/
})




</script>

</tag:layout2>