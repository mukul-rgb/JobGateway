<%@page import="com.net.company.companyDAO.CompanyDAO"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .container {
        margin-top: 20px;
    }
    
    .header-section {
        text-align: center;
        margin-top: 40px;
    }
    
    .header-section h1 {
        font-size: 45px;
        font-weight: bold;
        
        display: inline-block;
        padding-bottom: 10px;
    }
    
    .add-button {
        margin-top: 20px;
        color: white;
        background-color: #00cc44;
        border-radius: 5px;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s;
    }
    
    .add-button:hover {
        background-color: #00e64d;
    }
    
    .table-container {
        background-color: #f8f9fa;
        padding: 20px;
        border-radius: 8px;
    }
    
    .table-container .btn {
        margin-right: 5px;
    }
    
</style>
</head>
<body>
    <%@ include file="adminHeaderC.jsp" %>
    
    <div class="container">
        <div class="header-section">
            <h1>Enlisted Companies</h1>
        </div>
        
        <div class="table-container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Company ID</th>
                        <th scope="col">Company Name</th>
                        <th scope="col">Requirement</th>
                        <th scope="col">Location</th>
                        <th scope="col">Role</th>
                        <th scope="col">CTC</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        ResultSet rs = CompanyDAO.Show();
                        int count = 1;
                        while (rs.next()) {
                            int cid = rs.getInt(1);
                            String cname = rs.getString(2);
                            String requirement = rs.getString(3);
                            String location = rs.getString(4);
                            String role = rs.getString(5);
                            String ctc = rs.getString(6);
                    %>
                    <tr>
                        <th scope="row"><%= count %></th>
                        <td><%= cid %></td>
                        <td><%= cname %></td>
                        <td><%= requirement %></td>
                        <td><%= location %></td>
                        <td><%= role %></td>
                        <td><%= ctc %></td>
                        <td>
                            <a href='updateCompany.jsp?id=<%= cid %>' class='btn btn-primary'>Update</a>
                            <a href='deleteCompany.jsp?id=<%= cid %>' class='btn btn-danger'>Delete</a>
                        </td>
                    </tr>
                    <% 
                            count++;
                        } 
                    %>    
                </tbody>
            </table>
        </div>

        <div class="text-center">
            <button class="add-button" onclick="window.location.href = 'addCompany.jsp';">Add Company</button>
        </div>
    </div>
    
</body>
</html>
