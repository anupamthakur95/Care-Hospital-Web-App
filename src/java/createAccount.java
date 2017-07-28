import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/createAccount"})
public class createAccount extends HttpServlet {
    
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String un = request.getParameter("user");
        
        String pwd = request.getParameter("pass");
        try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection  con=DriverManager.getConnection
                     ("jdbc:derby://localhost:1527/carehos","alpha","lambda");
        PreparedStatement ps=con.prepareStatement
                  ("insert into login values(?,?)");
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
        out.print("Registration Failed....."+"<a href='registration.jsp'>Go to Registration Page</a>");
	      }
  }