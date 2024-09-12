<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete company</title>
</head>
<body>
	 
   <%
   String idStr = request.getParameter("id");
   int id=0;
   try {
       id = Integer.parseInt(idStr);
   } catch (NumberFormatException e) {
      System.out.println("Invalid input: " + idStr);
   }
   System.out.print(id);

   int appliedStatus = AdminDAO.DeleteApplied(id);
   int delStatus = AdminDAO.DeleteCompany(id);
   
   System.out.print(appliedStatus);
   System.out.print(delStatus);


   if(delStatus == 1)
   {
  out.print("<script> alert('Company's Record Deleted Success..');"  
   + "window.open('viewCompany.jsp','_self');</script>");

   }
   else if(delStatus == 0){
	   out.print("<script> alert('Company's Record Delete fail..');"  
			   + "window.open('viewCompany.jsp','_self');</script>");
   }
%>
	
</body>
</html>