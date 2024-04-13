<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%@include file="header.html"%>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"], select {
    border: none;
    background: silver;
    height: 50px;
    font-size: 16px;
    margin-left: 35%;
    padding: 15px;
    width: 33%;
    border-radius: 25px;
}

#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 35%;
}

#customers td, #customers th {
    border: 1px solid #FF1493;
    padding: 5px;
}

#customers tr:nth-child(even) {
    background-color: #f2f2f2;
}

#customers tr:hover {
    background-color: #ddd;
}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #00008B;
    color: white;
}

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
<div class="container2">
<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg)){
%>
<center><font color="red" size="4">Something went wrong, Please try again.</font></center>
<%	
}%>

<%
if("valid".equals(msg)){
%>
<center><font color="red" size="4">Successfully Updated</font></center>
<%	
}%>


<form action="manageStockAction.jsp" method="post">
<div class="form-group">
<center><h4>Select Blood Group</h4></center>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>

<center><h4>Select Increase/Decrease</h4></center>
<select name="incdec">
<option value="inc">Increase</option>
<option value="dec">Decrease</option>
</select>

<center><h4>Units</h4></center>
<input type="text" placeholder="Enter Units" name="units">
<center><button type="submit" class="button">Save</button></center>
</div>
</form>
<br>
<center>
<table id="customers">
<tr>
<th>Blood Group</th>
<th>Units</th>
</tr>
<tr>
<%
try{
    Connection connection=ConnectionHandler.getConnection();
    Statement statement=connection.createStatement();
    ResultSet rs=statement.executeQuery("select * from stock");
    while(rs.next()){
%>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>
<% 
    } 
  }
catch(Exception e){
    System.out.println(e);
}
%>
</table>
</center>
</div>
<br>
<br>
<br>
<br>

<div class="footer">
    <h3>© Copyright, Save Life Bank 2022</h3>
</div>

</body>
</html>
