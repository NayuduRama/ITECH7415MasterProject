package Java;

import com.commondb.Common_DB;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            
            
        } finally {            
            out.close();
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session1=request.getSession();
        Connection con=null;
        Statement st=null;
        ResultSet rs1=null;
        try
        {
            String reguser=request.getParameter("username");
            String regpass=request.getParameter("password");

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation","root","");
            st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from registration where username='"+reguser+"' and password='"+regpass+"'");
            if(rs.next())
            {


                session1.setAttribute("username", reguser);

                response.sendRedirect("workoutdetails.jsp");
				

				
            }
            else
            {
                System.out.println("Please check username & password");
                response.sendRedirect("index.jsp");
            }

        }

        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
