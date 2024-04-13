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

        .mySlides {
            display: none;
        }

        div img {
            width: 100%;
            height: 450px;
            margin-bottom: 100px;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 30px 160px;
        }

        /* Styling for footer */
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
    </style>
</head>
<body>
<%-- Include your header here --%>
<%@include file="header.html"%>

<br>
<div>
    <img class="mySlides" src="image/welcome.png" alt="Welcome Image">
    <img class="mySlides" src="image/bloodbank3.jpg" alt="Blood Bank Image">
    <img class="mySlides" src="image/bloodbank8.jpg" alt="Blood Bank Image">
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
        setTimeout(carousel, 3000); // Change image every 3 seconds
    }
</script>
<br>
<div class="footer">
    <h3>&copy; Copyright, Save Life Bank 2022</h3>
</div>
</body>
</html>
