<%-- 
    Document   : registration
    Created on : 17 Jul, 2017, 12:25:58 AM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        
   
<title>User Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<header class="w3-container w3-teal">
      <h1>User Registration</h1>
</header>

<div class="w3-container w3-half w3-margin-top">

<form class="w3-container w3-card-4" action="http://localhost:8080/careHospital/createAccount" method="post">

<p>
<input class="w3-input" type="text" name="user" value="" style="width:90%" required>
<label>Name</label></p>
<p>
<input class="w3-input" type="password" name="pass" value="" style="width:90%" required>
<label>Password</label></p>

<p>
<button class="w3-button w3-section w3-teal w3-ripple"> Register </button></p>

</form>
    <div class="container">
    <p>Already have an account ....?<a href="login.jsp"> Click to Login </a></p>
</div>


</div>

</body>
</html> 

