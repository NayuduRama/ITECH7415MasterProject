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
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class ForgetServlet extends HttpServlet {
static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }

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
            String email=request.getParameter("email");

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymautomation","root","");
            st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from registration where email='"+email+"'");
            if(rs.next()) {
                Random random = new Random();
                int key = random.nextInt(((9999 - 100) + 1) + 10);
                String username = rs.getString("Username");


                final String from = "sadamramanayudu@gmail.com";
                final String password = "7794862145";

                Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(from, password);
                    }
                });

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(email));
                message.setSubject("OTP for reset password" + ": One Time Password");
                //message.setSubject("private key");

                message.setText("OTP for reset password is:" + key);
                //message.setText("private key is "+"\n"+pri);

                Multipart multipart = new MimeMultipart();

                //addAttachments(multipart);
                //message.setContent(multipart);
                // Send message
                Transport.send(message);

                ResultSet rs2 = st.executeQuery("select * from forgetpassword where username='" + username + "'");
                int  rs1;
                if (rs2.next()){
                    String sql="delete from forgetpassword where Username = ?";
                   PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1,username);
                    ps.execute();

                    PreparedStatement stmt = con.prepareStatement("insert into forgetpassword values(?,?,?)");
                    stmt.setString(1, username);
                    stmt.setString(2, email);
                    stmt.setInt(3, key);

                    stmt.executeUpdate();

                    con.close();
                }else {
                        PreparedStatement stmt = con.prepareStatement("insert into forgetpassword values(?,?,?)");
                    stmt.setString(1, username);
                    stmt.setString(2, email);
                    stmt.setInt(3, key);

                    int i = stmt.executeUpdate();
                        System.out.println(i + " Mail Send");

                }
                response.sendRedirect("forgetpassword.jsp");
                con.close();
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
