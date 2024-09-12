<%@page import="com.net.company.companyDAO.CompanyDAO"%>
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Company</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .container {
        margin-top: 30px;
    }
    
    .card {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        border-radius: 10px;
        background-color: #f8f9fa;
    }

    .form-label {
        font-weight: bold;
    }

    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
        font-weight: bold;
        transition: background-color 0.3s, box-shadow 0.3s;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .text-center {
        margin-bottom: 20px;
    }

    .bg-warning {
        background-color: #ffc107!important;
    }

    .form-control {
        border-radius: 5px;
    }

    .container.w-75 {
        max-width: 800px;
        margin: auto;
    }
</style>
</head>
<body>
    <%@ include file="adminHeaderC.jsp" %>

<div class="container">
    <h1 class="text-center">Update Company</h1>
    <div class="card">
        <% 
        String cidStr = request.getParameter("id");
        int cid = 0;
        try {
            cid = Integer.parseInt(cidStr);
        } catch (NumberFormatException e) {
            System.out.println("Invalid input: " + cidStr);
        }
        System.out.println(cid);

        ResultSet rs = CompanyDAO.ShowUpdate(cid);
        rs.next();
        String cname = rs.getString(1);
        String requirement = rs.getString(2);
        String location = rs.getString(3);
        String role = rs.getString(4);
        String ctc = rs.getString(5);
        
        %>

        

        <form method="post" action="updtecmpny.jsp">
            <div class="mb-3">
                <label class="form-label">Company Id</label>
                <input type="text" class="form-control" name="cid1" value="<%= cid %>" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">Company Name</label>
                <input type="text" class="form-control" name="cname" value="<%= cname %>" required>
            </div>
            <input type="hidden" name="cid" value="<%=cid%>">
            <div class="mb-3">
                <label class="form-label">Requirement</label>
                <input type="text" class="form-control" name="requirement" value="<%= requirement %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Location</label>
                <input type="text" class="form-control" name="location" value="<%= location %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Role</label>
                <input type="text" class="form-control" name="role" value="<%= role %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">CTC</label>
                <input type="text" class="form-control" name="ctc" value="<%= ctc %>" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Update Record</button>
        </form>
    </div>
</div>
</body>
</html>
