<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to APEX Moments Services</title>
    <link rel="icon" type="image/webp" href="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/030932d3-8fd0-44d9-b238-639b2d366e55/d3g51r9-8905ea1e-fa89-48dd-bf6b-b4145b9260a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzAzMDkzMmQzLThmZDAtNDRkOS1iMjM4LTYzOWIyZDM2NmU1NVwvZDNnNTFyOS04OTA1ZWExZS1mYTg5LTQ4ZGQtYmY2Yi1iNDE0NWI5MjYwYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LLAIscRAOS4bjOYM1UwBmz5ckHPJsrMiQApbogmZDvw" style="border-radius:50%;">
    <style>
        body {
            background-image: url("path/to/your/background-image.jpg"); /* Update with your background image URL */
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            font-family: Arial, sans-serif;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
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
            color:black;
            margin-bottom: 20px;
            font-weight: bold;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 50%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color: white; }
        }

        .carousel {
            position: relative;
            width:100%;
            height: 500px;
            overflow: hidden;
            background: #000;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }

        .carousel-images {
            display: flex;
            width: 300%;
            height: 100%;
            animation: slide 50s ease-in-out infinite;
        }

        .carousel-images img {
            width:100%;
            height: 100%;
            object-fit: cover;
            transition: opacity 10s ease-in-out;
        }

        @keyframes slide {
            0% { transform: translateX(0); }
            33% { transform: translateX(-100%); }
            66% { transform: translateX(-200%); }
        }
         .flip-card {
        
            background-color: transparent;
            width: 300px;
            height: 200px;
            cursor: pointer;
            margin-left:-1050px;
            margin-bottom: 150px;
            
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 3.0s;
            transform-style: preserve-3d;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        .flip-card:hover .flip-card-inner {
            transform: rotatey(180deg);
        }

        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden; /* Safari */
            backface-visibility: hidden;
            border-radius: 10px;
        }

        .flip-card-front {
           background-image:url("https://png.pngtree.com/thumb_back/fw800/background/20240704/pngtree-nice-event-management-outdoor-image_15980786.jpg");
           background-position:center;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        .flip-card-back {
            background: linear-gradient(45deg, #8E2DE2, #4A00E0);
            color: white;
            transform: rotatey(180deg);
            
            align-items: center;
            justify-content: center;
            font-size: 16px;
            padding: 10px;
            box-sizing: border-box;
        }
        .card-container {
            display: inline-block;
            text-align: center;
            margin: 20px;
        }
                                                                                    
        .card2 {
            width: 300px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0,yellow);
            
            transition: transform 0.3s ease;
            margin-bottom: 15px;
        }
        #c2{
           margin-top: -200px;
        }
        .card2 img {
            width: 100%;
            height: auto;
            filter: grayscale(100%);
            transition: filter 0.5s ease;
        }

        .card2:hover img {
            filter: grayscale(0%);
        }

        .card2:hover {
            transform: scale(1.05);
        }

        .card2-title {
            font-size: 1.2em;
            margin: 10px 0;
            font-weight: bold;
        }

        .card2-description {
            font-size: 1em;
            color: #555;
        }

        .card2 a {
            text-decoration: none;
            color: inherit;
        }


                                                                            
.card3 {
            width: 300px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.6s ease;
        }

        .card3 img {
            width: 100%;
            height: auto;
            filter: grayscale(100%);
            transition: filter 0.5s ease;
        }

        .card3:hover img {
            filter: grayscale(0%);
        }

        .card3:hover {
            transform: rotate(10deg);
        }
        #c3{
             margin-left:800px;
             margin-bottom: 50px;
        }
        #all{
           display: inline-block;
        }
        h4{
           background: -webkit-linear-gradient(45deg, #09009f, #00ff95 80%);
            -webkit-background-clip: text;
           -webkit-text-fill-color: transparent;
           font-family: monospace;
            overflow: hidden;
            white-space: nowrap;
            border-right: 2px solid white;
            animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
            font-size:40px;
            color:black;
            margin-bottom: 20px;
            font-weight: bold;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 50%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color: white; }
        }
        h3{
         background: -webkit-linear-gradient(45deg, #000000, #555555 80%);
            -webkit-background-clip: text;
           -webkit-text-fill-color: transparent;
          font-family: monospace;
            overflow: hidden;
            white-space: nowrap;
            border-right: 2px solid white;
            animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
            font-size: 24px;
            color:black;
            margin-bottom: 20px;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 50%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color: white; }
        }
        }
        
  @keyframes slideUp {
            0% {
                transform: translateY(100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity:0.5;
            }
        }

        #eff {
        background:transparent;
            animation: slideUp 2s ease-in-out forwards;
            margin-top:50px;
            margin-left: -700px;
            margin-bottom: 100px;
                        transition: transform 0.5s ease;
            
        }
         #eff :hover img {
            transform: scale(1.1);
        }
