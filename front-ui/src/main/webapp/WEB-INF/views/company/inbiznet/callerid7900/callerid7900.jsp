<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
  <body>
    <!-- https://www.flaticon.com/search?word=faq -->
    <!--https://www.flaticon.com/kr/?&esl-k=google-ads%7cng%7cc549335758723%7cmp%7ck%2B%EB%AC%B4%EB%A3%8C%20%2B%EC%95%84%EC%9D%B4%EC%BD%98%7cp%7ct%7cdc%7ca121798090048%7cg12057876146&gclid=CjwKCAiAzrWOBhBjEiwAq85QZwWnns-z1KUf2iiQOFD0IMyEb0loUhtHYUMFDE31LkoJtCkPLAoYGxoC_B4QAvD_BwE&gclsrc=aw.ds-->
    <header>
      <div class="navbar navbar-dark bg-dark box-shadow fixed-top">
        <div class="container d-flex justify-content-between">
          <a href="/company/inbiznet/Main.do" class="navbar-brand d-flex align-items-center">
            <strong>INBIZNET 고객센터</strong>
          </a>
          <span class="border btn btn-dark w-30 menu-item" data-src="/company/inbiznet/Main.do"><i class="fa fa-chevron-left" aria-hidden="true"></i>  뒤로</span>
        </div>
      </div>  
    </header>

    <main role="main">

      <div class="container" style="height: 70px;"></div>
      <div class="container mt-10">
        <div class="row">
          <div class="col-12 col-md-10 text-center">
            <img class='img-fluid img-responsive center-block' src="/ars/20211230/001.gif" alt="" style="height: 95px;" />
          </div>
        </div>
      </div>
        <div class="container">
          <div class="row">
            <div class="col-4 col-xs-6 col-md-6">
              <img class="card-img-top" src="/ars/20211230/004.png" style="width: 100px;">
            </div>
            <div class="col-8 col-md-6 align-items-center pt-3">
              <h2>1644-7900</h2>
              인비즈넷(주) ARS 인증 대표 발신 번호입니다</br>
            </div>
          </div>
        </div>

        <div class="container">
          <div class="row">
            <div class="col-12 sm-4 md-4 mt-2">
              <div class="d-flex justify-content-between box-shadow">
                <div class="col-12">
                  ARS 인증 서비스를 제공받는 고객사의 ARS인증을 사용하는 경우 1644-7900으로<br/> 전화가 걸려옵니다.</br/>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-2">
          <div class="row">
            <div class="col-6 sm-4 md-4 menu-item" data-src="customers.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="background-color: #3175bf; cursor: pointer;">
                  <img class="card-img-top" src="/ars/20211230/007.png" style="width: 100px; cursor: pointer;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">고객사 확인하기</p>
                </div>
              </div>
            </div>

            <div class="col-6 sm-4 md-4 menu-item" data-src="noAnswer.do">
              <div class="card mb-4 box-shadow">
                <div class="text-center" style="background-color: #3175bf; cursor: pointer;">
                  <img class="card-img-top" src="/ars/20211230/008.png" style="width: 100px;cursor: pointer;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">전화가 안와요</p>
                </div>
              </div>
            </div>
          </div>
        </div>
</main>
</tag:layout>