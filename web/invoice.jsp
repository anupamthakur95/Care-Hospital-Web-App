<%-- 
    Document   : invoice
    Created on : 21 Jul, 2017, 6:28:21 PM
    Author     : ANUPAM KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <title>Invoice</title>
    </head>
    <body>
        <div style="text-align: center"><h2>Bill Generation</h2></div>
        <form action="http://localhost:8080/careHospital/print.jsp" method="post">
            <table class="w3-table w3-striped w3-card-4" align="center">
                <tbody>
                    
                    <tr>
                        <td>Name</td>
                        <td> <input class="w3-input" type="text" name="name" value=""> </td>
                    </tr>
                    
                     <tr>
                        <td>Gender</td>
                        <td> 
                            <select class="w3-select" name="gender" >
                            <option> Male </option>
                            <option> Female </option>
                            </select>
                        
                        </td>
                    </tr>
                    
                     <tr>
                        <td>Age</td>
                        <td> <input class="w3-input" type="text" name="age" value=""> </td>
                    </tr>
                    
                     <tr>
                        <td>Email</td>
                        <td> <input class="w3-input" type="email" name="email" value=""> </td>
                    </tr>
                    
                     <tr>
                        <td>Phone</td>
                        <td> <input class="w3-input" type="text" name="phone" value=""> </td>
                    </tr>
                    
                     <tr>
                        <td>Place</td>
                        <td> <input class="w3-input" type="text" name="place" value=""> </td>
                    </tr>
                    
                     <tr>
                         
             <td>Doctors & Department</td>
      <td>
          <select class="w3-select" name="doc">
      <option>Select Doctor with Department</option>
    <option >Dr.Nishant : Cancer</option>
    <option >Dr.Anupam : Cardiologist</option>
    <option >Dr.Baba Pagla : Brain</option>
       <option>Dr.Sunita : ENT</option>
    <option>Dr.Chandani : Obstetrics</option>
  </select>
                             </td>
                         </tr>
                                 
                                       
                </tbody>
            </table>
            <div align="center">
            <p class="w3-center">
<button class="w3-button w3-section w3-blue w3-ripple"> Generate Bill </button>
</p>
            </div>
        </form>
        
        
        
    </body>
</html>
