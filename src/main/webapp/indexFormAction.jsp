
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String status= "pending";
try{
	Connection connection=ConnectionHandler.getConnection();
	PreparedStatement prestatement=connection.prepareStatement ("insert into bloodrequest values(?,?,?,?,?,?)");
	prestatement.setString(1,name);
	prestatement.setString(2,age);
	prestatement.setString(3,mobilenumber);
	prestatement.setString(4,email);
	prestatement.setString(5,bloodgroup);
	prestatement.setString(6,status);
	prestatement.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e){ 
	response.sendRedirect("index.jsp?msg=invalid");
}

%>