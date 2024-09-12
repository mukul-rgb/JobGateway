<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Job Portal</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f0f0;
            padding-top: 60px; /* Space for the fixed header */
            padding-bottom: 60px; /* Space for the fixed footer */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .signup-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }

        .signup-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
        }

        .signup-card h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .signup-card input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .signup-card button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .signup-card button:hover {
            background-color: #218838;
        }

        .signup-card .btn-secondary {
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

        .signup-card .btn-secondary:hover {
            background-color: #0056b3;
        }

        .signup-card a {
            text-decoration: none;
            color: #007bff;
            display: block;
            margin-top: 10px;
            text-align: center;
        }

        .signup-card a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%@ include file="headfoot.jsp" %>

    <div class="signup-container">
        <div class="signup-card">
            <h2>Sign Up As Student</h2>
            <form action="student/studentReg.jsp" method="post">
                <input type="number" name="sid" placeholder="Student Id" required>
                <input type="text" name="name" placeholder="Name" required>
                <input type="text" name="email" placeholder="Email" required>
                <input type="date" name="dob" placeholder="DOB">
                <input type="number" name="rollno" placeholder="Roll No" required>
                <input type="text" name="phno" maxlength="10" placeholder="Phone No" required>
                <input type="text" name="skill" placeholder="Skills" required>
                <input type="file" name="resume" placeholder="Upload Resume">
                <button type="submit">Sign Up</button>
                <a href="studentLogin.jsp" class="btn-secondary">Login as Student</a>
                <a href="adminLogin.jsp" class="btn-secondary">Login as Admin</a>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
