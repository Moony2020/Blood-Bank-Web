<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Title Here</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Move your CSS styles to an external stylesheet for better organization */

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Navbar styling */
        .navbar {
            overflow: hidden;
            background-color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            color: yellow;
            box-shadow: 0 0 20px green;
            border-radius: 40%;
        }

        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }

        /* Header styling */
        .header {
            text-align: center;
            padding: 10px 0;
            background-color: white;
            color: white;
        }

        .header h5 {
            margin: 0;
            align-items: center;
            text-align: center;
            color: black;
        }

        /* Slideshow styling */
        .slideshow-container {
            max-width: 80%;
            position: relative;
            margin: auto;
        }

        .mySlides {
            display: none;
            width: 100%;
        }

        /* Footer styling */
        .footer {
            text-align: center;
            margin-top: 20px;
            background-color: black;
            color: white;
            padding: 10px;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
        }

        /* Save Life Bank logo styling */
        .logo {
            color: yellow; /* Change logo color to yellow */
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="logo">Save Life Bank</div> <!-- Replace the img tag with the logo text -->
    <div>
        <a href="index.jsp">Home</a>
        <a href="info.jsp">Info</a>
        <a href="adminLogin.jsp">Admin Login</a>
        <a href="donorLogin.jsp">Donor</a>
    </div>
</div>

<div class="header">
    <h5>Welcome to Save Life Bank</h5>
    <div class="slideshow-container">
        <img class="mySlides" src="image/welcome.png" alt="Welcome Image">
        <img class="mySlides" src="image/bloodbank3.jpg" alt="Blood Bank Image">
        <img class="mySlides" src="image/bloodbank8.jpg" alt="Blood Bank Image">
    </div>
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {
            myIndex = 1
        }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>

<br>

<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
    <center><font color="red" size="4">Form submitted successfully. You will get notified within 24 hours.</font></center>
    <%
}
%>
<%
if ("invalid".equals(msg)) {
%>
    <center><font color="red" size="4">Invalid data. Please try again.</font></center>
    <%
}
%>

<center><h1>Enter your details to request blood</h1></center>
<form action="indexFormAction.jsp" method="post">
    <center>
        <input type="text" name="name" placeholder="Enter Name" required>
        <input type="text" name="age" placeholder="Enter age" required>
        <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
        <input type="email" name="email" placeholder="Enter Email Address" required>
        <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
        <button class="button1" type="submit"><span>Submit</span></button>
    </center>
</form>

<br>
<br>

<div class="footer">
    <h3>&copy; Copyright, Save Life Bank 2022</h3>
</div>

</body>
</html>
