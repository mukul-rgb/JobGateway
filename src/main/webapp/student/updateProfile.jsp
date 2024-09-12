<%@page import="java.sql.ResultSet"%>
<%@page import="com.net.student.studentDAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    
</head>
<body>
    <%@ include file ="studentHeader.jsp" %>
    <%
    String sn = (String) session.getAttribute("studentname");
    ResultSet rs = StudentDAO.ShowUpdate(sn);
       
    rs.next();
    int sid = rs.getInt(1);
    String name = rs.getString(2);
    String email = rs.getString(3);
    String dob = rs.getString(4);
    String rollno = rs.getString(5);
    String phno = rs.getString(6);
    String skill = rs.getString(7);
  	 
    %>
    <div><h1>Update Form</h1></div>
	<form action="student/update.jsp" method="post">
            <input type="number" name="sid" value=<%=sid%> >        	
            <input type="text" name="name" value=<%=name%>><br>
            <input type="text" name="email" value=<%=email%>><br>
            <input type="date" name="dob"value=<%=dob%>> <br>
            <input type="text" name="rollno" value=<%=rollno%>><br>
            <input type="text" name=phno maxlength="10" value=<%=phno%>><br>
            <input type="text" name="skill" value=<%=skill%>><br>
            
            <button type="submit">Update Record</button>
        </form>
    
</body>
</html>

