<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Gateway Portal</title>
    <style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 0; /* Remove default margin */
    padding: 0; /* Remove default padding */
}

header {
    background-color: #333;
    color: white;
    width: 100%;
    padding: 15px 20px;
    display: flex;
    justify-content: center; /* Center the content */
    align-items: center;
    position: fixed; /* Use fixed positioning for consistency */
    top: 0;
    left: 0;
    z-index: 1000;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Optional shadow for better visibility */
}

header .logo {
    font-size: 28px;
    font-weight: bold;
    letter-spacing: 2px;
}

.main-content {
    margin-top: 70px; /* Adjust space to accommodate the header height */
    width: 100%;
    max-width: 1200px;
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
footer p{
	margin-bottom:0px;
}

    </style>
</head>
<body>

   <header>
        <div class="logo">Job Gateway Portal</div>
    </header>

    <div class="main-content">
        <!-- Main content of your website goes here -->
    </div>

    <footer>
        <p>&copy; 2024 Job Gateway Portal. All rights reserved. <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

</body>
</html>
