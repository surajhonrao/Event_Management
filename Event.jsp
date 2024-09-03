<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.4.0/dist/confetti.browser.min.js"></script>
    
    <title>Event Management</title>
    <style>
       body {
       background-color: #D9AFD9;
background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
       background-position:center;
       background-attachment:fixed;
       
            font-family: Arial, sans-serif;
            margin: 20px;
            
        }
        h1{
            background: -webkit-linear-gradient(45deg, #09009f, #00ff95 80%);
            -webkit-background-clip: text;
           -webkit-text-fill-color: transparent;
           font-family: monospace;
            overflow: hidden;
            margin-left:100px;	
            white-space: nowrap;
            border-right: 2px solid white;
            animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
            font-size: 24px;
            color:black;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 50%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color:none; }
        }
        }
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
        }
        #city-select{
           height: 35px;
           width: 200px;
        }
        .dropdown {
            margin-bottom: 20px;
            text-align: center;
            height:105px;
        }
        .card-container {
            display: none;
            flex-direction: column;
            gap: 20px;
            width: 80%;
            margin: auto;
        }
        .card-container.active {
            display: flex;
        }
        .card {
        position: relative;
            display: flex;
            flex-direction: row;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .hover-message {
    position: absolute;
    bottom:60px;
    left: 520px;
    color:green; 
    font-weight:bold;
    font-size:30px;
    padding: 10px;
    border-radius: 5px;
    opacity:0;
    align-items:center;
    transition: opacity 0.3s ease;
    }
       
        .card img {
            width:250px;
            height:200px;
            object-fit: cover;

        }
        .card-content {
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .card-content h3 {
            margin: 0 0 10px;
            font-size: 1.5em;
            color: #333;
        }
        .card:hover .card-content {
    opacity: 0.5; 
}
.card-content:hover .hover-message {
    opacity:2; 
}

        .card-content p {
            margin: 0;
            color: #777;
        }
        .status-container {
            margin-top: 10px;
        }
        .status {
            font-size: 25px;
            font-weight: bold;
        }
        .open {
            color: green;
        }
        .closed {
            color: red;
        }
        a{
         text-decoration: none;
         color: #777;
        }
        #book{
           color: green;
           text-decoration: none;;
        }
        #ll{
          height: 
        }
    </style>
</head>
 <%@include file="heder.jsp"%>
<body>

    <div class="container">
        <h1>Event Pavilion Information......</h1>
        
        <div class="dropdown">
            <label for="city-select" id="ll">Choose a city:</label>
            <select id="city-select">
                <option value="">Select a city</option>
                <option value="pune">Pune</option>
                <option value="mumbai">Mumbai</option>
                <option value="bengaluru">Bengaluru</option>
                <option value="mysuru">Mysuru</option>
            </select>
        </div>

       <div class="card-container" id="pune">
    <div class="card">
        <img src="https://lh3.googleusercontent.com/p/AF1QipNM154HSqh70b4P-kKB6SU8B-ue03BWNKpynuiO=s1360-w1360-h1020" alt="Image 1">
        <div class="card-content">
            <h3>Siddhi Gardens and Banquets</h3>
            <p><b>Address::</b> Vakil Nagar, Erandwane, Pune, Maharashtra 411004.</p>
            <p><b>Phone:: </b> <a href="#"> 082828 24640 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</a></div>
            <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
    </div>
    <div class="card">
        <img src="https://lh3.googleusercontent.com/p/AF1QipMP6J1f0SF6KkgveGo9pIRT7FauruUAjjkVcE1C=s1360-w1360-h1020" alt="Image 2">
        <div class="card-content">
            <h3>Vishnukrupa Hall</h3>
            <p><b>Address::</b> Shaniwar Peth, Pune, Maharashtra 411030.</p>
            <p><b>Phone:: </b> <a href="#" >020244 57202 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
             <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
    </div>
    <div class="card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyniszpiOip4bR74m1K5WV1T-HMqlESvDRwxNABzYLQKq4PcTsbBKuxHcQrJOoQJSgo9o&usqp=CAU" alt="Image 3">
        <div class="card-content">
            <h3>Urban Banquets - Best Banquet hall in Pune</h3>
            <p><b>Address::</b> Ishanya Mall Rd, Shastrinagar, Yerawada, Pune, Maharashtra 411006</p>
            <p><b>Phone:: </b><a href="#">093092 36450 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
             <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
    </div>
    <div class="card">
        <img src="https://lh3.googleusercontent.com/p/AF1QipMerlCn6CiHR96JIBIbJCWrEercI3Ev4sm7Dn9b=s1360-w1360-h1020" alt="Image 4">
        <div class="card-content">
            <h3>Mantraa Banquet Hall</h3>
            <p><b>Address::</b> Lokmanya Colony, Kothrud, Pune, Maharashtra 411038.</p>
            <p><b>Phone:: </b> <a href="#" > 099232 57367 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
             <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
    </div>
