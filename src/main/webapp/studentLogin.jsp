<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal - Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f0f0;
            padding-top: 60px; 
            padding-bottom: 60px; 
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }

        .login-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .login-card h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .login-card input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .login-card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .login-card button:hover {
            background-color: #45a049;
        }

        .login-card .btn-secondary {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .login-card .btn-secondary:hover {
            background-color: #0056b3;
        }

        .login-card a {
            text-decoration: none;
            color: #007bff;
            display: block;
            margin-top: 10px;
            text-align: center;
        }

        .login-card a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%@ include file="headfoot.jsp" %>

    <div class="login-container">
        <div class="login-card">
            <h2>Login As Student</h2>
            <form action="student/studentLog.jsp" method="POST">
                <input type="number" name="rollno" placeholder="Roll No" required>
                <input type=text name="dob" placeholder="DOB(dd/mm/yyyy)" required >
                <button type="submit">Login</button>
                <button type="button" class="btn-secondary" onclick="window.location.href='studentSignup.jsp';">Sign Up</button>
                <a href="adminLogin.jsp">or Login as Admin</a>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
