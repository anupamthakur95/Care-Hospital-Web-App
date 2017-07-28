<%-- 
    Document   : profile
    Created on : 17 Jul, 2017, 7:36:05 AM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>

<form action="http://localhost:8080/careHospital/pPortal" method="post" class="w3-container w3-card-4  w3-text-red w3-margin" >
<h2 class="w3-center"> <span><strong>Profile</strong></span><br></h2>
 
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px" ><i class="w3-xxlarge fa fa-user"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-animate-input" type="text" style="width:30%" name="name" type="text" placeholder="Name" value="">
    </div>
</div>
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-line-chart"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-animate-input" type="text" style="width:30%" name="age" type = "text" placeholder="Age" value="">
    </div>
</div>

<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-male"></i></div>
    <div class="w3-rest">
     <select class="w3-select" style="width:30% "  name="gender">
    <option value="" disabled selected>Gender</option>
    <option value="male">Male</option>
    <option value="female">Female</option>
      </select>
    </div>
</div>
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-animate-input" type="text" style="width:30%" name="email" type="email" placeholder="Email" value="">
    </div>
</div>
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-mobile-phone"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-animate-input" type="text" style="width:30%" name="mobno" type="text" placeholder="Mobile Number" value="">
    </div>
</div>
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-home"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-animate-input" type="text" style="width:30%" name="place" type="text" placeholder="Place" value="">
    </div>
</div>
<p class="w3-center">
<button class="w3-button w3-section w3-blue w3-ripple"> Save </button>
</p>
</form>

</body>
</html> 

