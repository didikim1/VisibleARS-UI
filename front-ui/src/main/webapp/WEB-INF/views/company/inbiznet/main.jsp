<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
<main role="main">

    <section class="text-center mt-2">
      <div class="row">
        <div class="col-md-12">
          <img class='img-fluid img-responsive center-block' src="/ars/20211230/main_top_002.png" alt="" style="height: 180px;" />
      </div>
    </div>
  </section>

  <div class="album pt-3">
    <div class="container">

      <div class="row">

        <div class="col-6 sm-4 md-4 menu-item" data-src="16447900.html">
          <div class="card mb-4 sm-4 box-shadow">
            <div class="text-center" style="background-color: #3175bf;">
              <img class="card-img-top" src="/ars/20211230/004.png" style="width: 100px;">
            </div>
            <div class="card-body text-center">
              <p class="card-text">1644-7900</p>
            </div>
          </div>
        </div>

        <div class="col-6 sm-4 md-4">
          <div class="card mb-4 box-shadow menu-item" data-src="15880559/15880559.html">
            <div class="text-center" style="background-color: #3175bf;">
              <img class="card-img-top" src="/ars/20211230/004.png" style="width: 100px;">
            </div>
            <div class="card-body text-center">
              <p class="card-text">1588-0559</p>
            </div>
          </div>
        </div>

        <div class="col-6 sm-4 md-4">
          <div class="card mb-4 box-shadow menu-item" data-src="faq/faq.html">
            <div class="text-center" style="background-color: #3175bf;">
              <img class="card-img-top" src="/ars/20211230/005.png" style="width: 100px;">
            </div>
            <div class="card-body text-center">
              <p class="card-text">FAQ</p>
            </div>
          </div>
        </div>

        <div class="col-6 sm-4 md-4">
          <div class="card mb-4 box-shadow menu-item" data-src="sales/sales.html">
            <div class="text-center" style="background-color: #3175bf;">
              <img class="card-img-top" src="/ars/20211230/006.png" style="width: 100px;">
            </div>
            <div class="card-body text-center">
              <p class="card-text">서비스 도입</p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

</main>
</tag:layout>