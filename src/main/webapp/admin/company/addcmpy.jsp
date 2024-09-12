<%@page import="com.net.story.storyDAO.StoryDAO"%>
<%@page import="com.net.company.companyDAO.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Company</title>
</head>
<body>
	
	<jsp:useBean id = "obj" class="com.net.company.Bean.CompanyBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	// StoryDAO.NewStory(sb);
	 int status = CompanyDAO.AddCompany(obj);
	 
//	System.out.println(obj.getCname());
//	System.out.println(obj.getRequirement());
//	System.out.println(obj.getLocation());
//	System.out.println(obj.getRole());
//	System.out.println(obj.getCtc());
	 if(status == 1){
		 
		out.print("<script> alert('Company added sucessfully ....'); "
		+" window.open('viewCompany.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Failed to add company ....'); "
		+" window.open('viewCompany.jsp','_self')</script>");	}
	%>
	
</body>
</html>