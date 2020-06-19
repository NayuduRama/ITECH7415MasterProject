package Database;

import java.sql.*;

public class databaseConnection {
    public static void main(String args[]) throws Exception {

        System.out.println("hi");

        String url = "jdbc:mysql://localhost:3306/gymtraining";
        //        String url = "jdbc:mysql://localhost:3306/gymtraining?useSSL=false&serverTimezone=UTC?useUnicode
        //        =true" +
        //                "&character_set_server=utf8mb4";
        String uname = "root";
        String pass = "root@123";
        String query = "select emailid from gymuser.gymusers";

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = (Connection) DriverManager.getConnection(url, uname, pass);

        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);

        rs.next();
        String name = rs.getString("emailid");
        System.out.println(name);

        st.close();
        con.close();


    }
}
