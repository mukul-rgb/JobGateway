<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Side</title>
</head>
<body>

    <jsp:useBean id = "obj" class="com.net.student.bean.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 String srollStr = request.getParameter("sroll"); 
	// String srollStr = (String)session.getAttribute("sroll"); 
	 int sroll=0;
	try {
	     sroll = Integer.parseInt(srollStr); 
	} catch (NumberFormatException e) {
	    System.out.println("Invalid input: " + srollStr);
	}
	System.out.println(sroll);
	 int status = AdminDAO.StudentUpdate(obj,sroll);
	if(status == 1){
	
		out.print("<script> alert('Profile Updated....'); "
		+" window.open('viewStudent.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Profile Update Failed....'); "
		+" window.open('viewStudent.jsp','_self')</script>");	}
	%>
	
</body>
</html>