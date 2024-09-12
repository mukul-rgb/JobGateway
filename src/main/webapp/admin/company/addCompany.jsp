<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Company</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-bottom: 30px;
            font-size: 2rem;
            color: #333;
            text-align: center;
            text-decoration: underline;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            color: #fff;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
        }

        .mb-3 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="../adminHeader.jsp" %>
    <div class="container">
        <h1>Add Company</h1>
        <form method="post" action="addcmpy.jsp">
            <div class="mb-3">
                <label class="form-label" for="cname">Company Name</label>
                <input type="text" class="form-control" id="cname" name="cname" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="requirement">Requirement</label>
                <input type="text" class="form-control" id="requirement" name="requirement" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="location">Location</label>
                <input type="text" class="form-control" id="location" name="location" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="role">Role</label>
                <input type="text" class="form-control" id="role" name="role" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="ctc">CTC</label>
                <input type="text" class="form-control" id="ctc" name="ctc" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Company</button>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
