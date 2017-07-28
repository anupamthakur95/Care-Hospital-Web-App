<%-- 
    Document   : error
    Created on : 16 Jul, 2017, 5:27:18 PM
    Author     : ANUPAM KUMAR
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Login Error</title>
</head>
<body>
<center><p style="color:red">Sorry, your record is not available.</p></center>
<%
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
%>
</body>
</html>
