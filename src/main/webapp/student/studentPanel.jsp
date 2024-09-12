<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Panel</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .box-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 20px auto;
            max-width: 800px; 
        }

        .box {
            width: calc(33.33% - 20px); 
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            text-align: center;
            transition: transform 0.3s ease;
            box-sizing: border-box;
        }

        .box:hover {
            transform: translateY(-5px); 
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 768px) {
            .box {
                width: calc(50% - 20px);
            }
        }

        @media (max-width: 480px) {
            .box {
                width: 100%; 
            }
        }
    </style>
</head>
<body>
    <%@ include file ="studentHeader.jsp" %>
    
    <div class="box-container">
        <div class="box">
            <a href="viewStCompany.jsp">
                <h2>View companies</h2>
                <p>Manage and view student information.</p>
            </a>
        </div>
        <div class="box">
            <a href="ss/viewss.jsp">
                <h2>Acheivements</h2>     
            </a>
        </div>
        
    </div>
	
    
</body>
</html>

