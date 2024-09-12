<%@page import="java.sql.ResultSet"%>
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile update</title>
</head>
<body>
	
     <jsp:useBean id = "obj" class="com.net.admin.bean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	int aid = (Integer)session.getAttribute("aid");
    
	System.out.println(aid);
	System.out.println(obj.getEmail());
	 int status = AdminDAO.ProfileUpdate(obj, aid);
	if(status == 1){
	
		out.print("<script> alert('Profile Updated....'); "
		+" window.open('adminProfile.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Profile Update Failed....'); "
		+" window.open('adminProfile.jsp','_self')</script>");	}
	%>
	
	
</body>
</html>