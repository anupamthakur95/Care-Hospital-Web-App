/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANUPAM THAKUR
 */
@WebServlet(urlPatterns = {"/pPortal"})
public class pPortal extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String name=request.getParameter("name");
        String age=request.getParameter("age");
        String gender=request.getParameter("gender");
        String email=request.getParameter("email");
        String mobno=request.getParameter("mobno");
        String place=request.getParameter("place");
        
        
       
       
       try{
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/carehos","alpha","lambda");
       Statement st=con.createStatement();
      int i = st.executeUpdate("INSERT INTO PATIENTDETAILS (NAME, AGE,GENDER,EMAIL,MOBNO,PLACE) VALUES ('"+name+"', '"+age+"', '"+gender+"', '"+email+"', '"+mobno+"', '"+place+"')");
       if(i>0)
       {
       response.sendRedirect("patientPortal.jsp");
       }
      
       else{
       
       }
       }
       catch(ClassNotFoundException | SQLException se)
       {
       
       }
       
       out.print("These details already exists in record.....try with your own details.<br>"+"<a href='profile.jsp'> Go to Profile </a>");
       }
    
       
        }
   