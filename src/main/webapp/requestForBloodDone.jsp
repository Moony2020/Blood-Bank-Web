
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection connection=ConnectionHandler.getConnection();
	PreparedStatement prestatement=connection.prepareStatement("update bloodrequest set status='completed' where mobilenumber=?");
	prestatement.setString(1,mobilenumber);
	prestatement.executeUpdate();
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e){
		response.sendRedirect("requestForBlood.jsp");
}
%> 