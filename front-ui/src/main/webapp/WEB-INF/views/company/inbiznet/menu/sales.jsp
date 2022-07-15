<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>


<tag:layout>
<div class="page-contents">

	<div class="page-contents-top-logo main-page">
	</div><!-- 상단 로고 공통 서브페이지에서는 main-page 클래스를 삭제하세요 -->
<!-- 여기서 부터 본문내용 -->
		<div class="page-contents-top-logo main-page-comment" style="font-family: 'Nanum Gothic', sans-serif;">제휴문의를 하고싶어요</div>
 	<div class="contents">

	     <div class="btn-common-wrap">
	     	<div class ="contact">
			<form name="ContactUs">
			<font style="color:red; font-size: 12px; margin-bottom: 10px">* 표시는 필수 입력 사항입니다.</font>
		      <input type="text" class="userManageInput" id="userCompanyName" name="userCompanyName" autocomplete="off" placeholder="*회사명">
					<input type="text" class="userManageInput" id="userName" name="userName" autocomplete="off" placeholder="&nbsp;담당자 이름" >
					<input type="text" class="userManageInput" id="userEmail" name="userEmail" autocomplete="off" placeholder="*이메일주소"  >
					<input type="text" class="userManageInput" id="userPhoneNo" name="userPhoneNo" autocomplete="off" placeholder="*전화번호" >
	 				<textarea rows="10" cols="40" class="userManageInputMassage" id="message" name="usermessage" autocomplete="off" placeholder="&nbsp;메세지"></textarea>
 			</form>
		             <div class="btn-common-label2">인비즈넷 영업팀 <br>02-3471-6300 <br>inbiznet@inbiznetcorp.com</div>
 			</div>
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

        <button type="button" class="btn-end-call" onclick = "fnEndPage()" >
        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
        </button>
    </div>
</div>
</footer>
<!--- //하단 공통 -->


<script type="text/javascript">

function isNull(obj) {
    if (obj === null || obj === undefined || obj === "" || obj === "undefined")
        return true;
    else
        return false
}
function isNotNull(obj) {
    return !isNull(obj);
}

function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/Sales/retry.do",
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


function fnProcUniqIdChk(){

 	var form 				= $("[name=ContactUs]");
	var userCompanyName 	= form.find("[name=userCompanyName]").val();
	var userEmail 			= form.find("[name=userEmail]").val();
	var userPhoneNo 		= form.find("[name=userPhoneNo]").val();
	var usermessage 		= form.find("[name=usermessage]").val();

	if( isNull(userCompanyName) ){
		alert ("회사명을 입력해 주세요.");
		$("[name=userCompanyName]").focus();
	}
 	else if( isNull(userPhoneNo)){
 		alert ("전화번호를 입력해 주세요.");
		$("[name=userPhoneNo]").focus();
	}else if( isNull(userEmail) ){
		alert ("이메일을 입력해 주세요.");
		$("[name=userEmail]").focus();
	} else {
		$.ajax({
			type:'post',
			data:$("[name=ContactUs]").serialize(),
			dataType : "JSON",
			url:"/company/inbiznet/sendmail.do",
			success:function(data){
				console.log(" 전송성공 ");
				Location.reload();
				}
		})
	};
}

function fnEndPage() {
	location.href = '/company/inbiznet/end.do';
}
</script>

</tag:layout>