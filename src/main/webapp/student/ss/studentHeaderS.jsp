
<%
if (session.getAttribute("sid") == null)
	response.sendRedirect("../studentLogin.jsp");
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body, html {
	margin: 0;
	padding: 0; 
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
}

.navbar {
	background-color: #343a40;
}

.navbar-brand {
	color: white;
	font-size: 40px;
	font-weight: bold;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
}

.navbar-nav .nav-link {
	color: white;
	font-size: 18px;
}

.navbar-nav .nav-link:hover {
	color: #ffc107;
}

.navbar-toggler {
	border-color: rgba(255, 255, 255, 0.1);
}

.navbar-toggler-icon {
	color: white;
}

.navbar-nav {
	margin-left: auto;
}

body {
	padding-top: 56px;
}

footer {
	background-color: #333;
	color: white;
	padding: 10px 20px;
	text-align: center;
	width: 100%;
	position: fixed;
	bottom: 0;
	left: 0;
}
</style>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<a class="navbar-brand" href="../adminPanel.jsp">Admin Dashboard</a>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="../studentPanel.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="../studentProfile.jsp">Profile</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="../adminLogout.jsp">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<footer>
        <p>&copy; 2024 Job Gateway Portal. All rights reserved. <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>
</body>
</html>
