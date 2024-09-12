<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
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

	//System.out.print(obj.getAuname());
	//System.out.print(obj.getPassword());
	 int aid=Integer.MIN_VALUE;
	 int status = AdminDAO.Login(obj);
	if(status == 1){
		//out.print("<br> Registration sucesss.....");
		ResultSet rs = AdminDAO.Getaid(obj.getAuname(),obj.getPassword());
		while(rs.next()){
		 aid = rs.getInt(1);
		 System.out.println(aid);
		 //System.out.println(session.getMaxInactiveInterval());
		 
		};
		//session.setMaxInactiveInterval(); 
		session.setAttribute("aid",aid); 
		out.print("<script> alert('Login Sucess....'); "
		+" window.open('adminPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Login Failed....'); "
		+" window.open('../adminLogin.jsp','_self')</script>");	}
	%>
	
</body>
</html>