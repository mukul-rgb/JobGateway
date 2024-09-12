<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
	
   <%
   String Str = request.getParameter("sroll");
   int rollno=0;
   try {
       rollno = Integer.parseInt(Str);
   } catch (NumberFormatException e) {
      System.out.println("Invalid input: " + Str);
   }
   System.out.print(rollno);
   
   int delStatus = AdminDAO.DeleteStudent(rollno);

   if(delStatus == 1)
   {
  out.print("<script> alert('Record Delete Success..');"  
   + "window.open('ViewStudent.jsp','_self');</script>");

   }
   else if(delStatus == 0){
	   out.print("<script> alert('Record Delete fail..');"  
			   + "window.open('ViewStudent.jsp','_self');</script>");
   }
%>
	
</body>
</html>