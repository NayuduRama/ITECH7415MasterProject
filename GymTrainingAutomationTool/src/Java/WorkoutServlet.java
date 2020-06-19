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

public class WorkoutServlet extends HttpServlet {

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
        try {
            String username = session1.getAttribute("username").toString();
            String date = request.getParameter("date");
            String time1 = request.getParameter("time1");
            String time2 = request.getParameter("time2");
            String warmuptime = request.getParameter("warmuptime");
            String hardcore = request.getParameter("hardcore");
            String hardcoretime = request.getParameter("hardcoretime");
            String cardio = request.getParameter("cardio");
            String cardiotime = request.getParameter("cardiotime");
            String abs = request.getParameter("abs");
            String abstime = request.getParameter("abstime");


            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation", "root", "");
            st = con.createStatement();
            //ResultSet rs=st.executeQuery("select * from workout where username ='" + username + "'");
            //if (!(rs.next())) {
                ResultSet rs2 = st.executeQuery("select * from workout where date =" + date);
                if(!(rs2.next())) {
                    PreparedStatement stmt = con.prepareStatement("insert into workout values(?,?,?,?,?,?,?,?,?,?,?)");
                    stmt.setString(1, username);
                    stmt.setString(2, date);
                    stmt.setString(3, time1);
                    stmt.setString(4, time2);
                    stmt.setString(5, warmuptime);
                    stmt.setString(6, hardcore);
                    stmt.setString(7, hardcoretime);
                    stmt.setString(8, cardio);
                    stmt.setString(9, cardiotime);
                    stmt.setString(10, abs);
                    stmt.setString(11, abstime);


                    stmt.executeUpdate();
                    response.sendRedirect("workoutdetails.jsp");

                    con.close();
                }
           // }
            else
            {

                System.out.println("Already Data avavilable");
                response.sendRedirect("workout.jsp");
                con.close();
            }
            } catch (IOException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
