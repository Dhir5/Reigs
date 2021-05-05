<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
    <center>
        <h1><b>------- <b>Your Full Details</b> -------- </b></h1>    
    </body>
    <%
        Object Name = session.getAttribute("Name");
        Object Roll_no = session.getAttribute("Roll_no");
        Object Email_id = session.getAttribute("Email_id");
        Object DOB = session.getAttribute("DOB");
        Object Gender = session.getAttribute("Gender");
        Object Mobile_no = session.getAttribute("Mobile_no");
        Object Course = session.getAttribute("Course");
        Object Address = session.getAttribute("Addtress");

        if (Roll_no != null) {
            out.println("Name : " + Name + "|| Roll_No: " + Roll_no + "|| Email_Id: " + Email_id + "|| DOB: " + DOB + "|| Gender: " + Gender + " || Mobile_No: " + Mobile_no + " || Course: " + Course + " || Address: " + Address);
        } else {
            out.println("** Wrong Input **");
        }
        

    %>
    <br><br>
    <form method="get" action="index.html">
            <button type="submit">Back To Home </button>
        </form>
</center>


</html>
