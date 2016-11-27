<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img 
  {
      width: 70%;
      margin: auto;
  }
  </style>

</head>

<body>

<nav class="navbar navbar-default">

  <div class="container-fluid">
  
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to home shopping</a>
    </div>
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">HOME</a></li>
      <li><a href="aboutus">ABOUT US</a></li>
      <li><a href="">CONTACT US</a></li> 
      <li><a href="admin">ADMIN</a></li>
      <li><a href="register">REGISTER</a></li>
      <li><a href="login">SIGN IN</a></li> 
    </ul>
    
  </div>
  
</nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="resources/ByshopPrimaryHalf.jpg"/>" alt="Choose">
    </div>

    <div class="item">
      <img src="<c:url value="resources/HabitatSpectrum.jpg"/>" alt="Chania">
    </div>

    <div class="item">
      <img src="<c:url value="resources/JennyWalsh.jpg"/>" alt="Flag">
       <div class="carousel-caption">
        <p>Don't watch the clock; do what it does. Keep going ....</p>
    </div>
    </div>
    
     <div class="item">
      <img src="<c:url value="resources/Koziol.jpg"/>" alt="Chania">
    </div>
    
     <div class="item">
      <img src="<c:url value="resources/Normann.jpg"/>" alt="Chania">
    </div>
   </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
</html>