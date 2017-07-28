<%-- 
    Document   : settings
    Created on : 19 Jul, 2017, 8:01:13 AM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
  <title>User Settings</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    .row.content {height: 550px}
        .sidenav {
      background-color: black;
      height: 100%;
    }
     @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Care Hospital</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Dashboard</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="http://localhost:8080/careHospital/delete">Delete Account</a></li>
        <li><a href="#">Delete Record</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Care Hospital</h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Dashboard</a></li>
        <li><a href="#section2">Profile</a></li>
        <li><a href="http://localhost:8080/careHospital/delAcc">Delete Account</a></li>
        <li><a href="http://localhost:8080/careHospital/delete">Delete Record</a></li>
      </ul><br>
    </div>
       <br>
    
    <div class="col-sm-9">
      <div class="well">
        <span>Welcome, <strong><%=request.getParameter("user")%></strong></span><br>
              </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4>Profile</h4>
             <a href="#">
          <span class="glyphicon glyphicon-sunglasses"></span>
        </a>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Delete Record</h4>
            <a href="http://localhost:8080/careHospital/delete">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
             
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Delete Account</h4>
            <a href="#">
          <span class="glyphicon glyphicon-remove-circle"></span>
        </a>
          </div>
        </div>
       
      </div>
    </div>
  </div>
</div>
</body>
</html> 
