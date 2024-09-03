<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Registration Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <link rel="icon" type="image/webp" href="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/030932d3-8fd0-44d9-b238-639b2d366e55/d3g51r9-8905ea1e-fa89-48dd-bf6b-b4145b9260a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzAzMDkzMmQzLThmZDAtNDRkOS1iMjM4LTYzOWIyZDM2NmU1NVwvZDNnNTFyOS04OTA1ZWExZS1mYTg5LTQ4ZGQtYmY2Yi1iNDE0NWI5MjYwYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LLAIscRAOS4bjOYM1UwBmz5ckHPJsrMiQApbogmZDvw" style="border-radius:50%;">
    </head>
    <body>
        <script>
            jQuery.validator.addMethod("checkemail", function(value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            });

            jQuery(document).ready(function($) {
                $("#signup").validate({
                    rules: {
                        name: {
                            required: true
                        },
                        email: {
                            required: true,
                            checkemail: true
                        },
                        phone: {
                            required: true,
                            minlength: 10,
                            maxlength: 10
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                        cp: {
                            required: true,
                            minlength: 6,
                            equalTo: "#pw"
                        }
                    },
                    messages: {
                        name: {
                            required: "Please enter the name."
                        },
                        email: {
                            required: "Please enter the email.",
                            email: "Please enter a valid email ID."
                        },
                        phone: {
                            required: "Please enter the phone number.",
                            minlength: "Please enter a 10-digit phone number.",
                            maxlength: "Phone number cannot exceed 10 digits."
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Password must be at least 6 characters long."
                        },
                        cp: {
                            required: "Please reenter the password.",
                            minlength: "Password must be at least 6 characters long.",
                            equalTo: "Passwords do not match."
                        }
                    }
                });
            });
        </script>
        <style>
            .error {   
                color: black;
            }
            body {
                margin: 0;
                height: 100vh;
                background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
            #msg {
                background: transparent;
                color: black;
                border: 1px solid red;
                width: 50%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
                margin-bottom: 20px;
            }
            #sub {  
                margin-top: 30px;
                width: 200px;
                margin-bottom: 150px;
                transition: transform 0.3s ease, background-color 0.3s ease;
            }
            button:hover {
    transform: scale(1.1);
    background-color: #2980b9;
  }
  
            #div {
                width: 500px;
                height: 500px;
                overflow: hidden;
                animation: type 2.5s steps(300) forwards;
                white-space: nowrap;
                background-color: transparent;
                animation-iteration-count: 1; 
            }
            
            .text {
                background: -webkit-linear-gradient(45deg, #09009f, #00ff95 80%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                font-family: monospace;
                overflow: hidden;
                white-space: nowrap;
                border-right: 2px solid white;
                animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
                font-size: 24px;
                margin-bottom: 20px;
                font-weight: bold;
            }

            @keyframes typing {
                from { width: 0; }
                to { width: 70%; }
            }

            @keyframes blink-caret {
                from, to { border-color: transparent; }
                50% { border-color:black; }
            }
        </style>
        <%@include file="heder.jsp"%>
        <br><br>
        <center>
            <div id="div">
                <% if (request.getAttribute("status") != null) {%>
                <div id="msg"><%= request.getAttribute("status") %></div>
                <% } %>

                <h2 class="text">Register Here......</h2>

                <form method="POST" id="signup" action="register" target="_parent">
                    <div class="form-group">
                        <label style="margin-left: -450px;">Name:</label>
                        <input type="text" id="name" name="name" class="form-control" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label style="margin-left: -450px;">Phone:</label>
                        <input type="number" name="phone" class="form-control" placeholder="Phone No">
                    </div>
                    <div class="form-group">
                        <label style="margin-left: -450px;">Email:</label>
                        <input type="email" name="email" class="form-control" placeholder="Email Id">
                    </div>
                    <div class="form-group">
                        <label style="margin-left: -420px;">Password:</label><br>
                        <input type="password" id="pw" name="pw" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label style="margin-left: -370px;">Confirm Password:</label><br>
                        <input type="password" name="cp" class="form-control" placeholder="Confirm Password">
                    </div>
                    <button name="register" value="Register" id="sub" class="btn btn-primary btn-block">Register</button>
                </form>
            </div>
        </center>
        <%@include file="footer.jsp"%>
    </body>
</html>
