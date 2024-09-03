<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="icon" type="image/webp" href="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/030932d3-8fd0-44d9-b238-639b2d366e55/d3g51r9-8905ea1e-fa89-48dd-bf6b-b4145b9260a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzAzMDkzMmQzLThmZDAtNDRkOS1iMjM4LTYzOWIyZDM2NmU1NVwvZDNnNTFyOS04OTA1ZWExZS1mYTg5LTQ4ZGQtYmY2Yi1iNDE0NWI5MjYwYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LLAIscRAOS4bjOYM1UwBmz5ckHPJsrMiQApbogmZDvw" style="border-radius:50%;">
</head>
<body>
<style>
    body{
      background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);
      margin: 0;
      height: 100vh;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }
#two{
    margin-left:70px;
}
#one{
/* margin-top: 220px;
margin-left: 100px; */

}
input{
    font-weight: bold;
    background-color: #f4f4f4;
    padding:10px;
    height: 30px;
    width: 300px;
    
}
select{
    height:50px;
    width: 650px;
    margin-top:px;
    font-weight: bold;
}
label{

    text-align: center;
    font-weight: bold;
}
section{
      border:2px solid black;
    background-color: #ffffff;
    width: 1000px;
    display: flex;
    margin-left:200px;
    margin-top: 150px;
    height: 430px;
    padding-top: 30px;
    padding-left: 20px;
    background-color: transparent;
    
}
.one{
    display: flex;
    margin-bottom: 20px;
}
#oo{
    margin-left: 20px;
}
#email{
    width: 640px;
}
#lo{
    width: 640px;
}
h3{
    display: inline
}
table {
    border-collapse: collapse; 
  }
  td {
    padding: 5px;
  }
  button{
    font-weight: bold;
    margin-top: 50px;
    margin-left:-70px;
    background-color: black;
    color: white;
    width: 100px;
    height: 35px;
  }
  h1{
    text-align: center;
    margin-top:15px;
    color: black;
    margin-bottom: 10px;
  }
  u{
    margin-top: 15px;
    color:black;
  }
  iframe{
    margin-top:100px;
    width: 100%;
  }
  a{
     color:Black;
     font-variant: bold;
     margin-top:-50px;
  }
  #a{
     color: white;
  }
</style>
<body>
    <u> <h1>Contact Us..</h1></u>
    <section>
        
    <div id="one">
        <h3>Contact Details</h3>
        <p> <img src="https://cdn-icons-png.flaticon.com/128/149/149060.png" alt="" height="15px" width="15px"style="margin-right: 10px;">Plot No.765,8th Cross Road, M.R.C.R <br>Extension, Govindaraja Nagar Bangalore-,<br> 560040</p>
         <p><img src="https://cdn-icons-png.flaticon.com/128/552/552489.png" alt="" height="15px" width="15px" style="margin-right: 10px;">9307302496</p>
         <a href="#"><img src="https://cdn-icons-png.flaticon.com/128/17211/17211359.png" alt=""height="15px" width="15px" style="margin-right: 10px;">surajhonrao@pentagoanspace.in</a>
         <h4>Opning Hours</h4>
         <table>
            <tr>
                <td>Monday-Friday </td>        <td >  10:00-18:00</td>
            </tr>
            <tr>
                <td>Saturday  </td>               <td>10:00-14:00</td>
            </tr>
            <tr>
                <td>Sunday  </td>             <td> Closed</td>
            </tr>
         </table>
        </div>
    <div id="two">
         <div class="one">
        <input type="text" placeholder="Name"><br><br>
        <input type="number" maxlength="10" min="10" placeholder="Phone" id="oo"><br><br>
    </div>
    <form action="register" method="post">
        <input type="email" placeholder="Email" id="email"><br><br>
        <input type="text" placeholder="Location" id="lo"><br><br>
        <label for="">Select The Course::</label>
        <select>
         <option>Java Full Stack</option>
         <option>Python Full Stack</option>
         <option> Mern Stack</option>
         <option>Software Testing</option>
        </select><br><br>
            <a href="home.jsp" style="margin-right:100px; margin-left: -70px;">Back To Home</a> <button><img src="https://cdn-icons-png.flaticon.com/128/2111/2111644.png" alt="" height="15px" width="25px" style="margin-right: 10px; display:inline;" ><a href="home.jsp" id="a">Send </a> </button>
   </form>
    </div>
</section>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.941180723854!2d77.5397470108171!3d12.975613914737146!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3d6c513b16a5%3A0x44a65c5cfea3693!2sPentagon%20Space%20-%20Head%20office!5e0!3m2!1sen!2sin!4v1724009342813!5m2!1sen!2sin" width="1400px" height="650" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</body>
</html>