<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Records - Job Portal</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .table-wrapper {
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .table th, .table td {
            text-align: center;
        }
        .table th {
            background-color: #007bff;
            color: #ffffff;
        }
        .btn-add {
            margin-top: 20px;
            background-color: #28a745;
            color: #ffffff;
            border-radius: 5px;
            border: none;
             padding: 10px 20px;
            font-size: 16px;
        }
        .btn-add:hover {
            background-color: #218838;
        }
        .header-section h1 {
        font-size: 45px;
        font-weight: bold;
        text-align:center;
        display: inline-block;
        padding-bottom: 10px;
    }
    </style>
</head>
<body>
    <%@ include file="adminHeader.jsp" %>

    <div class="container">
    <div class="header-section">
        <h1>View Record Page</h1>
    </div>

        <div class="table-wrapper">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Student ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">DOB</th>
                        <th scope="col">Roll No</th>
                        <th scope="col">Phone No</th>
                        <th scope="col">Skill</th>
                        <th scope="col">Resume</th>
                        <th scope="col">Operations</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rs = AdminDAO.Show();
                        int count = 1;
                        while (rs.next()) {
                            int id = rs.getInt(1);
                            String name = rs.getString(2);
                            String email = rs.getString(3);
                            String dob = rs.getString(4);
                            int rollno = rs.getInt(5);
                            String phno = rs.getString(6);
                            String skill = rs.getString(7);
                            String resume = rs.getString(8); 

                            out.print(
                                "<tr>" +
                                " <th>" + count + "</th>" +
                                " <td>" + id + "</td>" +
                                " <td>" + name + "</td>" +
                                " <td>" + email + "</td>" +
                                " <td>" + dob + "</td>" +
                                " <td>" + rollno + "</td>" +
                                " <td>" + phno + "</td>" +
                                " <td>" + skill + "</td>" +
                                " <td>" + resume + "</td>" +
                                " <td>" +
                                " <a href='updateStudent.jsp?sroll=" + rollno + "' class='btn btn-primary btn-sm text-white'>Update</a>" +
                                " <a href='deleteStudent.jsp?sroll=" + rollno + "' class='btn btn-danger btn-sm text-white'>Delete</a>" +
                                " </td>" +
                                "</tr>"
                            );
                            count++;
                        }
                    %>
                </tbody>
            </table>
        </div>

        <div class="text-center">
            <button class="btn-add" onclick="window.location.href = 'addStudent.jsp';">Add Students</button>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
