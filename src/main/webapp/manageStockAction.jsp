
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
String bloodgroup=request.getParameter("bloodgroup");
String incdec=request.getParameter("incdec");
String units=request.getParameter("units");
int units1=Integer.parseInt(units);
try{
	Connection connection=ConnectionHandler.getConnection();
    Statement statement=connection.createStatement();
    if(incdec.equals("inc")) //increase
    	statement.executeUpdate("update stock set units=units+'"+units1+"' where bloodgroup='"+bloodgroup+"'");
    else 
    	statement.executeUpdate("update stock set units=units-'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	response.sendRedirect("manageStock.jsp?msg.valid");
    }
catch(Exception e){
	response.sendRedirect("manageStock.jsp?msg.invalid");
   }
%>
  