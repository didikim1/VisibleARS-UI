<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
 <div data-role="page" id="home">
    <div data-role="header">
        <h1>Mobile Portfolio</h1>
    </div>
    <div data-role="content">

            <div class="pt-menu">
                <a data-theme="d" data-corners="false" data-role="button" href="/company/inbiznet/profile.do">
                    <img src="/company/inbiznet/images/icons/round/64x64/profile.png" alt="rss" style="display: block; margin: 0 auto">
                    Profile
                </a>

                <a data-theme="d" data-corners="false" data-role="button" href="#portfolio">
                    <img src="/company/inbiznet/images/icons/round/64x64/portfolio.png" alt="rss" style="display: block; margin: 0 auto">
                    Portfolio
                </a>

                <a data-theme="d" data-corners="false" data-role="button" href="#social">
                    <img src="/company/inbiznet/images/icons/round/64x64/linkedin.png" alt="mail" style="display: block; margin: 0 auto">
                    Social
                </a>

                <a data-theme="d" data-corners="false" data-role="button" href="#contact">
                    <img src="/company/inbiznet/images/icons/round/64x64/mail.png" alt="mail" style="display: block; margin: 0 auto">
                    Contact
                </a>
            </div>
    </div>
    <div data-role="footer">
        <h2>Mobile Portfolio</h2>
        <p class="copyright">&copy; Copyright 2013</p>
    </div>
</div>
</tag:layout>