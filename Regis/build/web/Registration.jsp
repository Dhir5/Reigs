
<%@page import="java.util.jar.Attributes.Name"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <%@page language="java"%>
        <%@ page import="java.sql.*"%>

        <%
            try {
                String str1 = null, str2 = null, str3 = null, str4 = null, str5 = null, str6 = null, str7 = null, str8 = null, str9 = null;

                str1 = request.getParameter("Name");
                str2 = request.getParameter("Roll_no");
                str3 = request.getParameter("Email_id");
                str4 = request.getParameter("Password");
                str5 = request.getParameter("DOB");
                str6 = request.getParameter("Gender");
                str7 = request.getParameter("Mobile_no");
                str8 = request.getParameter("Course");
                str9 = request.getParameter("Address");

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
                String query = "insert into regis values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
                ps.setString(1, str1);
                ps.setString(2, str2);
                ps.setString(3, str3);
                ps.setString(4, str4);
                ps.setString(5, str5);
                ps.setString(6, str6);
                ps.setString(7, str7);
                ps.setString(8, str8);
                ps.setString(9, str9);
                ps.executeUpdate();
                ps.close();
                con.close();

            } catch (Exception e) {
                out.print(e);
            }
        %>
    <center>
        <br><br>
        <br><br>
        <form method="get" action="index.html">
            <button type="submit">Back To Home </button>
        </form>
    </center>
</body>
</html>