<%@page import="com.net.story.storyDAO.StoryDAO"%>
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achievements</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card-wrapper {
    margin-bottom: 20px;
    position: relative;
}

.card-img-top {

    height: 180px;
    object-fit: cover;
}

.card-title {
    font-size: 1.2rem;
}

.card-text {
    max-height: 100px;
    overflow: hidden;
    text-overflow: ellipsis;
}

.card-text-expanded {
    max-height: none;
}

.btn-see-more {
    display: block;
    margin-top: 10px;
}

.btn-delete {
    position: absolute; /* Position relative to .card-body */
    bottom: 10px;
    right: 10px;
    padding: 2px 5px;
    font-size: 0.7rem;
    border-radius: 3px;
}
.img {
    margin-left: 90px;
    margin-top:12px;
    width: 40%;
}
.imgcontainer{
	height:20%;
}

    </style>
    
</head>
<body>
    <%@ include file="studentHeaderS.jsp" %>

    <div class="container">
        <div class="header-section text-center mb-4">
            <h1>Achievements</h1>
        </div>

        <div class="row">
            <% 
                ResultSet rs = StoryDAO.ViewStory();
                while (rs.next()) {
                    int ssid = rs.getInt(1); 
           //         String imgSrc = "'eventimg/'<% rs.getString(1) "; 
                    String sname = rs.getString(2); 
                    String cname = rs.getString(3);
                    String position = rs.getString(4);
                    int ctc = rs.getInt(5); 
                    String batch = rs.getString(6);
                    String experience = rs.getString(7);
                    String experiencePreview = experience.length() > 100 ? experience.substring(0, 100) + "..." : experience;
            %> 
                <div class="col-md-4">
                    <div class="card card-wrapper">
                    	<div  class="imgcontainer">
                    		<img src="studentImg/<%=sname%>.jpeg" class="img" alt="Image">
                    	</div>
                        <div class="card-body">
                            <h5 class="card-title"><%= cname %></h5>
                            <p class="card-text"><strong>Student Name:</strong> <%= sname %></p>
                            <p class="card-text"><strong>CTC:</strong> <%= ctc %></p>
                            <p class="card-text"><strong>Position:</strong> <%= position %></p>
                            <p class="card-text"><strong>Batch:</strong> <%= batch %></p>
                            <p class="card-text 
                            <%= experience.length() > 100 ? "card-text" : "card-text-expanded" %>">
                            <%= experiencePreview %>
                            </p>
                            <% if (experience.length() > 100) { %>
                                <a href="#" class="btn btn-link btn-see-more" 
                                onclick="this.previousElementSibling.classList.toggle('card-text-expanded');"+
                                "this.innerText = this.innerText === 'See more' ? 'See less' : 'See more';">See more</a>
                            <% } %>
                        </div>
                    </div>
                </div>
            <% 
                } 
            %>
        </div>

    </div>
    
    
</body>
</html>
