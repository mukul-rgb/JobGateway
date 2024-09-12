<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>
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
        text-transform: uppercase; /* Uppercase letters for a formal look */
        letter-spacing: 1.5px; /* Slight letter spacing */
    }

    .container.w-75 {
        border-radius: 10px; /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        padding: 20px; /* Space inside the form */
        background-color: #ffffff; /* White background for the form */
    }

    .mb-3 {
        margin-bottom: 20px; /* Consistent spacing between form elements */
    }

    .form-label {
        font-size: 1.1rem; /* Slightly larger labels */
        color: #555; /* Medium dark color for labels */
        font-weight: bold; /* Bold labels */
        margin-bottom: 8px; /* Space between label and input */
    }

    .form-control {
        height: 45px; /* Consistent height for all input fields */
        font-size: 1rem; /* Standard font size for inputs */
        border-radius: 5px; /* Rounded input fields */
        border: 1px solid #ced4da; /* Border color */
        padding: 10px; /* Padding inside the input fields */
    }

    .form-control:focus {
        border-color: #80bdff; /* Blue border on focus */
        outline: none; /* Remove default outline */
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Light blue glow on focus */
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
        padding: 10px 20px; /* Increased padding for a more substantial button */
        font-size: 1.1rem; /* Larger font size for the button */
        text-transform: uppercase; /* Uppercase text for the button */
        cursor: pointer; /* Cursor change on hover */
        transition: background-color 0.3s ease; /* Smooth transition for hover effect */
    }

    .addButton:hover {
        background-color: #c91e1e; /* Darker red on hover */
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
        transition: background-color 0.3s ease; /* Smooth transition for hover effect */
    }

    .button:hover {
        background-color: #218838; /* Darker green on hover */
    }

</style>
</head>
<body>
    <%@ include file="adminHeader.jsp" %>
    <%
        int aid = (Integer)session.getAttribute("aid");
        ResultSet rs = AdminDAO.AdminProfile(aid);
        
        rs.next();
        String name = rs.getString(1);
        String email = rs.getString(2);
        String uname = rs.getString(3);
        String password = rs.getString(4);
    %>

    <div class="container">
		        <form method="post" action="updateProfile.jsp">
	
        <h1 class="text-center" class="head">Admin Profile</h1>
  
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
                <label class="form-label">Admin User Name</label>
                <input type="text" class="form-control" name="dob" value="<%= uname %>">
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="text" class="form-control" name="rollno" value="<%= password %>">
            </div>    
        </div>
		  <button type="submit" class="btn btn-primary w-100">Update</button>
        </form>
    </div>
</body>
</html>
