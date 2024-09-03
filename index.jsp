<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="icon" type="image/webp" href="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/030932d3-8fd0-44d9-b238-639b2d366e55/d3g51r9-8905ea1e-fa89-48dd-bf6b-b4145b9260a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzAzMDkzMmQzLThmZDAtNDRkOS1iMjM4LTYzOWIyZDM2NmU1NVwvZDNnNTFyOS04OTA1ZWExZS1mYTg5LTQ4ZGQtYmY2Yi1iNDE0NWI5MjYwYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LLAIscRAOS4bjOYM1UwBmz5ckHPJsrMiQApbogmZDvw" style="border-radius:50%;">
    </head>
    <style>
     body {
                   margin: 0;
                   height: 100vh;
                   background-image:url("logo(2).png");
                   background-repeat: no-repeat;
                   background-attachment: fixed;
          }
        h1{
            text-align: center;
            text-shadow: 2px 1px 2px red;
            color:black;
        }
        .errmsg{
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
         #img2{
        opacity:0.5;
        height:700px;
        width: 100%;
        margin-top:-410px;
        }
       marquee {
    background-color: black;
    height: 50px;
    font-weight: bold;
    color: white;
    margin-top: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
}
 
#he{
text-align: center;
 text-shadow: 2px 1px 2px black;
color:red;
}
h3{
  font-weight:bold;
}
    </style>
    <body>
     <marquee>
    <b>Welcome To Pentagon Space</b>&nbsp;&nbsp;#New Batch Started&nbsp;&nbsp;&nbsp;&nbsp;Our Services&nbsp;&nbsp;&nbsp;&nbsp; :: &nbsp;&nbsp;Java Full Stack&nbsp;&nbsp;::&nbsp;&nbsp;Python Full Stack&nbsp;&nbsp;::&nbsp;&nbsp;MERN Stack&nbsp;&nbsp;For Admission Contact The Number On&nbsp;&nbsp;
    <b>Suraj Honrao Sir (CEO): 9307302496...</b>
</marquee>

    <center>
        <% if (request.getAttribute("status") != null) {%>
        <h1><%= request.getAttribute("status")%></h1>
        <%}%>
        <br>
        <div>
            <h1 id="he">Suraj Tech Pvt. Ltd</h1>
<% 
    Object sessionId = session.getAttribute("id");
    if (sessionId != null && sessionId.equals("23")) { 
%>
    <h3 style="margin-right: 10px;">Welcome Sir</h3>
<% 
    } 
%>
  </div><br><br><br><br>
        <%if(session.getAttribute("name") != null) {%>
        <h1>  Welcome <%= session.getAttribute("name")%></h1>
        <h1><%=session.getAttribute("email") %></h1>
        <h1>Your Srno is<%=session.getAttribute("id") %></h1>
        <%}%>
         <div id="img2">
        <img src="https://media.licdn.com/dms/image/C5612AQGnrTL2MyF_mw/article-cover_image-shrink_720_1280/0/1645784271135?e=2147483647&v=beta&t=iJnrUuxtiKD5_xfzP7z2wYLrav3PfUVEyHwMDoVbWuA" width="100%" height="750px"></div>
    </center>
</body>
</html>
