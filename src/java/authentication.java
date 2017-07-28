/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANUPAM THAKUR
 */
@WebServlet(urlPatterns = {"/authentication"})
public class authentication extends HttpServlet {

    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String un=request.getParameter("user");
        String pwd=request.getParameter("pass");
        out.println(un);
        out.println(pwd);
       try {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/carehos","alpha","lambda");
       PreparedStatement ps=con.prepareStatement("select * from login where username=? and password =?  ");
       ps.setString(1,un);
       ps.setString(2,pwd);
       ResultSet rs=ps.executeQuery();
       if(rs.next()){
          
           response.sendRedirect("patientPortal.jsp?user="+un);
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
    

    
   