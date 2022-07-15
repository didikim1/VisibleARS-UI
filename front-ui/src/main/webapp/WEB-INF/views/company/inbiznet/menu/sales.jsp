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
	<div class="maincomment">제휴문의를 하고싶어요</div>
 		<div class="contents">
	     <div class="btn-common-wrap">
	     	<div class ="contact">
			<form name="ContactUs">
			<font style="color:red; font-size: 12px; margin-bottom: 10px">* 표시는 필수 입력 사항입니다.</font>
		      <input type="text" class="userManageInput" id="userCompanyName" name="userCompanyName" autocomplete="off" placeholder="*회사명">
					<input type="text" class="userManageInput" id="userName" name="userName" autocomplete="off" placeholder="&nbsp;담당자 이름" >
					<input type="text" class="userManageInput" id="userPhoneNo" name="userPhoneNo" autocomplete="off" 
						oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="*전화번호 (숫자만 입력)" >
					<input type="text" class="userManageInput" id="userEmail" name="userEmail" autocomplete="off" placeholder="*이메일주소"  >
	 				<textarea rows="10" cols="40" class="userManageInputMassage" id="message" name="usermessage" autocomplete="off" placeholder="&nbsp;메세지"></textarea>
	 				<button type="button" class="contactButton" value="문의하기" onclick="fnProcUniqIdChk()">문의하기</button>
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


function fnRegExpChk(str, regExp) {
    if(regExp.test(str)) {
        return true;
    }else{
        return false;
    }
}

function fnProcUniqIdChk(){
	
	var mailRegExp 			= /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;  					// 	이메일 체크

 	var form 				= $("[name=ContactUs]");
	var userCompanyName 	= form.find("[name=userCompanyName]").val();
	var userEmail 			= form.find("[name=userEmail]").val();
	var userPhoneNo 		= form.find("[name=userPhoneNo]").val();
	var usermessage 		= form.find("[name=usermessage]").val();

	if( isNull(userCompanyName) ){
		Swal.fire ({html: "회사명은 필수 입력 사항입니다."}).then(function(){
			 $("input[name='userCompanyName']").focus();
		})
	} else if( isNull(userPhoneNo)){
 		Swal.fire ({html: "전화번호는 필수 입력 사항입니다"}).then(function(){
			$("[name=userPhoneNo]").focus();
		})
	} else if( isNull(userEmail) ){
		Swal.fire ({html: "이메일은 필수 입력 사항입니다."}).then(function(){
			$("[name=userEmail]").focus();
		})
	} else if( !fnRegExpChk (userEmail, mailRegExp) ){
		Swal.fire ({html: "이메일주소를 형식에 맞게 입력해주세요."}).then(function(){
			 $("input[name='userEmail']").focus(); 
		})
	} else {
		$.ajax({
			type:'post',
			data:$("[name=ContactUs]").serialize(),
			dataType : "JSON",
			url:"/company/inbiznet/sendmail.do",
			success:function(data){
				Swal.fire ({html: "문의사항이 전송 되었습니다."}).then(function(){
					location.reload();
				})
			}
		})
	};
}

function fnEndPage() {
	location.href = '/company/inbiznet/end.do';
}
</script>

</tag:layout>