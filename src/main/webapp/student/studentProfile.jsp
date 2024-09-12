<%@page import="com.net.student.studentDAO.StudentDAO"%>
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<style>
    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f8f9fa; 
    }

    .container {
        margin-top: 50px; 
    }

    h1.text-center {
        font-size: 2.5rem; 
        color: #333; 
        text-transform: uppercase;
        letter-spacing: 1.5px;
    }

    .container.w-75 {
        border-radius: 10px; ox-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        padding: 20px; 
        background-color: #ffffff; 
    }

    .mb-3 {
        margin-bottom: 20px;
    }

    .form-label {
        font-size: 1.1rem;
        color: #555; 
        font-weight: bold;
        margin-bottom: 8px; 
    }

    .form-control {
        height: 45px; 
        font-size: 1rem;
        border-radius: 5px;
        border: 1px solid #ced4da; 
        padding: 10px; 
    }

    .form-control:focus {
        border-color: #80bdff; 
        outline: none;        
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); 
    }

    .bg-warning {
        background-color: #ffc107 !important; 
    }

    .pb-3 {
        padding-bottom: 20px; 
    }

    .addButton {
        margin-top: 12px;
        color: white;
        background-color: #f72828;
        border-radius: 5px;
        border: none;
        padding: 10px 20px; 
        font-size: 1.1rem; 
        text-transform: uppercase; 
        cursor: pointer; 
		transition: background-color 0.3s ease; 
    }

    .addButton:hover {
        background-color: #c91e1e; 
    }

    .button {
        display: block;
        width: 200px;
        margin: 30px auto; 
        padding: 10px 0;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 1.2rem;
        text-transform: uppercase;
        cursor: pointer;
        text-align: center;
        transition: background-color 0.3s ease; 
    }

    .button:hover {
        background-color: #218838;
    }

</style>
</head>
<body>
    <%@ include file="studentHeader.jsp" %>
    <%
        int sid = (Integer)session.getAttribute("sid");
        ResultSet rs = StudentDAO.StudentProfile(sid);
        
        rs.next();
        String name = rs.getString(1);
        String email = rs.getString(2);
        String dob = rs.getString(3);
        String rollno = rs.getString(4);
        String phno = rs.getString(5);
        String skill = rs.getString(6);
        String resume = rs.getString(7);
    %>

    <div class="container">
		        <form method="post" action="updateProfile.jsp">
	
        <h1 class="text-center" class="head">User Profile</h1>
  
        <div class="container w-75 pb-3"> 
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" value="<%= name %>">
            </div> 
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="text" class="form-control" name="email" value="<%= email %>">
            </div>
            <div class="mb-3">
                <label class="form-label">DOB</label>
                <input type="text" class="form-control" name="email" value="<%= dob %>">
            </div>
            <div class="mb-3">
                <label class="form-label">Roll No</label>
                <input type="text" class="form-control" name="email" value="<%= rollno %>">
            </div>
            <div class="mb-3">
                <label class="form-label">Phone Number</label>
                <input type="text" class="form-control" name="email" value="<%= phno %>">
            </div>
            <div class="mb-3">
                <label class="form-label">Skill</label>
                <input type="text" class="form-control" name="email" value="<%= skill %>">
            </div>
            <div class="mb-3">
                <label class="form-label">Resume</label>
                <input type="text" class="form-control" name="email" value="<%= resume %>">
            </div>
                
        </div>
		  <button type="submit" class="btn btn-primary w-100">Update</button>
        </form>
    </div>
</body>
</html>
