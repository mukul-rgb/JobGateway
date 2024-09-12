<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href = "css/login.css">
</head>
<body>
	<div class="login-admin">
		<h2>Login As Admin</h2>
		<form action="admin/adminPanel.jsp">
			<input type="number" name="id" placeholder="Id" required> 
			<input type="password" name="password" placeholder="Password">
			<button type="submit">Login </button>
			<a href="signup.jsp">or click to signup</a>
		</form>		
	</div>
	
	<div class="login-user">
		<h2>Login As Student</h2>
		<form action="user/userPanel.jsp" method="POST">
			<input type="number" name="rollNo" placeholder="RollNo" ><br>
			<input type="date" name="dob" placeholder="DOB" ><br>
			<button type="submit">Login </button>
			<a href="signup.jsp">or click to signup</a>		
		</form>
	</div>


	<a href="signup.jsp">Or click to signup</a>

	<a href="user/userProfile.jsp">new jsp testing</a>


</body>
</html>