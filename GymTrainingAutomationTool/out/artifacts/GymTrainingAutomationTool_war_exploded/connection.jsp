<%--
  Created by IntelliJ IDEA.
  User: rama
  Date: 12/5/20
  Time: 3:19 pm
  To change this template use File | Settings | File Templates.
--%>
<%--url=jdbc:mysql://localhost:3306/hybrisdb?characterEncoding=latin1&useConfigs=maxPerformance--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.String" import="java.util.*"%>
<html>
<head>
    <title>Connection</title>
</head>
<body>

<%
    String url = "jdbc:mysql://localhost:3306/gym?characterEncoding=latin1&useConfigs=maxPerformance?useSSL=false&serverTimezone=UTC";
    String uname = "root";
    String pass = "yourpassword";
    // to check
    String query = "select emailid from gym.users";

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,uname,pass);
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(query);//to check

    rs.next();
    String name = rs.getString("emailid");
    System.out.println(name);

    st.close();
    con.close();








%>



</body>
</html>
