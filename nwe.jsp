<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn page</title>
<link rel="icon" href="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
    body{}
    
    .container {
    margin-left: 185px;
    max-width: 30vw;
    
    margin-top: 60px;
    padding: 20px;
    background-color: #edf4f511;
   box-shadow: -10px 18px 16px rgb(128, 196, 230);
    border-radius: 8px;
    text-overflow: clip;
    
    

          width: 200ch;
             border-left: 2px solid;
             border-bottom: 3px solid;
             border-top:1px solid;
            overflow: hidden;
            animation: type 2.5s steps(300);
              white-space: nowrap;

     }
 
/*     @keyframes type { */
/*         from { */
/*             width: 0; */
/*             background-color:rgb(128, 196, 230) ; */
/*             color: #ccc; */
/*             box-shadow: none; */
/*              transform: translateY(-550px);  */
            
             
/*         } */
/*     } */
    
    .container label {
    font-weight: bold;
    display:block;
    margin-top: 30px;

   }
    
    .container input {
    width: 95%;
    padding: 13px;
    margin-top: 5px;
    margin-left: 0px;
    border-radius: 4px;
    /* position:relative; */
    box-sizing: border-box;
     border: 1px solid #ccc;
   }

  .container button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 10px;
    margin-left:0px;

  }

   .container button:hover {
    background-color: #0056b3;
   }


/* for admin login style start from heare.. */
 .container2 {
    margin-left: 825px;
    max-width: 30vw;
    
    margin-top: -60vh;
    padding: 20px;
    background-color: #edf4f511;
   box-shadow: 10px 18px 16px rgb(128, 196, 230);
    border-radius: 8px;
    text-overflow: clip;
    
    

   width: 200ch;
             border-right: 2px solid;
             border-bottom: 3px solid;
             border-top:1px solid;
            overflow: hidden;
            animation: type 2.0s steps(300);
              white-space: nowrap;

  }

  @keyframes type {
        from {
            width: 0;
            
            background-color:rgb(128, 196, 230) ;
            color: #ccc;
            box-shadow: none;
            transform: translateY(-550px);
            
             
        }
    }
    
    .container2 label {
    font-weight: bold;
    display:block;
    margin-top: 30px;

  }
    
    .container2 input {
    width: 95%;
    padding: 13px;
    margin-top: 5px;
    margin-left: 0px;
    border-radius: 4px;
    /* position:relative; */
    box-sizing: border-box;
  border: 1px solid #ccc;
 }

  .container2 button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 10px;
    margin-left:0px;

 }

 .container2 button:hover {
    background-color: #0056b3;
 }
     

    </style>



</style>
    
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary"  >
        <div class="container-fluid" style="background-color: #88ceec;">
         <div>
                <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="logo" style="height: 80px; width: 160px;">
            </div>
          <a class="navbar-brand" href="index.jsp"  style="margin-left: 950px ; font-size: 35px; color:white;"> <b>Home</b></a>
<!--           <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--             <span class="navbar-toggler-icon"></span> -->
          </button>
          <div class="collapse navbar-collapse" id="navbarNav" >
            <ul class="navbar-nav" >
              <li class="nav-item">
                <a class="nav-link" href="#" style="margin-left: 20px;  font-size: 25px;color:white;"><b>about</b></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      
<!--       for login start heare -->
      
       <div class="container">
         <marquee behavior="alternate" direction="right" scrollamount="5"> <h2 style="text-shadow: 0px 0px 0px ; color: rgb(16, 17, 17);"><b> User_Login </b></h2></marquee>
        


        <form action="vmanagemnetlogin" method="post">

         
             <div class="input">
               <label for="email">Email Id:<span id="emailvalid" style="margin-left:20px;"></span><span id="ajaxemilvalid" style="color:red;"></span></label>
               <input type="email" id="emailid" name="emailid" placeholder="Enter your alternet email Id " onchange="emailvalidation()" required="required" value="${email}"}>
             </div>
             
              <div class="input">
               <label for="otp">OTP:<span id="otpmsg" style="margin-left:20px "></span> <span style="color:red;" id="errorMsg">${forotp}</span> </label>
               <input type="text" id="otp" name="otp" placeholder="Enter your otp " >
             </div>
             
             
              <a href="#"><button id="button" type="button" onclick="otpgenerater()">generate OTP</button></a>
                <a href="#"><button id="button"  onclick="submit()">submit</button></a>
                  <p style="margin-left: 0px; margin-top: 10px;">Don't have Account?  <a href="rigester.jsp">Rigester</a></p>
             
         </form>     
    </div>
    
    
