<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
        input[type="text"], input[type="password"], input[type="submit"], input[type="email"]
        {
            border: none;
            background:silver;
            height: 29px;
            font-size: 16px;
            margin-left:36%;
            padding:10px;
            width:28%;	
            border-radius: 25px;
        }
        h1,h2,h3,h4,h5,h6 {
            margin: 1rem;
        }
    </style>
</head>
<body>
    <div class="header">
        <font size="24" color="#ffffff">Donor Register</font>
        <div class="header-right">
            <a class="active" href="index.jsp">Home</a>
        </div>
    </div>
    <div class="container">
        <center><h1>Please Register below</h1></center>
        <center><h4>Already registered? <a class="active" href="donorLogin.jsp">Click here to login</a></h4></center>
        <br>
        <br>
        <%
            String msg=request.getParameter("msg");
                if("invalid".equals(msg)){
        %>
            <center>
                <font color ="red" size = "4">There was an error connecting to the database.</font>
            </center>
        <% } else if ("passwordMismatch".equals(msg)){ %>
            <center>
                <font color ="red" size = "4">Password mismatched.</font>
            </center>
        <% } %>
        <form action="donorRegisterAction.jsp" method="post">
            <div class="form-group">
                <center><h1>Username</h1></center>
                <input type="text" placeholder="Enter UserName" name ="username" required>
                <center><h1>Email</h1></center>
                <input type="email" placeholder="Enter Email" name="email" required>
                <center><h1>Password</h1></center>
                <input type="password" placeholder="Enter Password" name ="password" required>
                <center><h1>Confirm Password</h1></center>
                <input type="password" placeholder="Confirm Password" name ="confirmPassword" required>
                <center><button type = "submit" class= "button"><span>Submit</span></button></center>
            </div>
        </form> 
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>


    <div class="row1"> 
        <center><h3>© Copyright, Save Life Bank 2022</h3></center>
    </div>
</body>
</html>
