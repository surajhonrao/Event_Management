<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Here</title>
</head>
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
section{
   margin-top:50px;
   height:400px;
   width:400px;
    animation: type 2.5s steps(300) forwards;
    white-space: nowrap;
    background-color: transparent;
    animation-iteration-count: 1; 
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
label{
  font-weight: bold;
}
input{
font-weight:bold;
text-align:center;
border-radius:5px;
margin-top:10px;
    height: 35px;
    width: 300px;
}
 button {
    margin-left:auto;
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
#ls{
  margin-left: -260px;
}
a{
   margin-left: -200px;
   text-decoration: none;
   color: black;
}
</style>
<body>
<center>
 
    <form action="register" method="post">
      
<section>
   <h1>Book Your Hall</h1>
        <label id="ls">Name:</label><br>
        <input type="text" id="name" name="name" class="form-control" placeholder="Enter Your Name" required><br><br>

        <label style="margin-left: -200px;">Function Type:</label><br>
        <input type="text" id="function" name="fun" class="form-control" placeholder="Enter The Function Type" required><br><br>

        <label style="margin-left: -260px;">Date:</label><br>
        <input type="date" id="date" name="date" class="form-control" placeholder="Choose The Date For Event Booking" required><br><br>

        <label style="margin-left: -240px;">Strength:</label><br>
        <input type="number" id="strength" name="strength" class="form-control" placeholder="Strength of People" required><br><br><br>

        <button id="btn" name="book">Book Here</button><br>
        <a href="Event.jsp"> <img alt="" src="https://cdn-icons-png.flaticon.com/128/8213/8213392.png" width="25px" height="25px" style="margin-top: 5px;">Back To List</a>
        </section>
           
                
    </form>
</center>

</body>
</html>
