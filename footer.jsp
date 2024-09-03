<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .footer {
            background-color: #2c3e50;
            color: white;
            padding: 30px 0;
            text-align: center;
        }

        .footer-content {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 20px 0;
        }

        .footer-section {
            flex: 1;
            margin: 20px;
            min-width: 200px;
        }

        .footer-section h2 {
            font-size: 18px;
            margin-bottom: 15px;
            color: #f39c12;
        }

   

        .footer-section .social-icons a {
            color: white;
            margin: 0 10px;
            font-size: 18px;
            transition: color 0.3s;
        }

        .footer-section .social-icons a:hover {
            color: #f39c12;
        }

        .footer-bottom {
            padding: 20px 0;
            border-top: 1px solid #f39c12;
        }

        .footer-bottom p {
            margin: 5px 0;
            font-size: 14px;
        }

 .card {
 margin-top:-50px;
  height:100px;
  width:100px;
  border-radius:10%;
  overflow: hidden;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.card img {
  width:100px;
  height: auto;
  filter: grayscale(100%);
  transition: filter 0.5s ease;
}

.card:hover img {
  filter: grayscale(0%);
}

.card:hover {
  transform: scale(1.05);
}
           
    </style>
    <body>
        <footer class="footer">
            <div class="footer-content">
                <div class="footer-section about">
                 <a href="#"> <div class="card">
        <img src="https://files.oaiusercontent.com/file-WlX5q0XmqKk4d0gR9mOUuesz?se=2024-08-27T07%3A48%3A22Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D34a0da48-56b2-4e88-b47e-82e26936a804.webp&sig=hFZVYupRBtZ6HxEgy4VjhGS%2BxhcpLRYODFWCb6TWraE%3D" alt="Footer Image">
      </div></a>
                    <h2>About Us</h2>
                    <p>We are a team of passionate developers creating awesome web experiences.</p>
                </div>
                <div class="footer-section links">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-section social">
                    <h2>Follow Us</h2>
                    <div class="social-icons">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Apex Moments. All rights reserved.</p>
                <p id="date-time"></p>
              
            </div>
        </footer>
        <script type="text/javascript">
            function updateTime() {
                const now = new Date();
                const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit' };
                const dateTimeString = now.toLocaleDateString('en-US', options);
                document.getElementById('date-time').textContent = dateTimeString;
            }

            setInterval(updateTime, 1000);
            updateTime(); // Initial call to display time immediately
        </script>
    </body>
</html>
