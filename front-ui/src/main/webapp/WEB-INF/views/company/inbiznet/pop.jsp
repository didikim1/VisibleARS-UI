<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>
<tag:layout>
		<div class="page-contents">
		 	<div class="contentsPop" id="pop" data-role="popup">
				<form name="FormComtngnrlmber">
						<table class="htable">
							<tr>
								<th scope="col" width="120px"class= "choice">고객사 선택 </th>
								<td>
								<select class="selectMain" name="chargeId">
									<option value="" <c:if test="${Info.chargeId eq ''}">selected</c:if> >선택</option>
										<c:forEach var="charge" items="${ChargeList}" varStatus="status">
											<c:if test="${charge.seq ne '1' }">
												<option value="${charge.seq}" <c:if test="${Info.chargeId eq charge.seq}">selected</c:if> >${charge.name}</option>
											</c:if>
										</c:forEach>
								</select>
								</td>
							</tr>
						</table>
						<button type="button" class="btnContact" onclick="fnOpenRegisterPage(0);">상담원 연결</button>
					</form>
				</div>
			</div>
</tag:layout>

