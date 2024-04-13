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
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Age</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Done</th>
<th>Delete</th>
</tr>
<tr>
<%
try{
    Connection connection=ConnectionHandler.getConnection();
    Statement statement=connection.createStatement();
    ResultSet rs=statement.executeQuery("select * from bloodrequest where status='pending'");
    while(rs.next()){
%>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><a href="requestForBloodDone.jsp?mobilenumber=<%=rs.getString(3)%>">Done</a></td>
<td><a href="requestForBloodDelete.jsp?mobilenumber=<%=rs.getString(3)%>">Delete</a></td>
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
<br>
<br>
<br>
<br>

<div class="footer">
    <h3>&copy; Copyright, Save Life Bank 2022</h3>
</div>

</body>
</html>
