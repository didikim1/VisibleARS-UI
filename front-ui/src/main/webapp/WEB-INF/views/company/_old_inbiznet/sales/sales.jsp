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
              <img class="card-img-top" src="/ars/20211230/006.png" style="width: 100px;">
            </div>
            <div class="col-8 col-md-6 align-items-center pt-3">
              <h2>서비스</h2>
              2채널 ARS 도입 문의는 <br/>`02-3471-6300` 으로 문의 부탁드립니다. 
            </div>
          </div>
        </div>

        <div class="container mt-5">
            <div class="row">

                <div class="col-12 sm-4 md-4">
                    <div class="card mb-4 sm-4 box-shadow">
                    

                    <div class="row">
                            <div class="col-6 md-4 mt-2 text-center">
                                <img src="/ars/20211230/016.png" alt="" class="img-rounded img-responsive" style="height: 150px;"/>
                            </div>
                            <div class="col-6 md-2 mt-2">
                                <h4>
                                    장민규</h4>
                                <small><cite title="San Francisco, USA">전략영업팀 상무<i class="glyphicon glyphicon-map-marker">
                                </i></cite></small>
                                <p>
                                    <i class="glyphicon glyphicon-envelope"></i>email@example.com
                                    <br />
                                    <i class="glyphicon glyphicon-globe"></i><a href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
                                    <br />
                                    <i class="glyphicon glyphicon-gift"></i>June 02, 1988</p>
                        </div>
                    </div>
                    
                    <div class="card-body text-center btn-outline-primary">
                        <p class="card-text">서비스 도입문의 연결하기</p>
                    </div>
                   </div>
                   </div> 

                </div>
            </div>
    </main>
</tag:layout>