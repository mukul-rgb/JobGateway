<%@page import="com.net.student.studentDAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove message</title>
</head>
<body>
//<%
//    jakarta.servlet.http.HttpSession existingSession = request.getSession(false);
//    if (existingSession != null) {
//        out.println("Session exists with ID: " + existingSession.getId());
//    } else {
//        out.println("No session exists.");
//    }
//%>
	<%
	int sid =(Integer)session.getAttribute("sid");
	
	String Str =  request.getParameter("cid"); 	
	 int cid=0;
	try {
	     cid = Integer.parseInt(Str);
	     } catch (NumberFormatException e) {
	    System.out.println("Invalid input: " + Str);
	}
   // System.out.println(sid);
   // System.out.println(cid);
	if(cid>0){
		StudentDAO.Remove(cid, sid);
		out.print("<script> alert('Application withdrawn Successfully....'); "
		+" window.open('viewStCompany.jsp','_self')</script>");
	}
	else {
		out.print("<script> alert('Failed to withdraw Application....'); "
		+" window.open('viewStCompany.jsp','_self')</script>");	}
	%>
</body>
</html>