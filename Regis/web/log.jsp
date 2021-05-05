
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
    String Roll=request.getParameter("Roll_no");
    String Password=request.getParameter("Password");
    try{
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
        String sql="select *from regis where Roll_no=? and Password=? ";
         PreparedStatement ps = (PreparedStatement) c.prepareStatement(sql);
         ps.setString(1,Roll);
         ps.setString(2,Password);
         ResultSet rs=ps.executeQuery();
         
         if(rs.next()){
           String Name=rs.getString(1); // columns of the table 
           String Roll_no=rs.getString(2);
           String Email_id=rs.getString(3);
           String DOB=rs.getString(5);
           String Gender=rs.getString(6);
           String Mobile_no=rs.getString(7);
           String Course=rs.getString(8);
           String Address=rs.getString(9);
           
           session.setAttribute("Name",Name);
           session.setAttribute("Roll_no",Roll);
           session.setAttribute("Email_id",Email_id);
           
           session.setAttribute("DOB",DOB);
           session.setAttribute("Gender",Gender);
           session.setAttribute("Mobile_no",Mobile_no);
           session.setAttribute("Course",Course);
           session.setAttribute("Address",Address);
           
           response.sendRedirect("detail.jsp");
           
         }
         else{
             response.sendRedirect("index.html");
         }
         
    }
    catch(Exception e)
    {
        
    }   

%>
</html>