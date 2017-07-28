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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANUPAM THAKUR
 */
public class delAcc extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String un = request.getParameter("user");
        
        String pwd = request.getParameter("pass");
        try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection  con=DriverManager.getConnection
                     ("jdbc:derby://localhost:1527/carehos","alpha","lambda");
        PreparedStatement ps=con.prepareStatement
                  ("delete from login values(?,?)");
        ps.setString(1, un);
        ps.setString(2, pwd);
        int i=ps.executeUpdate();
                  if(i>0)
          {
             response.sendRedirect("login.jsp");
                               
          }
                  else
                  {
                  
                  }
        }
        
        catch(ClassNotFoundException | SQLException se)
        {
        }
        }
    }

    

}
