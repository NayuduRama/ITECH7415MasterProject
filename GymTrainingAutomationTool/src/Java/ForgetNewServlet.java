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


public class ForgetNewServlet extends HttpServlet {

   
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

        try
        {
            int number=Integer.parseInt(request.getParameter("number"));
			String password=request.getParameter("password");
			String passwordnew=request.getParameter("passwordnew");
            int  status=0;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation","root","");
            st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from forgetpassword");
            int rs1;
            if(rs.next())
            {
                int key=rs.getInt("key");
                String username=rs.getString("username");
                String email=rs.getString("email");
		        if((key==number) && password.equals(passwordnew)) {
                    String sql="delete from registration where Username = ?";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1,username);
                    ps.execute();

                    PreparedStatement stmt = con.prepareStatement("insert into registration values(?,?,?)");
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    stmt.setString(3, email);

                    stmt.executeUpdate();
                    response.sendRedirect("index.jsp");
                    System.out.println(" Set new password successfully");
                    con.close();
                }
                else
                {
                    System.out.println(" password not matched new password");
                }
            }
            else
            {
                System.out.println("Please check OTP");
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
