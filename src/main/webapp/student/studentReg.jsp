<%@page import="com.net.student.studentDAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Reg</title>
</head>
<body>

    <jsp:useBean id = "obj" class="com.net.student.bean.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = StudentDAO.Register(obj);
	 if(status == 1){
		//out.print("<br> Registration sucesss.....");
		
		session.setAttribute("studentname",obj.getName()); 
		out.print("<script> alert('Registration Sucess....'); "
		+" window.open('studentPanel.jsp','_self')</script>");
     }
	 else if(status==0){
		out.print("<script> alert('Registration Failed....'); "
		+" window.open('../signup.jsp','_self')</script>");	}
	%>
	
</body>
</html>