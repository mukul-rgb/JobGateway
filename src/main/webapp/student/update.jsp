<%@page import="com.net.student.studentDAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Log</title>
</head>
<body>

    <jsp:useBean id = "obj" class="com.net.student.bean.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = StudentDAO.Update(obj);
	if(status == 1){
	
		out.print("<script> alert('Profile Updated....'); "
		+" window.open('studentPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Profile Update Failed....'); "
		+" window.open('studentPanel.jsp','_self')</script>");	}
	%>
	
</body>
</html>