<%@page import="com.net.company.companyDAO.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company update</title>
</head>
<body>
	this is controller:>
    <jsp:useBean id = "obj" class="com.net.company.Bean.CompanyBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	String cidStr = request.getParameter("cid");
	 int cid=0;
	try {
	     cid = Integer.parseInt(cidStr);
	} catch (NumberFormatException e) {
	    System.out.println("Invalid input: " + cidStr);
	}
	 
	System.out.println(cid);
	
	int status = CompanyDAO.CompanyUpdate(obj); 
	System.out.println("sts - " + status);
	if(status == 1){
	
		out.print("<script> alert('Companys Profile Updated Sucessfully....'); "
		+" window.open('viewCompany.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('FAiled to Update Companys Profile ....'); "
		+" window.open('viewCompany.jsp','_self')</script>");	}
	%>
	
</body>
</html>