<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 29px;
    font-size: 16px;
	margin-left:35%;
	padding:10px;
	width:28%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg)){
	%>
	 <center><font color ="red" size = "4">Invaild Username/Password.</font></center>
	 <%
	 }%>
 <form action="adminLoginAction.jsp" method = "post">
 <div class="form-group">
  <center><h1>Username</h1></center>
  <input type="text" placeholder="Enter UserName" name ="username" required>
  <center><h1>Password</h1></center>
  <input type="password" placeholder="Enter Password" name ="password" required>
  <center><button type = "submit" class= "button"><span>Submit</span></button></center>
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
<div class="container">
</body>
</html>
