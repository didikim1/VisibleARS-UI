<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout2>
<div class="page-contents">
<!-- 여기서 부터 본문내용 -->
	     <div class="movingCall">
        	<img src="/company/basic/image/phone-call.png">
	   	 </div><!-- btn-common-wrap -->
		<div class="page-contents-top-logo calling-page-comment"  id="callStatus" style="font-family: 'Nanum Gothic', sans-serif;">상담원과 통화시도중입니다.<br></div>
	   	<div class="page-contents-top-logo calling-page-timer" id="timer"style="font-family: 'Nanum Gothic', sans-serif;"> </div>  
	   <!-- 	<div class="page-contents-top-logo calling-page-timer" style="font-family: 'Nanum Gothic', sans-serif;"> 통화시간 : <span id="count-up"></span></div>  -->
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
	
	var hour				= 0;
	var min    				= 00;
	var second 				= 00;
	var zeroPlaceholderMin 	= 0;
	var zeroPlaceholderSec 	= 0;
	var counterId = setInterval(function(){countUp();}, 1000);
	
    function countUp () {
        second++;
        if(second == 59){
          second = 00;
          min = min + 1;
        }
        if(min == 59){
       	 min = 00;
       	 hour = hour + 1;
        }
        if(min == 10 ){
       	 zeroPlaceholderMin = '';
        }
        else if (min == 00){
       	 zeroPlaceholderMin = 0;
        }
        if(second == 10 ){
       	 zeroPlaceholderSec = '';
            
        }else if(second == 00){
            zeroPlaceholderSec = 0;
        }

       document.getElementById("count-up").innerText = hour + ':'+zeroPlaceholderMin+min+':'+zeroPlaceholderSec+second;
//        document.getElementById("count-up").style.display  = hour + ':'+zeroPlaceholderMin+min+':'+zeroPlaceholderSec+second;
		
    }
	
	
	$(document).ready(function(){
	
		$.ajax({
			type : 'post',
			url : "/company/inbiznet/dial.do",
			contentType:"application/json",
			success : function(data) {
						if(data.code == "404"){
							alert("상담원이 부재중입니다.")
						}else{
							$("#callStatus").text("상담원과 통화중입니다. ")
							$("#timer").append('<span id="count-up"> 0:00:00 </span>')
								
						}
				}
		})
	})


     

</script>

</tag:layout2>