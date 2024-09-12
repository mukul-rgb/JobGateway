
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
</head>
<body>
	 
<%@ include file="adminHeader.jsp" %>
<div class="container">
<%
    int sroll = Integer.parseInt(request.getParameter("sroll"));
    ResultSet rs = AdminDAO.ShowUpdate(sroll);
    
     rs.next();
    String name = rs.getString(1);
    String email = rs.getString(2);
    String dob = rs.getString(3);
    String rollno = rs.getString(4);
    String phno = rs.getString(5);
    String skill = rs.getString(6);
  	 
    %>
  
  <h1 class="text-center">Update Student Record</h1>
 
 	
   <div class="container w-75 pb-3">
     <form method="post" action="updteSt.jsp?sroll=+<%=rollno%>">
     
 	    <input type="hidden" name="rollno" value=<%=rollno%>>
  <div class="mb-3">
    <label class="form-label">Name</label>
    <input type="text" class="form-control" name="name" value=<%= name %>>
  </div> 
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="text" class="form-control" name="email" value=<%= email %>>
  </div>
  <div class="mb-3">
    <label class="form-label">DOB</label>
    <input type="text" class="form-control" name="dob" placeholder ="dd/mm/yyyy" value=<%= dob %>>
  </div>
  <div class="mb-3">
    <label class="form-label">RollNo</label>
    <input type="number" class="form-control" name="rollno" value=<%= rollno %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Mobile</label>
    <input type="text" class="form-control" name="phno" value=<%= phno %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Skill</label>
    <input type="text" class="form-control" name="skill" value=<%= skill %>>
  </div>
  <button type="submit" class="btn btn-primary w-25 fw-bold">Update Record</button>
</form>
    
   </div>
	
</div>

  
	
</body>
</html>