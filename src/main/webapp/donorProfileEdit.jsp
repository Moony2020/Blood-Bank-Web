
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
	<style>
		input[type="text"], input[type="password"], input[type="submit"], input[type="email"], input[type="number"]
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
        select
        {
            border: none;
            background:silver;
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
<%
String id= request.getParameter("id");
if (id == null) {
	response.sendRedirect("donorLogin.jsp");
	return;
}
try{
    Connection connection=ConnectionHandler.getConnection();
    Statement statement=connection.createStatement();
    ResultSet rs = statement.executeQuery("select * from donorrecords where id='"+ id +"'");
    while(rs.next()){
%>
 <div class="container">
 	<form action="addNewBook.jsp" method= "post">
 		<input type= "hidden" name= "id" value="<%=id%>">
 		<center><h2>Full Name</h2></center>
 		<input type= "text" value="<%=rs.getString(5)%>" name="fullname">
 		<center><h2>Email</h2></center>
 		<input type= "text" value="<%=rs.getString(3)%>" name="email">
 		<center><h2>Address</h2></center>
 		<input type= "text" value="<%=rs.getString(6)%>" name="address">
		
 		<center><h2>Mobile Number</h2></center>
 		<input type= "number" value="<%=rs.getString(7)%>" name="mobilenumber">
 		
 		<center><h2>Weight (Min: 50)</h2></center>
        <input type="number" value="<%=rs.getString(9)%>" name="weight">
 		<br>
 		<center><button type ="submit" class = "button">Save</button></center>
 		
 	</form>
 </div>
<%
    }}
catch(Exception e){
	System.out.println(e);
}
%>





<br>
<br>
<br>
<br>
<h3><center>© Copyright, Save Life Bank 2022  </center></h3>

</body>
</html>