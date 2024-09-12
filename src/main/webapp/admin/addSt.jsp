<%@page import="com.net.admin.adminDAO.AdminDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
	
	<jsp:useBean id = "obj" class="com.net.student.bean.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
		System.out.println(obj.getName());
		System.out.println(obj.getEmail());
		System.out.println(obj.getDob());
		System.out.println(obj.getPhno());
		System.out.println(obj.getRollno());
		
	<%
	 int status = AdminDAO.AddStudent(obj);
	 if(status == 1){
		out.print("<script> alert('New Student Added ....'); "
		+" window.open('viewStudent.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Failed to add Student ....'); "
		+" window.open('viewStudent.jsp','_self')</script>");	}
	%>
	
</body>
</html>