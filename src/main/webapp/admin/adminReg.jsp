<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <jsp:useBean id = "obj" class="com.net.admin.bean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = AdminDAO.Register(obj);
	if(status == 1){
		//out.print("<br> Registration sucesss.....");
		
		session.setAttribute("adminname",obj.getAuname()); 
		out.print("<script> alert('Registration Sucess....'); "
		+" window.open('adminPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Registration Failed....'); "
		+" window.open('../signup.jsp','_self')</script>");	}
	%>
	
</body>
</html>