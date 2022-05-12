<%@ tag language="java" pageEncoding="UTF-8"%><%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@ attribute name="activePageIndex" required="false"%>
<%@ attribute name="bodyClass" required="false"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>
<c:set var="Ver"  value="202200502_001" scope="application"/>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    
	
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Album example for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="/ars/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->

    <link href="/ars/album.css" rel="stylesheet">


  </head>

</head>
  <body>
    <!-- https://www.flaticon.com/search?word=faq -->
    <header>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="#" class="navbar-brand d-flex align-items-center">
           <img src="/company/basic/image/home.png">
            <strong>INBIZNET 고객센터 - 보이는 ARS</strong>
          </a>
        </div>
      </div>
    </header>


	<jsp:doBody/>

 <footer class="text-muted pt-3 pb-0">
     <div class="container d-flex justify-content-between">
       <span class="border btn btn-success w-50 "><i class="fa fa-refresh" aria-hidden="true"></i>다시듣기</span>
       <span class="border btn btn-dark w-50 "><i class="fa fa-phone" aria-hidden="true"></i>통화종료</span>
     </div>
 </footer>
  <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/ars/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="/ars/assets/js/vendor/popper.min.js"></script>
    <script src="/ars/dist/js/bootstrap.min.js"></script>
    <script src="/ars/assets/js/vendor/holder.min.js"></script>
    <script src="/ars/common.js"></script>
  </body>
</html>

