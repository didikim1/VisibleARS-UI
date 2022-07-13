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
		      	기타문의를 하고싶어요
		      	</div>
		     	 <div class="subcomment">
					당사에서 제공하는 서비스 관련한 문의는 아래 ‘상담원 연결하기’ 버튼을 클릭하여 상담 바라며, 그 외 문의는 이용하시는 고객사 고객센터로 연락 부탁드립니다.
	     		 </div>
	    
		      	<div class="homePage">
		            <img src="/company/basic/image/resize/expand-arrows.png" style="cursor: pointer;">
		     		<a class= "hometag" href="http://inbiznetcorp.com/FAQ/"  id ="homePage" style="color:#084298; text-align: center; ">인비즈넷 홈페이지 바로가기 </a>
		     	 </div>
		
		  	   	<div class="btn-common-wrap">
			         <a href="#" class="btn-common-counseling"  id ="counseling">
			             <img src="/company/basic/image/resize/counseling.png" style="cursor: pointer;">
			       		<button class="counseling" >상담원 연결하기</button>
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

        <button type="button" class="btn-end-call" onclick = "fnEndPage()" >
        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
        </button>
    </div>
</div>
</footer>
<!--- //하단 공통 -->


<script>

$().ready(function () {
    $("#homePage").click(function () {

    $.ajax({
  		type : 'post',
  		url : "/company/inbiznet/ttsKey/homePage/retry.do",
  		contentType:"application/json",
  		success : function(data) {
  					if(data.code == "404"){
  						alert("멘트없음")
  						}	else{
							/*
	  					    $.ajax({
	  					  		type : 'post',
	  					  		url : "/company/inbiznet/end.do",
	  					  		contentType:"application/json",
	  					  		success : function(data) {
	  					  					if(data.code == "200"){
	  					  						location.href ='http://inbiznetcorp.com/FAQ/'
		  							}
			  					}
			 	 			})
			 	 			*/
  						}
  				}
 	 	});
 	});
 })

$().ready(function () {
    $("#counseling").click(function () {

	// 상담원 연결
    $.ajax({
  		type : 'post',
  		url : "/company/inbiznet/ttsKey/customerChech/retry.do",
  		contentType:"application/json",
  		success : function(data) {
  					if(data.code == "404"){
  						alert("멘트없음")
  					}else{
  						console.log(" 성공 ");
  					}
  			}
  	})

	swal.fire({
		  title: '고객사선택',
		  icon: 'question',
		  html:
		    ' ' +
		    '<select id="userServiceName" style= width:100%;>'+
		  	'<option value="신한카드">신한카드</option>'+
		  	'<option value="KB국민카드">KB국민카드</option>'+
		  	'<option value="교육청">교육청</option>'+
		  	'<option value="기타">그 외</option>'+
		  	'</select> ' +
		    '',
		    closeOnClickOutside : false,
		    showCancelButton: true,
            confirmButtonText: '상담원 연결',
            cancelButtonText: '취소'
			}).then(function(result) {
           	 if (result.isConfirmed) {
           		var userServiceName = $("#userServiceName").val();
           		 $.ajax({
           	  		type : 'post',
           	  		url : "/company/inbiznet/ttsKey/Contact/retry.do",
           	  		contentType:"application/json",
           	  		success : function(data) {
           	  					if(data.code == "404"){
           	  						alert("멘트없음")
           	  					}else{
	           	  					setTimeout(function(){
           	  					 		location.href = '/company/inbiznet/calling.do?userServiceName='+userServiceName
           	  						},6000)
           	  					}
           	  			}
           	  	})
            }
        })
    });
    
});


function fnreplay() {
	$.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/otherQuestion/retry.do",
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

function fnEndPage() {
	location.href = '/company/inbiznet/end.do';
}
</script>
</tag:layout>