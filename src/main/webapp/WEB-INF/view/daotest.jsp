daotest.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<title>Bootstrap 4 Website Example</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<style>
#r1{
background: yellow;
}
.fakeimg {
   height: 200px;
   background: #aaa;
}
.container {border:1px solid red; width: 100% !important;}
</style>
</head>
<body>

   <div class="jumbotron text-center" style="margin-bottom: 0">
      <h1>My First Bootstrap 4 Page</h1>
      <p>Resize this responsive page to see the effect!</p>
   </div>

   <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
      <c:url value="/daotest.do" var="iform" />
      <a class="navbar-brand" href="iform">입력</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#collapsibleNavbar">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
         <ul class="navbar-nav">
         
            <c:url value="/list.do" var="iform" />
            <li class="nav-item"><a class="nav-link" href="${iform}">리스트</a></li>

         </ul>
      </div>
   </nav>
   
   <div class="container" style="margin-top: 30px">
      <div class="row" id="r1">
         <div class="col-sm-4">순번zz</div>
         <div class="col-sm-4">이름</div>
         <div class="col-sm-4">나이</div>
      </div>
      <c:forEach var="i" items="${list}">
      <div class="row">
         <div class="col-sm-4">${i.S_NUM}</div>
         <div class="col-sm-4">${i.S_NAME}</div>
         <div class="col-sm-4">${i.S_AGE}</div>
      </div>
      </c:forEach>
   </div>

   <div class="jumbotron text-center" style="margin-bottom: 0">
      <p>Footer</p>
   </div>

</body>
</html>