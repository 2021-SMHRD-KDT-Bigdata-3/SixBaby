<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<body>

      <header class="site-header">
         <div class="container">
            <a href="#" class="branding"> <img
               src="${cpath}/resources/images/logotest.png" alt="" class="logo"
               style="max-width: 150px;">
               <h1 class="site-title" style="color: #E63F39">SixBaby</h1>
            </a>

            <div class="main-navigation">
               <button class="menu-toggle">
                  <i class="fa fa-bars"></i> Menu
               </button>
               <ul class="menu">
                  <li class="menu-item current-menu-item"><a href="main.do">Homepage
                  </a></li>
                  <li class="menu-item"><a href="boardList.do">Community</a></li>
                  <li class="menu-item"><a href="#">Baby Diary </a></li>
                  <li class="menu-item"><a href="#">Voice Recognition
                        Service
                  </a></li>
               </ul>
            </div>

            <div class="mobile-navigation"></div>
         </div>
      </header>
</body>