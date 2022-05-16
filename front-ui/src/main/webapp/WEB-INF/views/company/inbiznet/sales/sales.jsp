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
			<td>
				<input type="text" class="userManageInput" id="moblphonNo" name="moblphonNo" autocomplete="off" placeholder="회사명" value="${Info.company}" >
			</td>
			<td>
				<input type="text" class="userManageInput" id="moblphonNo" name="moblphonNo" autocomplete="off" placeholder="담당자 이름" value="${Info.company}" >
			</td>
			</tr>
			<td>
				<input type="text" class="userManageInput" id="moblphonNo" name="moblphonNo" autocomplete="off" placeholder="이메일주소" value="${Info.company}" >
			</td>
			<td>
				<input type="text" class="userManageInput" id="moblphonNo" name="moblphonNo" autocomplete="off" placeholder="전화번호" value="${Info.company}" >
			</td>
			<td>
				<input type="text" class="userManageInputMassage" id="moblphonNo" name="moblphonNo" autocomplete="off" placeholder="메세지" value="${Info.company}" >
			</td>
			
			<button type="button" class="contactButton" value="문의하기">문의하기</button>

     </div><!-- btn-common-wrap -->
     
<!--      <div class="btn-common-wrap">
         <a href="customers.do" class="btn-common-sales">
             <div class="btn-common-label-sales">
             		전략영업팀 상무  &emsp; 장민규 </br>
             		 mgjang@inbiznetcorp.com &emsp;010-5031-3085 
             
             </div>
         </a>button
     	</div> -->
    </div>

 </div><!-- contents -->

<!-- 본문내용 끝 -->

</div><!-- page-contents -->
</tag:layout>