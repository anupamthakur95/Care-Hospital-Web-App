/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANUPAM THAKUR
 */
public class delete extends HttpServlet {

   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            out.print("failed");
            try {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/carehos","alpha","lambda");
       PreparedStatement ps=con.prepareStatement("delete from login where username= request.getParameter(\"user\")  ");
       ResultSet rs=ps.executeQuery();
       if(rs.next()){
          
           out.print("User Record Deleted");
       }
       else{
       response.sendRedirect("error.jsp");
       
       }
               } catch(SQLException e)  {
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(authentication.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
    }
} 
    
    

    