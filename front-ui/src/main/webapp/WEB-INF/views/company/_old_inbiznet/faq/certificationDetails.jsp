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
              <h2>인증 내역 변경/취소</h2>
            </div>
          </div>
        </div>

        <div class="container mt-3">
          <div class="row">
            <div class="col-12 col-md-12 align-items-center pt-3">
              ARS인증 시 입력한 정보는 인증 시스템상에는 즉시 반영되나 해당 정보 변경을 위해서는 이용하시는 고객사 고객센터로 연락하여 정보 변경을 요청해주시기 바랍니다.
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