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
          <span class="border btn btn-dark w-30 menu-item" data-src="callerid0559.do"><i class="fa fa-chevron-left" aria-hidden="true"></i>  뒤로</span>
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
              <h2>1588-0559</h2>
              1588-0559 이용 고객사 목록</br/>
            </div>
          </div>
        </div>

        <div class="container mt-3">
          <div class="row">
            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-1" src="/ars/20211230/16447900/img_partners15.jpg" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">신한카드</p>
                </div>
              </div>
            </div>

            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-4" src="/ars/20211230/16447900/img_partners16.png" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">KB국민카드</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-2">
          <div class="row">
            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-3" src="/ars/20211230/16447900/img_partners17.jpg" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">BC카드</p>
                </div>
              </div>
            </div>

            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-5" src="/ars/20211230/16447900/img_partners18.png" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">현대카드</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-2">
          <div class="row">
            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-5" src="/ars/20211230/16447900/img_partners19.jpg" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">현대캐피탈</p>
                </div>
              </div>
            </div>

            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-5" src="/ars/20211230/16447900/img_partners21.jpg" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">KB캐피탈</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-2">
          <div class="row">
            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-5" src="/ars/20211230/16447900/img_partners24.jpg" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">JB우리캐피탈</p>
                </div>
              </div>
            </div>

            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-4" src="/ars/20211230/16447900/img_partners40.png" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">코빗</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-2">
          <div class="row">
            <div class="col-6 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="height: 100px;">
                  <img class="card-img-top mt-5" src="/ars/20211230/16447900/img_lpay.png" style="width: 100px;">
                </div>
                <div class="card-body text-center">
                  <p class="card-text">L.pay</p>
                </div>
              </div>
            </div>

            
          </div>
        </div>


        <footer class="text-muted pt-3 pb-0 fixed-bottom">
          <div class="container d-flex justify-content-between">
            <span class="border btn btn-warning btn-lg w-50 "><i class="fa fa-refresh" aria-hidden="true"></i> 다시듣기</span>
            <span class="border btn btn-dark btn-lg w-50"><i class="fa fa-phone" aria-hidden="true"></i> 통화종료</span>
          </div>
        </footer>
        
      

    </main>
</tag:layout>