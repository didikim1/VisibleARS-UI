<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/company/inbiznet"%>
<c:set var="_url" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application"/>

<tag:layout>
<div data-role="page" id="profile" data-title="profile">
   <div data-role="header">
       <h1>My Profile</h1>
       <a data-role="button" href="#home" data-icon="home" data-corners="false">Home</a>
   </div>
   <div data-role="content">

       <!-- profile image -->
       <img src="/company/inbiznet/images/icons/avatar/m_10.png" alt="mee" />

       <!-- my profile -->
       <div data-role="collapsible-set">

           <div data-role="collapsible" data-corners="false" class="ui-corner-none" data-collapsed="false">
               <h2 class="ui-collapsible-heading"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                   <span class="ui-btn-text">Personal Profile</span>
               </a></h2>
               <div class="ui-body ui-body-d ui-textalign-left">

                   <!-- profile fields -->
                   <div class="tablerow">
                       <div class="left-table">Name:</div>
                       <div class="right-table">Joe Bloggs</div>
                   </div>
                   <div class="tablerow">
                       <div class="left-table">Age:</div>
                       <div class="right-table">27</div>
                   </div>
                   <div class="tablerow">
                       <div class="left-table">Gender:</div>
                       <div class="right-table">Male</div>
                   </div>
                   <div class="tablerow">
                       <div class="left-table">Location:</div>
                       <div class="right-table">USA</div>
                   </div>
                   <div class="tablerow">
                       <div class="left-table">Job:</div>
                       <div class="right-table">Web Monkey</div>
                   </div>
                   <div class="tablerow">
                       <div class="left-table">Bio:</div>
                       <div class="right-table">I work full time as a Web Developer and I love making new and exciting websites.</div>
                   </div>

               </div>
           </div>

           <!-- my skills -->
           <div data-role="collapsible" data-corners="false" class="ui-corner-none">
               <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                   <span class="ui-btn-text">Skills & Experience</span>
               </a></h2>
               <div class="ui-body ui-body-d ui-textalign-left">

                   <div data-role="collapsible-set">

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">JavaScript</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               JavaScript (sometimes abbreviated as JS) is a scripting language commonly implemented as part of a web browser in order to create enhanced user interfaces and dynamic websites. <a href="http://en.wikipedia.org/wiki/JavaScript">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">jQuery</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               jQuery is a multi-browser JavaScript library designed to simplify the client-side scripting of HTML.[1] It was released in January 2006 at BarCamp NYC by John Resig. It is currently developed by a team of developers led by Dave Methvin. Used by over 55% of the 10,000 most visited websites, jQuery is the most popular JavaScript library in use today.[2][3] <a href="http://en.wikipedia.org/wiki/jQuery">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">jQuery Mobile</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               jQuery Mobile is a touch-optimized web framework (additionally known as a JavaScript library or a mobile framework) currently being developed by the jQuery project team. The development focuses on creating a framework compatible with a wide variety of smartphones and tablet computers,[2] made necessary by the growing but heterogeneous tablet and smartphone market.[3] <a href="http://en.wikipedia.org/wiki/JQuery_Mobile">Wiki</a>
                           </div>
                       </div>

                   </div>
               </div>
           </div>


           <!-- my employment -->
           <div data-role="collapsible" data-corners="false" class="ui-corner-none">
               <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                   <span class="ui-btn-text">Employment History</span>
               </a></h2>
               <div class="ui-body ui-body-d ui-textalign-left ui-corner-none" data-corners="false">

                   <div data-role="collapsible-set" class="ui-corner-none" data-corners="false">

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">2012 - 2013: Microsoft</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               Microsoft Corporation is an American multinational software corporation headquartered in Redmond, Washington that develops, manufactures, licenses and supports a wide range of products and services related to computing. The company was founded by Bill Gates and Paul Allen on April 4, 1975. Microsoft is the world's largest software maker measured by revenues.[3] It is also one of the world's most valuable companies.[4] <a href="http://en.wikipedia.org/wiki/Microsoft">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">2010 - 2012: Google</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                                Google Inc. (NASDAQ: GOOG) is an American multinational corporation that provides Internet-related products and services, including internet search, cloud computing, software and advertising technologies.[6] Advertising revenues from AdWords generate almost all of the company's profits.[7][8] <a href="http://en.wikipedia.org/wiki/Google">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">2008 - 2010: Intel</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                                Intel Corporation (NASDAQ: INTC) is an American multinational semiconductor chip maker corporation headquartered in Santa Clara, California. Intel is the world's largest and highest valued semiconductor chip maker, based on revenue.[3] It is the inventor of the x86 series of microprocessors, the processors found in most personal computers. <a href="http://en.wikipedia.org/wiki/Intel">Wiki</a>
                           </div>
                       </div>
                   </div>
               </div>
           </div>

           <div data-role="collapsible" data-corners="false" class="ui-corner-none">
               <h2 class="ui-collapsible-heading"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                   <span class="ui-btn-text">Interests & Hobbies</span>
               </a></h2>
               <div class="ui-body ui-body-d ui-textalign-left ui-corner-none" data-corners="false">

                   <div data-role="collapsible-set" class="ui-corner-none" data-corners="false">

                       <!-- interests & hobbies -->
                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">Fishing</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               Fishing is the activity of trying to catch fish. Fish are normally caught in the wild. Techniques for catching fish include hand gathering, spearing, netting, angling and trapping. <a href="http://en.wikipedia.org/wiki/Fishing">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">Swimming</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               Human swimming is the self propulsion of a person through water or other liquid, for survival, recreation, sport, exercise or other reason. Locomotion is achieved through co-ordinated movement of the limbs, the body, or both. Humans are able to hold their breath underwater and undertake rudimentary locomotive swimming within weeks of birth, as an evolutionary response.[1] <a href="http://en.wikipedia.org/wiki/Human_swimming">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">8 Ball</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               Eight-ball (often spelled 8-ball or eightball, and sometimes called spots and stripes, stripes and solids or, more rarely, bigs and littles or highs and lows) is a pool (pocket billiards) game popular in much of the world, and the subject of international professional and amateur competition.  <a href="http://en.wikipedia.org/wiki/8_ball">Wiki</a>
                           </div>
                       </div>

                       <div data-role="collapsible" data-corners="false" class="ui-corner-none">
                           <h2 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-d" href="#" data-corners="false" data-shadow="false" data-iconshadow="true" data-icon="plus" data-iconpos="left" data-theme="d">
                               <span class="ui-btn-text">Swimming</span>
                           </a></h2>
                           <div class="ui-body ui-textalign-left">
                               An acoustic guitar is a guitar that uses only an acoustic sound board to help transmitting the strings' vibrational energy to the air in order to produce a sound. The initial timbre and harmonics of the sound in an acoustic guitar are produced by the plucking of the string. <a href="http://en.wikipedia.org/wiki/Acoustic_guitar">Wiki</a>
                           </div>
                       </div>

                   </div>

               </div>
           </div>

       </div>

       <div class="ui-body">
           <!-- previous page link -->
<!--                     <a class="previous-btn" data-theme="c" data-corners="false" data-role="button" data-inline="true" data-icon="arrow-l" href="#home">
                        <img src="/company/inbiznet/images/icons/round/64x64/home.png" alt="rss" style="display: block; margin: 0 auto">
                        Home
                    </a> -->

           <!-- next page link -->
           <a class="next-btn" data-theme="c" data-corners="false" data-role="button" data-inline="true" data-icon="arrow-r" data-iconpos="right" href="#portfolio">
               <img src="/company/inbiznet/images/icons/round/64x64/portfolio.png" alt="rss" style="display: block; margin: 0 auto">
                Portfolio
            </a>
        </div>

    </div>
    <div data-role="footer">
        <h2>Mobile Portfolio</h2>
        <p class="copyright">&copy; Copyright 2013</p>
    </div>
</div>
</tag:layout>