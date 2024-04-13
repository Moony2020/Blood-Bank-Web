<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String id=request.getParameter("id");
try{
	Connection connection=ConnectionHandler.getConnection();
	Statement statement=connection.createStatement();
	statement.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
    }
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>