<!--     for admin login start hear -->

 <div class="container2">
         <marquee behavior="alternate" direction="right" scrollamount="5"> <h2 style="text-shadow: 0px 0px 0px ; color: rgb(16, 17, 17);"><b> Admin_Login </b></h2></marquee>
        
      
       <form action="adminlogin" method="post">

         
             <div class="input">
               <label for="email">Email Id:<span id="emailvalid" style="margin-left:20px;"></span><span id="ajaxemilvalid" style="color:red;"></span></label>
               <input type="email" id="emailid" name="emailid" placeholder="Enter your  email Id " onchange="Adminemailvalidation()" required="required">
             </div>
             
              <div class="input">
               <label for="password">Password :<span id="password" style="margin-left:20px;"></span><span id="password" style="color:red;"></span></label>
               <input type="password" id="password" name="password" placeholder="Enter your password " onchange="password()" required="required">
             </div>
             
             
             
             
                <a href="#"><button id="button"  onclick="submit()">submit</button></a> <span style="color:red;">${adminerror}</span>
                  <p style="margin-left: 0px; margin-top: 10px;">Don't have Account?  <a href="rigester.jsp">Rigester</a></p>
             
         </form>     

    </div>
    
    

 <div class="footer" style="margin-top: 100px;background-color: #88ceec;">
      <div>
       <!-- <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="logo" style="height: 80px; width: 160px; margin-left: 570px;">-->
        <p style="margin-left: 750px;"><b> follow us on </b></p> 
        
        <img style="margin-left: 700px; margin-top: -20px" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAD30lEQVR4AayShW4cMRCGLQgzHArKDK9xor5KnyDMSZmZmZmZRWWuKMy8e3y7U8/KvXG6PlR+6dM3Wtv/tElYulnzHXI918HnvQZ7PNfgGfdvz1XQEJzFtz14B++y+crCO+D2XoG97ssw475swhwuGWSOK26T3zX24luWbZbehTxe1uS+YOiuCzGwOB+3mA2yAvcFU8cO7Mrsf30R3Lz4nfMcL+eglZyNkm3QGXZhJ0snzrOw3nE61uc4zQs4wmKOxC3PaIszZA4/I2On6zSsY8ni4P9Kx6loX/WJMCCOk5G47dCZ+r79HLtxR8LfueN45F318TDEORYiW4TJHBcvbf8QhT/TJoRiJkQME2bCJvRpJnwaM8TbuX24Q/k3wS82VR0JwRwOB8nSjF5xJgRvhgxIEtEj3kngLibHcQzc1YdDetWhICSj8iD5UW8MUsX+PoBGdNzJ/qXqQHBv5f4AVHCEBX4yp1LMG26EIJ2I+2hpFn18J8OsuQi5lXv9MxV7/ZAul35HIY0k7cCduJtV7tN95bt0sNgdt5g1sjR/GrX/+E9+j8DyI35xV7eh6q/cpftY2Q5tDwfSoVxYj5jwf5Yf4qV0j+bknXtY2bbZZxxIh9KtlkERfjaD52QFcgdSvl17xkq3zP4u3TwDSAlZAZ2pgmeZgrtZ6aZpraRrGpR0kuVZFTpXv1eBu1lpx5RW3DEFFu1kmWzSM21AiehC04wWc/uUxorbpn4XtU6CiuLWKcvZ5HVPxN7ZQkZwNytqnnxW1DwBSGETWSabnPsSkjuV4G5W2DC+hwPJyCZdL/22ngLJYt7DihonfAW1Y2BRR5bJJhtvaeL9OFoJ7mZrGiC3sHb8b6vlcdswFATRL2ZCDagAX12H+3DOOWe7A8d2fFQZlsRMXpzu6z8kVnGdPcDgDbRJ5InP/nFB3lFOTMlck1TVuW8gD8wzcRO3FeQfFvfeQUbeQU5M2K0yOGBJXlVjcmaO1HFTsernecPZTd/c3ZQ0CeTM7M+S3L0MNWbpT/a94abql7ebXDrburidECiZa5LsspZUZO+kzNI2Z31r9JPsmlx7M2namzHZG7J1vaQkp6qBff09csYN3FKS6jt5w1mPA2stos8sCb/b6zFzIPMcduOG+kzORjpurUaBtRKRuRwSsz8LqnpWQuaoV8MAu9V3VF/MG9Zi2DQXAxrwUlhSENeZA7aWwyY/+bc1tkKu/hOXxkLwZswHVLlTUlINNW0mjFnswC71W+FtGLOd+9ps+7k2qw/MtEmSrlNZB+c6z5jBrPo3nZNjzXQm1FTrjgSp6dYDakr3oFd9U+9y1lO9tTZT6gAAAABJRU5ErkJggg==" style="margin-left: 250px;">
       
        <img  style="margin-top: -20px; margin-left:10px; border-radius:50px; width:35px;" alt="twiterlogo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAV1BMVEX///8dofIAmvEAnPH2+/4GnvI0p/O22vq93vre7/3v+P7M5vvW6vwAmPHs9v6m0/mZzfiHxfdzvfbk8v1Bq/NpufUAlfGOyPcAkfBRsPR+wfZdtPTH4/udz3kPAAABLklEQVRIie2U2ZaDIAxAScLiVnHBOm39/++c0toptAZ65nHG+4bmSkwgQuzs/HuqZvyNZjUi0nBzx5qLWpaXB9IReBQaUUxHyYkTNvEDrWCFiI4Fm9f1fZTNTPBEGdmVjIgAaIN16IF2Xx23ow+kU/tY1pEIB9YT7l6I86qaSFSG9YR91HAq5JsIvOers36dyJ3trD4WxyBUUew5XpPYdXFw+IuXVKbEeqDmhNjzHhB/bq4XAXkRq1RxzIHN9JTyfOtoW6RE+2/ITm+bGc9ot72hzYgCtgurc54oNwuL7NAITHgvD6Wa/8S6l/pQ6rRFxCc218IfFh0li0NO8He3qudYU5hthJA9XodgnCVePhrjbR/eXkU4NXlpZekdoYf0YNjJzVCVTdnmw3Z2/jjfQWEJXwOeKIcAAAAASUVORK5CYII=">
        
        <img style="margin-top: -20px; margin-left:10px;" alt="instalogo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAABWVBMVEVyHVFHcEx0Fvp8Fv1yFP1/FfyLCOyfBOmtAeS7AuDHAd3UANjZAs7rD6xyFvzjANTqAMHoA7l2F/yPFfx8GPmfD/zFF/XVWujoZuLyZt3pRt/yGdHyA8j1AKTViPj/9Pr////8g9f9A7r3DZz5vO794Pf+ruj9B6uzFPv7JLv+AJr+BI/+YMP/1vD+AIThG+n9GZn/vd3/YZz+AXP+GoT/r8r+AmT/b5z+HHH+I3f+G2P/ur7+FFD+Klb+fYv/wcr+LUf+LWX+AFn+Nzr+Ohz+RT7+inP+Si7/ztD+TxL/zbv+Wy//9fH+WgL+c1X+ZyX+PUv+Bzv+VXD+cxr/6eL+aQT+eAX+nDj+gwD+gxH+fSL+rYn+jwD+iwL+XhX/3rn/1bH9ZR/+lwP+nwH+xHH8ZC3+qAH+sAD+wAP+x1P+zGb+pl79mQn+uAD9J3T+ygD9O1n8pRL9twuaEkMNAAAAc3RSTlMBAF3G///////////GW9j//9nY/1r///////////7//////8b/////////////////////////////////////////////////////////////////////////////////xf///1v////////Y/9j/2VzGSus+GgAAAeNJREFUeAFFjEWiU0EQRc/tqu74V9wZ4TBiB6wG3wpzVoQ7zHCXeELypHH+KVchJAESaEs0IUv0Zv+7fwLgSAOk9ZFghcnfDw4AAg18cyhWCKNVob9NCZjQLWVrEGhJbJGDoCBpMwCrJTETAKBWgdeRGb4dmJW56PdI/KU1K4X15N+AFsW0+3/WVm7Pa0Pmu4Fh7HcbRIjMIhr3FItUGAH4SNZKjK32YjKpK3Iv0yUY0b8g0Vs0oK+8wbeyMBAQwVeo44R1z7XWq6rqpn5jiTmAeQO3iceg9zkYzKvc71iEmMFbqCJJ4tDcKFrLjX5D/MEdq8GpIUUgd/tgGboTgiUDPDZ44SXNpr0gWRcAgqEmEPJRNVPOxYaOth0oAHdCxWoOzslH+RCvlafYMgFUHvAIHoCjz16io80BrH/j0AAcJ9KWKkhn5sRyGjsDtr/sqyrsWNO1cW9/cDNLZgHLSzVvn+wMq9qbKKwy7TiIaKTW56pzW6Oa+N1OKEQdvvl2RyOE4DEOZurd1cHNeab27tyjOPfhFlucXP04ovF97B6jTOzdJwFLaNAff7N6c8incH1VpiSR67q2VgjzUU7JgbMTiQtFKmgAsCAuczlflmVZn7iGBFc1awB/p4tqUS3LDb8OPwBrSrZIO/KHZwAAAABJRU5ErkJggg==">
        <img style="margin-top: -20px; margin-left:10px" alt="linkedinlogo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAB20lEQVRYhWP8//8/w0ACpgG1nYGBgQXGaNh106Jx160lDAwMyjS28269m1pMg5v6CQYGBgZGWBQwlmy+QwfL4Y743+OrwsCAGgX0shzFLhZcKjzURRnSLRUYGBgYGGYef8Cw4+ZrmrgEqwM81EUZtqdawPkBOhIMnrNP0MQRWHMBzOeExGjmAHoCrA6YefwBUWLUAFjTwI6brxk8Z58YuEQIcwSplioIcjKIcLMxvPn6i+HJxx8Mf/4RLuZxOuB/jy8Kn7FkM4b4gbtvGTxnn2Aod1JhyLFWZBDhZoPL/fj9l2HFhWcMlduuM7z4/JN0BxADeNiYGXanWzDYKApjyHGwMjMkmMoyWMgLMlhOOszw4ccfrGZQlAtMZAWwWo4MNMR4GLKtFXHKUy0bvvn6i+HBu28MX35i+jRETxKnPoqigIGBgeHPv38MqasuMiw484SBgYGBQYCDhWF9oimDg7IIXI2OJC9O/RSHwJSjD+CWMzAwMHz48Yehdc9tFDUsTLitodgBK88/xRC78+Yr0fopdgC2LPbh+2/6OeDB+++YDsCR5WjiAErBqANGHYDcLKdrF+l/jy8jA8MgCAFkB9ylo71wu+AOqHdTi6GTI+7uz7SMgHEYR3zvGABAiZoIrctOXgAAAABJRU5ErkJggg==">
        <p style="margin-left: 650px; margin-top: 0px">Copyright @ 2024, All Right Reserved</p>
        </div>
        
        
<script>
function emailvalidation() {
	let emails=document.getElementById("emailid").value;
	console.log("emails")
	 //var validRegex = '/^[a-zA-Z0-9.!#$%&+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$/';
	if( emails.length>5 && emails.length<=50){
		document.getElementById("emailvalid").innerHTML="";
		
	}else{
		document.getElementById("emailvalid").innerHTML="<span style='color:red;'>must be valid</span>";
	}
	
	
}

function otpgenerater() {
	let email=document.getElementById("emailid").value;

	const xhttp= new XMLHttpRequest();
    xhttp.open("GET","http://localhost:8080/PinXworkz/generateOTP/"+email);
    xhttp.send();

    xhttp.onload=function(){
    console.log(this);
    document.getElementById("otpmsg").innerHTML=this.responseText;
    document.getElementById("errorMsg").style.display ="none";
    }
	 
	
}



// consle.log("otp generation")
// consle.log(otpgenerater())
</script>
      

</body>
</html>
</body>
</html>