<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
 <body>
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
              <img class="card-img-top" src="/ars/20211230/005.png" style="width: 100px;">
            </div>
            <div class="col-8 col-md-6 align-items-center pt-3">
              <h2>ARS 인증 FAQ</h2>
              자주 문의하시는 문의사항을 안내해드립니다. 더 많은 정보는 홈페이를 이용해주세요.</br/>
            </div>
          </div>
        </div>

        <!-- Card container-->
        <div class="container mt-3">
          <div class="row">
            <div class="col-6 sm-4 md-4 menu-item" data-src="/company/inbiznet/noAnswer.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/008.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">전화가 <br/>걸려오지않아요.</p>
                </div>
              </div>
            </div>
            <div class="col-6 sm-4 md-4 menu-item" data-src="kypdRcgnt.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/011.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">키패드 인식문의</p>
                </div>
              </div>
            </div>
          </div>  <!--row -->
        </div>
        <!-- //Card container-->

        <!-- Card container-->
        <div class="container mt-3">
          <div class="row">
            <div class="col-6 sm-4 md-4 menu-item" data-src="overseasUsageGuide.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/012.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">해외 이용안내</p>
                </div>
              </div>
            </div>
            <div class="col-6 sm-4 md-4 menu-item" data-src="cardInfoChange.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/013.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">카드 정보 변경</p>
                </div>
              </div>
            </div>
          </div>  <!--row -->
        </div>
        <!-- //Card container-->

        <!-- Card container-->
        <div class="container mt-3">
          <div class="row">
            <div class="col-6 sm-4 md-4 menu-item" data-src="clientInfoChange.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/014.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">고객 정보 변경</p>
                </div>
              </div>
            </div>
            <div class="col-6 sm-4 md-4 menu-item" data-src="certificationDetails.do">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/015.png" style="width: 100px;">
                </div>
                <div class="card-body text-center" style="height: 88px;">
                  <p class="card-text">인증 내역 <br/>변경/취소</p>
                </div>
              </div>
            </div>
          </div>  <!--row -->
        </div>
        <!-- //Card container-->

        <footer class="text-muted pt-3 pb-0 fixed-bottom">
          <div class="container d-flex justify-content-between">
            <span class="border btn btn-warning btn-lg w-50 "><i class="fa fa-refresh" aria-hidden="true"></i> 다시듣기</span>
            <span class="border btn btn-dark btn-lg w-50"><i class="fa fa-phone" aria-hidden="true"></i> 통화종료</span>
          </div>
        </footer>
        
      

    </main>
</tag:layout>