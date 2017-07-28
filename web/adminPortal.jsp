<%-- 
    Document   : adminPortal
    Created on : 20 Jul, 2017, 10:57:30 PM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Admin Portal</title>
    </head>
    <body>
        <% 
 response.setHeader("cache-control","no-cache,no-store,must-revalidate"); 
        
        %>
        
            <div>
        <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container">
          <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">CARE HOSPITALS Pvt. Ltd.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="">Process Appointments</a></li>
        <li><a href="logout.jsp">LogOut</a></li>
         <li><a href="#"></a></li>
      </ul>
    </div>
  </div>
</nav>
            </div>
        
        
        
    </body>
</html>
