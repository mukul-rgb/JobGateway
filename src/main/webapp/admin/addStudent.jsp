<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
	<%@ include file="adminHeader.jsp" %>
	<h1 class="text-center">Add Student</h1>
 
     <input type="hidden" name="hiddenAttribute" value="someValue">
 
  <div class="container w-75  pb-3">
     <form class="pt-4" method="post" action="addSt.jsp">
  <div class="mb-3">
    <label class="form-label">Name</label>
    <input type="text" class="form-control" name="name" >
  </div>
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="text" class="form-control" name="email" >
  </div>
  <div class="mb-3">
    <label class="form-label">DOB</label>
    <input type="text" class="form-control" placeholder ="dd/mm/yyyy" name="dob" >
  </div>
  <div class="mb-3">
    <label class="form-label">RollNo</label>
    <input type="number" class="form-control" name="rollno" >
  </div>
  <div class="mb-3">
    <label class="form-label">Mobile</label>
    <input type="text" class="form-control" name="phno" >
  </div>
  <div class="mb-3">
    <label class="form-label">Skill</label>
    <input type="text" class="form-control" name="skill" >
  </div>
  <button type="submit" class="btn text-center btn-primary w-25 fw-bold">Add Record</button>
</form>
    
   </div>
</body>
</html>