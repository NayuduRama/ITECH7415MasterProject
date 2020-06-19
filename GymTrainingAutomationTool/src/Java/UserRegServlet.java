package Java;
import com.commondb.Common_DB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class UserRegServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserReg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserReg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }


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
            String regemail=request.getParameter("email");

          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation","root","");
          st=con.createStatement();
          int rs=st.executeUpdate("Insert into registration(username,password,email) VALUES('"+reguser+"','"+regpass+"','"+regemail+"')");
          if(rs>0)
           {
             response.sendRedirect("index.jsp");
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
