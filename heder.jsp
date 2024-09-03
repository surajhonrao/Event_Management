<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <style>
            ul {
                list-style-type: none;
                margin: 0;
                padding: 10px;
                overflow: hidden;
              background: linear-gradient(45deg, #8E2DE2, #4A00E0);
              border-radius: 10px;
              

            }

            li {
                margin-right: 30px;
                float: right;
                height: 50px;
            }
            li a {
                display: block;
                color:black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover {
               background-color:black;
                color:white;
                transition: background 0.3s ease-in-out; 
                border-radius: 50%;
            }

            .name {
                margin-top: 14px;
                color: silver;
                margin-right: 10px;
                display: flex;
            }
            #img {
                border-radius: 45%;
            }
            #im {
                height: 20px;
                width: 20px;
            }
            #img1 {
            margin-top:-10px;
                height:70px;
                width:100px;
                background-attachment:cover;
                margin-left:-1480px;
                border-radius:50%;
            }
            .active {
               
            }
            #nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
        }

        #nav a:hover {
            background-color: #ddd;
            color: black;
        }
        </style>
    </head>
    <body style="margin: 0;">
    <div id="nav">
        <ul>
         <li>
                    <img id="img1" alt="" src="https://files.oaiusercontent.com/file-WlX5q0XmqKk4d0gR9mOUuesz?se=2024-08-27T07%3A48%3A22Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D34a0da48-56b2-4e88-b47e-82e26936a804.webp&sig=hFZVYupRBtZ6HxEgy4VjhGS%2BxhcpLRYODFWCb6TWraE%3D">
                </li>
            <% if (session.getAttribute("name") != null) { %>
                <li class="name">
                    <i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i>
                    <%=session.getAttribute("name")%>
                </li>
                <li><a href="register?logout=yes">Logout</a></li>
                <li><a href="Edit.jsp"><img src="https://cdn-icons-png.flaticon.com/128/7542/7542290.png" height="20px"></a></li>
                <% if ("23".equals(session.getAttribute("id"))) { %>
                    <li><a href="deleate.jsp"><i class="fa fa-trash"></i></a></li>
                    <li><a href="search.jsp"><i class="fa fa-search"></i></a></li>
                <% } %>
            <% } else { %>
                <li><a class="active" href="contact.jsp"><i class="fa fa-phone" style="margin-right: 10px;"></i>Contact Us</a></li>
                <li><a href="registration.jsp"><i class="fa fa-address-book"></i></a></li>
                <li><a href="login.jsp"><i class="glyphicon glyphicon-user"></i></a></li>
            <% } %>
            <li><a class="active" href="home.jsp"><i class="glyphicon glyphicon-home"></i></a></li>
        </ul>
        </div>
    </body>
</html>
