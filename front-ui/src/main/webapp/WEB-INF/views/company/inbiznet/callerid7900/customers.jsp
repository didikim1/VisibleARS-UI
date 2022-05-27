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
       1644-7900
      </div>
      <div class="subcomment">
     	 1644-7900이용 고객사 목록</br>
     	 </div>
     	 <div class="thirdcomment">
     	 자체 대표 발신번호를 사용하는 고객사는 제외하였습니다. 
		</br>더 많은 고객사가 궁금하시다면 인비즈넷 홈페이지를 방문해주세요</br>
     	 </div>
		    
     <div class="btn-common-customers-wrap">
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/BC_card.png" >
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->

         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/DGB_capital.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/HD_capital_crop.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/HD_card_crop.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/JB_capital.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/KB_capital.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/KB_card.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->
         
         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/korbit.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->

         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/Lpay_crop.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->

         <a href="#" class="btn-common-customers">
             <img src="/company/basic/image/16447900_partners/SH_card.png">
             <div class="btn-common-customers-label"></div>
         </a><!-- button -->

     </div><!-- btn-common-wrap -->

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
<div class="mt-auto">
    <div class="d-flex justify-content-center align-items-center bottom-info-text">※ 보이는ARS를 이용하시면 가입하신 요금제에 따라</br> 데이터 통화료가 부과 될 수 있습니다.</div>
    <div class="d-flex border-top border-1 border--bebebe">
        <button type="button" class="btn-replay" onclick="fnreplay()">
        	<img src="/company/basic/image/icon-btn-replay.svg">다시듣기
        </button>

        <button type="button" class="btn-end-call"onclick = "location.href = '/company/inbiznet/hangup.do';">
        	<img src="/company/basic/image/icon-btn-end-call.svg">통화종료
        </button>
    </div>
</div>
<!--- //하단 공통 -->


<script>
function fnreplay() {
	$.fun.ajax({
		type : 'post',
		url : "/company/inbiznet/ttsKey/Customer7900/retry.do",
		contentType:"application/json",
		success : function(data) {
					console.log(" 성공 ");
				}
			})
		}
</script>


</tag:layout>

