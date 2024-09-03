<%@ page import=" model.student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change The Password</title>
</head>
<%@include file="heder.jsp"%>
<script>
            jQuery.validator.ad	dMethod("checkemail", function(value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"6]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            }, "Please enter the email format as abc@gmail.com");

            jQuery(document).ready(function($) {
                $("#change").validate({
                    rules: {
                        email: {
                            required: true,
                            checkemail: true
                        },
                        phone: {
                            required: true,
                            minlength:10,
                            maxlength:10
                        },
                    },
                    messages: {
                        email: {
                            required: "Please enter the email.",
                        },
                        phone: {
                            required: "Please enter the Mobile No.",
                            minlength: " Mobile Number is less than 10 Digit.",
                            maxlength:"Mobile number is greter than 10 Digit"
                        },
                    }
                });
            });



        </script>
<style>
body {
  margin: 0;
  height: 100vh;
  background-color: #D9AFD9;
  background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
  background-repeat: no-repeat;
  background-attachment: fixed;
}
input {
box-shadow: 10px 10px 8px #888888;
border-radius:10%;
  height: 35px;
  width: 300px;
  text-align: center;
  display: block;
  font-weight:bold;
}
#div{
     margin:auto;
     width:500px;
     border:2px solid black;
     height:500px;
     box-shadow: 10px 10px;
     margin-top:70px;
     text-align: center;
     background-color: transparent;
}
button {
	background-color: #0093E9;
    background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
	color:white;
	height: 35px;
	width:150px;
	font-weight: bold;
}
button:hover {
	   background-color: #0093E9;
       background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #ffffff 100%);
       color:#FA742B;	    
}
h2{
     text-shadow: 2px 2px 5px black;
       font-weight: bold;
}
marquee {
            font-weight: bold;
            font-style: inherit;
	}
	#a{
         color:black;
         font-weight: bold;
         margin-left: -150px;
}
</style>
<body>
 <section id="div">
 <center>
 
 <marquee>
 <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>
        </marquee>
        
<form action="register" method="post" id="forget">
<h2>Change PIN..</h2><br>
    <input type="email" placeholder="Enter the Email Id" name="email"><br> <br>
    <input type="number" placeholder="Enter the Phone no" name="phone" ><br> <br>
    <input type="password" placeholder="Enter New Password" name="npass"  id="pw"><br> <br>
    <input type="password" placeholder="Confirm New Password" name="cnpass" ><br> <br>
    <button name="change" id="change">Change Password</button><br> <br>
     <a href="login.jsp"><img alt="" src="https://cdn-icons-png.flaticon.com/128/9710/9710431.png" height="20px" width="20px" style="margin-right: 10px;" id="a">Back To Login</a>
</form>
</center>
</section>

<%@include file="footer.jsp"%>
</body>
</html>
	