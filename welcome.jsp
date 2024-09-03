<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<style>
    body, html {
        margin: 0;
        padding: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f4f4f4;
    }

    #logo {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        background: url('https://files.oaiusercontent.com/file-WlX5q0XmqKk4d0gR9mOUuesz?se=2024-08-27T07%3A48%3A22Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D34a0da48-56b2-4e88-b47e-82e26936a804.webp&sig=hFZVYupRBtZ6HxEgy4VjhGS%2BxhcpLRYODFWCb6TWraE%3D') no-repeat center center;
        background-size: cover;
        filter: grayscale(100%);
        animation: loadAnimation 5s ease-in-out forwards;
    }

    @keyframes loadAnimation {
        0% { filter: grayscale(100%); transform: scale(1); }
        50% { filter: grayscale(50%); transform: scale(1.1); }
        100% { filter: grayscale(0%); transform: scale(1); }
    }

    #welcome-page {
        display: none;
        text-align: center;
    }

    #welcome-page.show {
        display: block;
    }

    #text {
       background: -webkit-linear-gradient(45deg, #09009f, #00ff95 80%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        font-family: 'Courier New', Courier, monospace;
        overflow: hidden;
        white-space: nowrap;
        border-right: 3px solid white;
        animation: typing 3s steps(30, end), blink-caret 0.75s step-end infinite;
        font-size: 40px;
        color: black;
        margin-bottom: 20px;
        font-weight: bold;
    }

    @keyframes typing {
        from { width: 0; }
        to { width: 100%; }
    }

    @keyframes blink-caret {
        from, to { border-color: transparent; }
        50% { border-color: white; }
    }
</style>
</head>
<body>

    <div id="logo"></div>

    <div id="welcome-page">
        <h1 id="text">Welcome To Apex Moments Services!</h1>
        <p>Your journey starts here.</p>
    </div>

    <script>
        window.onload = function() {
            setTimeout(function() {
                document.getElementById('logo').style.display = 'none';
                document.getElementById('welcome-page').classList.add('show');
            }, 5000);

            setTimeout(function() {
                window.location.href = "home.jsp";
            }, 10000);
        };
    </script>
</body>
</html>
