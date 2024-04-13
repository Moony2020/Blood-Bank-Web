
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String id=request.getParameter("id");
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String mobilenumber=request.getParameter("mobilenumber");
String weight=request.getParameter("weight");


if (Integer.parseInt(weight) < 50) {
	response.sendRedirect("donorProfileEdit.jsp?msg=invalid&id=" + id);
	return;
}

try{
	Connection connection=ConnectionHandler.getConnection();
	PreparedStatement prestatement=connection.prepareStatement ("update donorrecords set fullname=?,email=?,address=?,mobilenumber=?,weight=? where id=?");
	prestatement.setString(1,fullname);
	prestatement.setString(2,email);
	prestatement.setString(3,address);
	prestatement.setString(4,mobilenumber);
	prestatement.setString(5,weight);
	prestatement.setString(6,id);
	prestatement.executeUpdate();
	response.sendRedirect("donorProfile.jsp?userid=" + id);
    }
catch(Exception e){
	response.sendRedirect("donorProfileEdit.jsp?msg=invalid&id=" + id);
}
%>