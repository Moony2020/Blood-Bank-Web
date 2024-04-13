<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>	
input,select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:45%;	
	border-radius: 25px;
	margin-left:27%;
}
</style>
</head>
<body>
<style>



</style>
<div class="header">
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
  </div>
</div>
<br/>



<h2>Click Book button below to go to the booking page</h2>
<div class=
"container2">
<form action="addNewBook.jsp" method="post">



<center><button type ="submit" class = "button">Book</button></center>
</form>
  </div>

</body>
</html>