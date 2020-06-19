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

public class CertificateServlet extends HttpServlet {

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
			String username= session1.getAttribute("username").toString();
            String cer1=request.getParameter("q14_parq14[0]");
			String cer2=request.getParameter("q14_parq14_1[0]");
			String cer3=request.getParameter("q14_parq14_2[0]");
			String cer4=request.getParameter("q14_parq14_3[0]");
			String cer5=request.getParameter("q14_parq14_4[0]");
			String cer6=request.getParameter("q14_parq14_5[0]");
			String cer7=request.getParameter("q14_parq14_6[0]");
            String other=request.getParameter("other");
		
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation","root","");
            st=con.createStatement();
            PreparedStatement stmt=con.prepareStatement("insert into certificate values(?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,username);//1 specifies the first parameter in the query
            stmt.setString(2,cer1);
            stmt.setString(3,cer2);
            stmt.setString(4,cer3);
            stmt.setString(5,cer4);
            stmt.setString(6,cer5);
            stmt.setString(7,cer6);
            stmt.setString(8,cer7);
            stmt.setString(9,other);
            int i=stmt.executeUpdate();
            System.out.println(i+" records inserted");

            con.close();
            if(i>0)
            {
                response.sendRedirect("workoutdetails.jsp");
            }
            else
            {
             
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
