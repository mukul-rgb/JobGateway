<%@page import="java.sql.ResultSet"%>
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

    
	<jsp:useBean id="obj" class="com.net.student.bean.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
	
	//System.out.print(obj.getDob());
	//System.out.print(obj.getRollno());
	
	 int status = StudentDAO.Login(obj);
	
	if(status == 1){
		
		session.setAttribute("rollno",obj.getRollno());
		
		ResultSet rs = StudentDAO.Getsid(obj.getRollno());
		rs.next();
		int sid = rs.getInt(1);
		session.setAttribute("sid",sid); 

		out.print("<script> alert('Login Sucess....'); "
		+" window.open('studentPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Login Failed....'); "
		+" window.open('../studentLogin.jsp','_self')</script>");	}
	%>
	
</body>
</html>