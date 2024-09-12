<%@page import="com.net.story.storyDAO.StoryDAO"%>
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
   String Str = request.getParameter("ssid");
   int ssid=0;
   try {
       ssid = Integer.parseInt(Str);
   } catch (NumberFormatException e) {
      System.out.println("Invalid input: " + Str);
   }
   
   System.out.print(ssid);

   int delStatus = StoryDAO.DeleteStory(ssid);

   if(delStatus == 1)
   {
  out.print("<script> alert('Record Delete Success..');"  
   + "window.open('viewss.jsp','_self');</script>");

   }
   else if(delStatus == 0){
	   out.print("<script> alert('Record Delete fail..');"  
			   + "window.open('viewss.jsp','_self');</script>");
   }
%>
	
</body>
</html>