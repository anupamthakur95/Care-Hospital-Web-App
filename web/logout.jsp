

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% 
 response.setHeader("cache-control","no-cache,no-store,must-revalidate");
        session.invalidate();
%>
<p>You have been successfully logout </p>
   <br>
<a href="login.jsp">login</a>
</body>
</html>
