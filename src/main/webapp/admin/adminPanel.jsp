<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
             background-image: url("adminimages/adminbg.jpg");
            background-size: cover; /* Ensure the background covers the entire page */
            background-position: center;
            background-attachment: fixed; /* Background stays fixed on scroll */
        }

        /* Container for the boxes */
        .box-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: flex-start;
            margin: 40px auto;
            max-width: 1200px;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for the container */
            padding: 20px;
            border-radius: 10px;
        }

        /* Individual box styling */
        .box {
            width: calc(25% - 40px);
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            padding: 20px;
            margin: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-sizing: border-box;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 280px;
        }

        /* Box content styling */
        .box img {
            max-width: 80px;
            margin-bottom: 15px;
            transition: transform 0.3s ease;
        }

        .box .image {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .box h2 {
            font-size: 20px;
            color: #333;
            font-weight: bold;
            margin-top: 20px;
        }

        /* Hover effects */
        .box:hover {
            transform: translateY(-5px);
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.15);
        }

        .box:hover img {
            transform: scale(1.1);
        }

        /* Responsive adjustments */
        @media (max-width: 1024px) {
            .box {
                width: calc(50% - 40px);
            }
        }

        @media (max-width: 768px) {
            .box {
                width: calc(50% - 30px);
                margin: 15px;
            }
        }

        @media (max-width: 480px) {
            .box {
                width: 100%;
                margin: 15px 0;
            }
        }
    </style>
</head>
<body>
    <%@ include file ="adminHeader.jsp" %>

    <div class="box-container">
        <div class="box">
            <a href="viewStudent.jsp">
                <div class="image">
                    <img src="adminimages/viewStudent.png" alt="View Students">
                </div>
                <h2>View Students</h2>
            </a>
        </div>
        <div class="box">
            <a href="company/viewCompany.jsp">
                <div class="image">
                    <img src="adminimages/company.png" alt="Manage Companies">
                </div>
                <h2>Manage Companies</h2>
            </a>
        </div>
        <div class="box">
            <a href="ss/viewss.jsp">
                <div class="image">
                    <img src="adminimages/achievement.png" alt="Manage Achievements">
                </div>
                <h2>Manage Achievements</h2>
            </a>
        </div>
        <div class="box">
            <a href="company/viewApplication.jsp">
                <div class="image">
                    <img src="adminimages/application.png" alt="Applications">
                </div>
                <h2>Applications</h2>
            </a>
        </div>
    </div>
</body>
</html>
