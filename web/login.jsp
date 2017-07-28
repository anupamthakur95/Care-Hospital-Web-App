

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
        <link rel="stylesheet" href="login.css">
         <link rel="stylesheet" href="bootstrap.css" >
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <iink href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
         <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    </head>
    <body>
        <div class="image-container">

    <img src="avatar1.png" class="img-responsive img-thumbnail" style="display:inline;" alt="register" width="250" height="100">
    </div>
        <div class="container-fluid" align="center">
    <br>
    <form action="http://localhost:8080/careHospital/authentication" method="post">
        <div class="form-group" align="center">
            <div class="col-xs-16">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" class="form-control" value="" name="user">
        </div>
            <br>
        <div class="form-group" align="center">
            <div class="col-xs-16">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="password" class="form-control" value="" name="pass">
        </div>
            <br>
            <div class="container-fluid" align="center">
                <br>
                <br>
                <br>
        <button value="login" type="submit" class="btn btn-default">Login</button>
            </div>
    </form>
</div>
<div class="container-fluid" align="center">
    <p>Have not registered yet ....?</p>
    <br>
        <a href="/register"> Click to Register </a>
</div>
    </body>
</html>
