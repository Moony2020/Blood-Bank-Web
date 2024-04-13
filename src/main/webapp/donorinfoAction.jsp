<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String id=request.getParameter("id");
String fullname=request.getParameter("fullname");
String emergencydonor=request.getParameter("emergencydonor");
String age=request.getParameter("age");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address"); 
String donationlocation=request.getParameter("donationlocation");
String donationtime=request.getParameter("donationtime");
try{
	Connection connection=ConnectionHandler.getConnection();
	PreparedStatement prestatement=connection.prepareStatement ("insert into donor values(?,?,?,?,?,?,?,?,?,?)");
	prestatement.setString(1,id);
	prestatement.setString(2,fullname);
	prestatement.setString(3,emergencydonor);
	prestatement.setString(4,age);
	prestatement.setString(5,mobilenumber);
	prestatement.setString(6,email);
	prestatement.setString(7,bloodgroup);
	prestatement.setString(8,address);
	prestatement.setString(9,donationlocation);
	prestatement.setString(10,donationtime);
	
	prestatement.executeUpdate();
	response.sendRedirect("addNewBook.jsp?msg=valid");
    }
catch(Exception e){
	response.sendRedirect("addNewBook.jsp?msg=invalid");
}
%>