<%@page import="java.util.jar.Attributes.Name"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String Roll_no = request.getParameter("Roll_no");
    String Pass = request.getParameter("Password");
    String driver = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "mysql";
    String userid = "root";
    String password = "";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <center>
        <%@page language="java"%>
        <%@ page import="java.sql.*"%>
        <h1>Retrieve data </h1>
        <table border="1">
            <tr>
                <td>Name</td>
                <td>Roll_No</td>
                <td>Email_id</td>
                <td>Password</td>
                <td>DOB</td>
                <td>Address</td>
                <td>Gender/td>
                <td>Mobile_no</td>
                <td>Course</td>
                <td>Update</td>
                <td>Delete</td>

            </tr>
            <%                try {
                    Statement statement = null;
                    Connection c = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
                    statement = c.createStatement();
                    String sql = "select * from regis";

                    ResultSet rs = statement.executeQuery(sql);
                    int i = 0;
                    while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString("Name")%></td>
                <td><%=rs.getString("Roll_No")%></td>
                <td><%=rs.getString("Email_id")%></td>
                <td><%=rs.getString("Password")%></td>
                <td><%=rs.getString("DOB")%></td>
                <td><%=rs.getString("Address")%></td>
                <td><%=rs.getString("Gender")%></td>
                <td><%=rs.getString("Mobile_no")%></td>
                <td><%=rs.getString("Course")%></td>
                <td><a href="chan.jsp?id=<%=rs.getString("Roll_no")%>">update</a></td>
                <td><a href="del.jsp?r=<%=rs.getString("Roll_no")%>">Delete</a></td>

            </tr>
            <% i++;
                    }
                    c.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>

        </table><br><br>
        <a href="index.html">Back to Home</a>
    </center>
    </body>
</html>