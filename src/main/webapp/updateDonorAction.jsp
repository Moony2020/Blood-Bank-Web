
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

try{
	Connection connection=ConnectionHandler.getConnection();
	PreparedStatement prestatement=connection.prepareStatement ("update donor set fullname=?,emergencydonor=?,age=?,mobilenumber=?,email=?,bloodgroup=?,address=? where id=?");
	prestatement.setString(1,fullname);
	prestatement.setString(2,emergencydonor);
	prestatement.setString(3,age);
	prestatement.setString(4,mobilenumber);
	prestatement.setString(5,email);
	prestatement.setString(6,bloodgroup);
	prestatement.setString(7,address);
	prestatement.setString(8,id);
	
	
	prestatement.executeUpdate();
	response.sendRedirect("editDeleteList.jsp?msg=valid");
    }
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>