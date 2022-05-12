<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
 <div data-role="page" id="home">
           <div class="logoimage" ><img src="image/resize/inbiznet.png" ></div> 
        <header>
  			<div class="header" >
          <span class="border btn btn-dark w-30 menu-item" data-src="/company/inbiznet/Main.do"><i class="fa fa-chevron-left" aria-hidden="true"></i> 뒤로</span>
        </div>
    </header>
    
    <div class="headersub" >
        INBIZNET 고객센터 - 보이는 ARS
    </div>
    
    
    <div data-role="content">

                    <div class="pt-menu">
                        <a data-theme="d" data-corners="false" data-role="button" href="#profile" >
                            <img src="image/resize/main_number.png" >
                            <p>1644-7900</p>
                        </a>

                        <a data-theme="d" data-corners="false" data-role="button" href="#portfolio">
                            <img src="image/resize/main_number.png">
                            <p>1588-0559</p>
                        </a>

                        <a data-theme="d" data-corners="false" data-role="button" href="#social">
                            <img src="image/resize/faq.png" >
                            <p>FAQ</p>
                        </a>

                        <a data-theme="d" data-corners="false" data-role="button" href="#contact">
                            <img src="image/resize/contact_us.png">
                            <p>CONTACT US</p>
                        </a>
            </div>
    </div>

</div>
</tag:layout>