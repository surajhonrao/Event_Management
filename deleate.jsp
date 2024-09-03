<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.regstration"%>
<%@page import="model.student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <title>TODO supply a title</title>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   </head>
   <style>
    body {
                   margin: 0;
                   height: 100vh;
                   background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
                  
                   background-repeat: no-repeat;
                   background-attachment: fixed;
          }
       .errmsg{
           padding: 6px;
           color:black;
           font-weight: bold;
       }
       .jumbotron{
           background-color: white;
       }
       #search
       {
       opacity:10;
       border-radius:5%;
           width:300px;
           height:30px;  
       }
        #div{
        box-shadow:10px 10px 10px 1px black;
        margin-left:50px;
            margin-top:100px;
            height:250px;
            width:500px;
        }
        button {
	      color:white;
	      font-weight: bold;
	      
}
   </style>
   <body>
    <center>
       <%@include file="heder.jsp"%>
       <% if (request.getAttribute("status") != null) {%>
       <h3 class="errmsg"> <%= request.getAttribute("status")%></h3>
       <%}%>
             
        <div id="div">
       <br>
        
      
       <h2> Delete User </h2><br><br>
  
       <form action="register" method="post" target="_parent">
                <input class="form-control" id="search" type="text" placeholder="Search.." name="name"><br>
                <button name="delete"> Delete Account</button>
              </form>
              </center>
              </div>
   <%@include file="footer.jsp"%>
</body>
</html>
