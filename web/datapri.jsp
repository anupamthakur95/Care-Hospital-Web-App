<%-- 
    Document   : datapri
    Created on : 17 Jul, 2017, 8:12:35 AM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<%@page language="java" import="java.util.*" %>
<html>
<head>
<title>Data Page</title>
</head>
<body> 
<table border="1" width="303">
<tr>
<td width="119"><b>fname</b></td>
<td width="168"><b>lname</b></td>
<td width="168"><b>age</b></td>
<td width="168"><b>email</b></td>
<td width="168"><b>ph</b></td>
<td width="168"><b>place</b></td>
</tr>
<%Iterator itr;%>
<% List data= (List)request.getAttribute("profile");
for (itr=data.iterator(); itr.hasNext(); )
{
%>

<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>




<%}%>
</table>
</body>
</html>
