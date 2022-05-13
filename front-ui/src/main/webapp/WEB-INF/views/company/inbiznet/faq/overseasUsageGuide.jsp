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
          <span class="border btn btn-dark w-30 menu-item" data-src="faq.do"><i class="fa fa-chevron-left" aria-hidden="true"></i>  뒤로</span>
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

      <div class="album pt-3">
        
        <div class="container">
          <div class="row">
            <div class="col-4 col-xs-6 col-md-6">
              <img class="card-img-top" src="/ars/20211230/012.png" style="width: 100px;">
            </div>
            <div class="col-8 col-md-6 align-items-center pt-3">
              <h2>해외 이용안내</h2>
            </div>
          </div>
        </div>

        <div class="container mt-3">
          <div class="row">
            <div class="col-12 col-md-12 align-items-center pt-3">
              해외에서도 ARS인증 이용이 가능합니다. 다만 이동통신사업자의 요금 정책에 따라 해외에서 이용 시 별도의 음성 통화요금이 발생할 수 있으므로 원치 않으실 경우 다른 결제방식을 이용해주시기 바랍니다. 또한 간혹 거주 지역에 따라 인증에 실패하는 경우가 있으므로 유의해주시기 바랍니다
            </div>
          </div>
        </div>

        <div class="container mt-3 mb-10">
          <div class="row">
            <div class="col-12 sm-4 md-4">
              <div class="card mb-4 sm-4 box-shadow">
                <div class="text-center" style="background-color: #3175bf;">
                  <img class="card-img-top" src="/ars/20211230/009.png" style="width: 100px;">
                </div>
                <div class="card-body text-center btn-outline-primary">
                  <p class="card-text">상담원 연결하기</p>
                </div>
              </div>
            </div>
          </div>
        </div>
    </main>

</tag:layout>