<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #FFD700;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #FF1493;
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
<br>
<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
 <center><font color ="red" size = "4">Successfully Updated</font></center>
<%
}
%>
<%
if ("invalid".equals(msg)) {
%>
<center><font color ="red" size = "4">Something went wrong, Please try again.</font></center>
<%
}
%> 
<%
if ("deleted".equals(msg)) {
%>
 <center><font color ="red" size = "4">Successfully Deleted</font></center>
<%
}
%>
<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Full Name</th>
<th>Emergency Donor</th>
<th>Age</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Donation Location</th>
<th>Donation Time</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
try {
    Connection connection = ConnectionHandler.getConnection();
    Statement statement = connection.createStatement();
    ResultSet rs = statement.executeQuery("select * from donor");
    while(rs.next()) {
%>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>
<td><a href="updateDonor.jsp?id=<%= rs.getString(1) %>">Edit</a></td>
<td><a href="deleteDonor.jsp?id=<%= rs.getString(1) %>">Delete</a></td>
</tr>
<%
    }
} catch(Exception e) {
    System.out.println(e);
}
%>
</table>
</center>
<br>
<br>
<br>
<br>

<div class="footer">
    <h3>&copy; Copyright, Save Life Bank 2022</h3>
</div>

</body>
</html>
