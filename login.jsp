<%@page import="controler.register"%>
<%@page import="model.regstration" %>
<%@page import="model.student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login Here</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" type="image/webp" href="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/030932d3-8fd0-44d9-b238-639b2d366e55/d3g51r9-8905ea1e-fa89-48dd-bf6b-b4145b9260a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzAzMDkzMmQzLThmZDAtNDRkOS1iMjM4LTYzOWIyZDM2NmU1NVwvZDNnNTFyOS04OTA1ZWExZS1mYTg5LTQ4ZGQtYmY2Yi1iNDE0NWI5MjYwYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LLAIscRAOS4bjOYM1UwBmz5ckHPJsrMiQApbogmZDvw" style="border-radius:50%;">

    <style>
      
 body {
            margin: 0;
            padding: 0;
            height: 100vh;
            width:auto;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
           
        }
  .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            margin-top:50px;
            overflow: hidden;
    animation: type 2.5s steps(300) forwards;
    white-space: nowrap;
    background-color: transparent;
    animation-iteration-count: 1; 
        }
         h2 {
         color:black;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        .form-group input {
            width: 100%;
            height: 45px;
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
         .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }
       button {
       margin-left:120px;
    background-color: #3498db;
    border: none;
    color: white;
    align-items:center;
    padding: 15px 32px;
    text-align: center;
    font-size: 16px;
    transition: transform 0.3s ease, background-color 0.3s ease;
  }
  
  button:hover {
    transform: scale(1.1);
    background-color: #2980b9;
  }
  .fade-in-section {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 1s ease-out, transform 1s ease-out;
}

.fade-in-section.visible {
  opacity: 1;
  transform: translateY(0);
}

        .error {
            color: red;
            font-size: 14px;
        }

        #msg {
            background: green;
            color: white;
            border: 1px solid green;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        marquee {
            color: #007BFF;
            font-weight: bold;
            font-size: 24px;
        }
      

@keyframes type {
    from {
        width: 0;
        background-color: rgb(128, 196, 230);
        color: #ccc;
        box-shadow: none;
        transform: translateY(-550px);
    }
    }
      #otp-inputs {
        display: flex;
        justify-content: space-between;
        max-width: 200px;
    }
    .otp-box {
        width: 30px;
        height: 40px;
        text-align: center;
        font-size: 20px;	
        margin-right: 5px;
    }
    </style>
</head>
 <%@include file="heder.jsp"%>
<body>

    <div class="container">
        <marquee behavior="alternate" direction="right" scrollamount="5" style="color: Black;">
            <h2>Login Here</h2>
        </marquee>
        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">
            <%= request.getAttribute("status")%>
        </div>
        <%}%>

        <form action="register" method="post" id="generate" target="_parent">
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter The Phone Number">
            </div>
            <button type="submit" name="generate" id="otpinput" onclick="otp()">Generate OTP</button>
        </form>

       <form action="register" method="post" target="_parent">
<div class="form-group">
    <label for="otp">OTP:</label>
    <div id="otp-inputs">
        <input type="text" class="form-control otp-box" maxlength="1" name="otp1" id="otp1">
        <input type="text" class="form-control otp-box" maxlength="1" name="otp2" id="otp2">
        <input type="text" class="form-control otp-box" maxlength="1" name="otp3" id="otp3">
        <input type="text" class="form-control otp-box" maxlength="1" name="otp4" id="otp4">
    </div>
</div>
    <button type="submit" name="Login" id="btn">Login</button>
</form>

    </div>
    <script type="text/javascript">
   
    function otp() {
       alert("Your Otp is <%= request.getAttribute("otp")%>")
    }

        jQuery.validator.addMethod("checkemail", function (value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"6]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        }, "Please enter the email format as abc@gmail.com");

        jQuery(document).ready(function ($) {
            $("#generate").validate({
                rules: {
                    phone: {
                        required: true,
                        minlength: 10
                    }
                },
                messages: {
                    phone: {
                        required: "Please enter the phone number.",
                        minlength: "Phone number should be at least 10 digits."
                    }
                }
            });
        });

        
        
        const otpBoxes = document.querySelectorAll('.otp-box');
        otpBoxes.forEach((box, index) => {
            box.addEventListener('input', () => {
                if (box.value.length === 1 && index < otpBoxes.length - 1) {
                    otpBoxes[index + 1].focus();
                }
            });
        });
    </script>
    <%@include file="footer.jsp"%>
</body>
</html>


       
       	

       
        


      