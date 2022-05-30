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
       Contact Us
      </div>
	     <div class="subcomment">
     	 문의하기</br>
     	 </div>
     <div class="btn-common-wrap-contact">
     	<form name="ContactUs">
     			<font style="color:red; font-size: 12px; margin-bottom: 10px">* 표시는 필수 입력 사항입니다.</font>
				<input type="text" class="userManageInput" id="company" name="userCompanyName" autocomplete="off" placeholder="*회사명" value="" >
				<input type="text" class="userManageInput" id="userName" name="userName" autocomplete="off" placeholder="담당자 이름" value="" >
				<input type="text" class="userManageInput" id="Email" name="userEmail" autocomplete="off" placeholder="*이메일주소" value="" >
				<input type="text" class="userManageInput" id="moblphonNo" name="userPhoneNo" autocomplete="off" placeholder="*전화번호" value="" >
				<input type="text" class="userManageInputMassage" id="message" name="usermessage" autocomplete="off" placeholder="메세지" value="" >

			<button type="button" class="contactButton" value="문의하기" onclick="fncontactUs()">문의하기</button>
		</form>
     </div><!-- btn-common-wrap -->
    </div>

     	<div class="btn-common-sales">
             <div class="btn-common-label-sales">
             		전략영업팀 상무&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font style="font-size: 20px;">장민규</font>
             </div>
             <div class="btn-common-label-sales2">
             		mgjang@inbiznetcorp.com &emsp;010-5031-3085
     		</div>

 </div><!-- contents -->


<!-- 본문내용 끝 -->

</div><!-- page-contents -->

<div class="mt-auto">
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
    <div class="d-flex border-top border-1 border--bebebe">
        <button type="button" class="btn-replay" onclick="fnreplay()">
        	<img src="/company/basic/image/icon-btn-replay.svg">다시듣기
        </button>

        <button type="button" class="btn-end-call"onclick = "location.href = '/company/inbiznet/end.do';">
        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
        </button>
    </div>
</div>
<!--- //하단 공통 -->


<script>
function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/ContactUs/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
				}
			})
		}

function fncontactUs() {
	$.ajax({
		type:'post',
		data:$("[name=ContactUs]").serialize(),
		dataType : "JSON",
		url:"/company/inbiznet/sendmail.do",
		success:function(data){
			console.log(" 전송성공 ");
			}
		})
}
</script>

</tag:layout>