</div>


        <div class="card-container" id="mumbai">
           <div class="card">
        <img src="https://cdn0.weddingwire.in/vendor/0008/3_2/960/jpg/photo-2024-05-13-15-48-161_15_80008-172421852031791.jpeg" alt="Image 1">
        <div class="card-content">
            <h3>Shree Mangal Karyalay</h3>
            <p><b>Address::</b> Vakil Nagar, Erandwane, Mumbai, Maharashtra 411004.</p>
            <p><b>Phone:: </b> <a href="#"> 082828 24640 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</a></div>
            <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
            </div>
           <div class="card">
        <img src="https://cdn0.weddingwire.in/vendor/6396/3_2/960/jpg/img-20181213-wa0022_15_86396-164751597351257.jpeg" alt="Image 1">
        <div class="card-content">
            <h3>Silverador Boutique Hotel.</h3>
            <p><b>Address::</b> Vakil Nagar, Erandwane, Mumbai, Maharashtra 411004.</p>
            <p><b>Phone:: </b> <a href="#"> 082828 24640 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</a></div>
            <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
            </div>
            <div class="card">
        <img src="https://content.jdmagicbox.com/comp/mumbai/u7/022pxx22.xx22.170923132246.c8u7/catalogue/anant-royal-banquet-kandivali-west-mumbai-banquet-halls-eys2nmb2wu.jpg" alt="Image 1">
        <div class="card-content">
            <h3>Siddhi Gardens and Banquets</h3>
            <p><b>Address::</b> Vakil Nagar, Erandwane, Mumbai, Maharashtra 411004.</p>
            <p><b>Phone:: </b> <a href="#"> 082828 24640 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</a></div>
            <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
            </div>
           <div class="card">
        <img src="data:image/jpeg;base64,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" alt="Image 1">
        <div class="card-content">
            <h3>Siddhi Gardens and Banquets</h3>
            <p><b>Address::</b> Vakil Nagar, Erandwane, Mumbai, Maharashtra 411004.</p>
            <p><b>Phone:: </b> <a href="#"> 082828 24640 </a></p>
            <p><b>Hours:: </b> 10 Pm - To - 6 Am</p>
            <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</a></div>
            <div class="status-container">
                <div id="office-status" class="status"></div>
            </div>
        </div>
        </div>

        <div class="card-container" id="bengaluru">
            <div class="card">
                <img src="https://lh3.googleusercontent.com/p/AF1QipNrlQ66vpNSLL6Hg2JTDXBDqyMgR-5ddzENFFFA=s1360-w1360-h1020" alt="Image 1">
                <div class="card-content">
                    <h3>Nandhana Party Hall</h3>
                    <p>Shivanagar, Rajajinagar, Bengaluru, Karnataka 560010.</p>
                    <p>Phone:<a href="#">+91 8047097541 </a></p>
                    <p id="p3">Hours: 10 AM -- 18PM </p>
                    <div class="hover-message"><a href="bookEvent.jsp" id="book"> Book the Hall </a></div>
                    <div class="status-container">
                   <div id="office-status" class="status"></div>
                    </div>
                </div>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/p/AF1QipP4BSJSH0s0G5o1ZAfy57IlhibNTIQ9Rp3d22Wc=s1360-w1360-h1020" alt="Image 2">
                <div class="card-content">
                    <h3>Sambhrama Party Hall (SPH)</h3>
                    <p>Rajajinagar, Bengaluru, Karnataka 560079</p>
                    <p>Phone: <a href="#"> +91 9538111234 </a></p>
                    <p id="p3">Hours: 10 AM -- 18PM </p>
                    <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
                    <div class="status-container">
                   <div id="office-status" class="status"></div>
                    </div>
                </div>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/p/AF1QipMj34Lwe4TFliuBjNyoX2bwRgToi0rLeA9_4j0u=s1360-w1360-h1020" alt="Image 3">
                <div class="card-content">
                    <h3>Gangamma Thimmaiah Party Hall</h3>
                    <p>Thimmaiah Rd, Layout, Bengaluru, Karnataka 560079</p>
                    <p>Phone:<a href="#">+91 9307302496</a></p>
                    <p id="p3">Hours: 10 AM -- 18PM </p>
                    <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
                    <div class="status-container">
                   <div id="office-status" class="status"></div>
                    </div>
                </div>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/p/AF1QipOfSelYYkbYLoYb6ikZrHSBOfXJnl8tBNCDwKrb=s1360-w1360-h1020" alt="Image 4">
                <div class="card-content">
                    <h3>SLM Party Hall</h3>
                    <p> Magadi Main Rd, Bengaluru, Karnataka 560023.</p>
                    <p>Phone:<a href="#">+91 8459597606</a></p>
                    <p id="p3">Hours: 10 AM -- 18PM </p>
                    <div class="hover-message"><a href="bookEvent.jsp" id="book">Book the Hall</div>
                    <div class="status-container">
                   <div id="office-status" class="status"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-container" id="mysuru">
            <div class="card">
                <img src="image1.jpg" alt="Image 1">
                <div class="card-content">
                    <h3>Card Heading 1</h3>
                    <p>This is the message for the first card.</p>
                </div>
            </div>
            <div class="card">
                <img src="image2.jpg" alt="Image 2">
                <div class="card-content">
                    <h3>Card Heading 2</h3>
                    <p>This is the message for the second card.</p>
                </div>
            </div>
            <div class="card">
                <img src="image3.jpg" alt="Image 3">
                <div class="card-content">
                    <h3>Card Heading 3</h3>
                    <p>This is the message for the third card.</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h3>Card Heading 4</h3>
                    <p>This is the message for the fourth card.</p>
                </div>
            </div>
        </div>
    </div>

     <script>
     function al() {
         let status = '<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>';
         if (status) {
             alert(status);

             confetti({
                 particleCount:2000,
                 spread:100,
                 origin: { x: 0, y: 1 } 
             });
             confetti({
                 particleCount:2000,
                 spread:100,
                 origin: { x: 1, y: 1 }
             });
         }
     }
     setTimeout(al, 5000);

     document.getElementById('city-select').addEventListener('change', function() {
         // Hide all sections
         var sections = document.querySelectorAll('.card-container');
         sections.forEach(function(section) {
             section.classList.remove('active');
         });

         // Show the selected section
         var selectedCity = this.value;
         if (selectedCity) {
             document.getElementById(selectedCity).classList.add('active');
         }
     });

     // Set office hours (24-hour format)
     var openingTime = 10;  // Office opens at 10:00 AM
     var closingTime = 18;  // Office closes at 6:00 PM

     function updateOfficeStatus() {
         var now = new Date();
         var currentHour = now.getHours();
         var statusElements = document.querySelectorAll('#office-status');

         statusElements.forEach(function(statusElement) {
             if (currentHour >= openingTime && currentHour < closingTime) {
                 statusElement.textContent = "Open";
                 statusElement.classList.remove('closed');
                 statusElement.classList.add('open');
             } else {
                 statusElement.textContent = "Closed";
                 statusElement.classList.remove('open');
                 statusElement.classList.add('closed');
             }
         });
     }
     updateOfficeStatus();
     setInterval(updateOfficeStatus, 60000);
 </script>
</body>
</html>
