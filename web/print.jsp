
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="print.css" >
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Invoice Print</title>
        <%
            String doc =request.getParameter("doc");
        String name = request.getParameter("name");
         String gender = request.getParameter("gender");
          String email = request.getParameter("email");
           String phone = request.getParameter("phone");
            String age = request.getParameter("age");
             String place = request.getParameter("place");
           
        %>
    </head>
    <body>
        <div >
        <h2> Invoice </h2>
                </div>
        <table border="12"  class="w3-table-all">
            <tr>
                <td>Doctor & Department</td>
                <td><%= doc %></td>
            </tr>
            
            <tr>
                <td>First Name</td>
                <td><%= name %></td>
            </tr>
            
            <tr>
                <td> Gender </td>
                <td><%= gender %></td>
            </tr>
            
            <tr>
                <td>Email</td>
                <td><%= email %></td>
            </tr>
            
            <tr>
                <td>Phone</td>
                <td><%= phone %></td>
            </tr>
            
            <tr>
                <td> Age </td>
                <td><%= age %></td>
            </tr>
            
            <tr>
                <td> City </td>
                <td><%= place  %></td>
            </tr>
            <tr>
                <td> Amount</td>
                <td>
            <%
               
                
            if(doc.equals("Dr.Nishant : Cancer"))
            {
                out.print("Rs.1000000");
                
            }
            %>
            <%
                if(doc.equals("Dr.Anupam : Cardiologist"))
                {
                out.print("Rs.18000000");
                }
                %>
                
                <%
                if(doc.equals("Dr.Baba Pagla : Brain"))
                {
                out.print("Rs.1800005");
                }
                %>
                <%
                if(doc.equals("Dr.Sunita : ENT"))
                    {
                    out.print("Rs.90000");
                }
                    %>
                    
                     <%
                if(doc.equals("Dr.Chandani : Obstetrics"))
                {
                    out.print("Rs.90000");
                }
                    %>
                </td>
        </table>
             
        </body>
</html>