#content{
margin-left:650px;
margin-top:-370px;
    width:1000px;
    height: auto;
  
   
}
#para{
    margin-top: 50px;
    margin-left: 550px;
    }
    
#about{
    margin-top: -400px;
    margin-left:600px;
    font-family: monospace;
            overflow: hidden;
            white-space: nowrap;
            border-right: 2px solid white;
            animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
            font-size: 24px;
            color:black;
            margin-bottom: 20px;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 50%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color: white; }
        }
        }
    </style>
</head>
<body >
    <%@ include file="heder.jsp" %>
    <center>
        <h1 class="text">Welcome To APEX Moments Services....</h1>
        <div class="carousel">
            <div class="carousel-images">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVVP7Pg0_P7m4NTxhds3kP3-aGX4z2y7ynCeSgLABZITz7WBY6UF1x4Bz_ibs6SffhTUM&usqp=CAU" alt="Image 1">
                <img src="https://partyslate.imgix.net/companies-cover-image/45874/image-69cad7dc-5a41-47a5-b14c-4fbf9d8f707d.jpg?ixlib=js-2.3.2&auto=compress%2Cformat&bg=fff&w=2400" alt="Image 2">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRofwty7VYfrW06rDndKDS6MxOntPG1rEC57AfTwmV24gF8or6924h5dej8vnShQmu07Gw&usqp=CAU" alt="Image 3">
                 <img src="https://saboormanagement.weebly.com/uploads/1/4/4/9/144978108/500008693_orig.jpg" alt="Image 4">
            </div>
        </div>
        
        
          
                                                              <!-- About Us -->
             <div id="eff">                                               
             <div class="photo">
        <img src="https://img.freepik.com/premium-vector/event-management-wedding-planner-manager-planning-event-conference-party_501813-2157.jpg"  id ="img5" alt=""  height="500px" width="500px">
        </div>  
        <div id="content">
       <h2 id="about"> About us...</h2>
         <p id="para">Welcome to our world of extraordinary events, where every occasion is crafted to perfection! Led by our visionary CEO, Suraj Honrao, we are committed to transforming your special moments into unforgettable experiences. With a blend of creativity, precision, and passion, our team excels in curating events that reflect your unique style and vision. As of August 28, 2024, we continue to lead the industry in delivering innovative solutions, ensuring each event not only meets but exceeds expectations. Whether it's a grand corporate gathering or an intimate celebration, we are here to bring your dreams to life.</p>
    </div>   
    </div>                                              
                                                              
                                                               <!-- first Cart -->
           <section id="all">                                                  
        <div>
          <h4 style="font-weight: bold; margin-top: 50px;">  Our Services.... </h4>
          <div class="flip-card">
    <div class="flip-card-inner">
        <div class="flip-card-front">
            <h2>Light Area</h2>
        </div>
        <div class="flip-card-back">
            <p>Details about the event go here. You can include information like the date, time, location, and any other relevant details.</p><br><br>
            <a href="#" style="text-decoration: none; color: black;">Know More</a>
        </div>
    </div>
</div>

                                                        <!-- Second Cart -->
   <a href="food.jsp">
   <div id="c2">
      <div class="card2">
        <img src="https://www.shutterstock.com/image-photo/businesswomen-eating-work-cafeteria-260nw-1571366512.jpg" alt="Card Image">
        <h3>Food Session...</h3>
    </div>
    
      </div> 
               </a>                                             <!-- Thired Cart -->
        <div id="c3">
         <div class="card3">
         <a href="Event.jsp">
        <img src="https://www.pavilionsinteriors.com/images/events7.jpg" alt="Rotate Effect Card Image">
        </a>
        <h3>Event Pavilion..</h3>
    </div>
        </div>
      
      </section>  
      
        </div>
    </center>
      <%@ include file="footer.jsp" %>
</body>
</html>
