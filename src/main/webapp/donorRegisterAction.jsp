
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
    String username=request.getParameter("username");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String confirmPassword=request.getParameter("confirmPassword");

    if (!password.equals(confirmPassword)) {
        response.sendRedirect("donorRegister.jsp?msg=passwordMismatch");
    } else {
        try {
            Connection connection=ConnectionHandler.getConnection();
            PreparedStatement prestatement=connection.prepareStatement("insert into donor(username, email, password) values(?,?,?)");
            prestatement.setString(1, username);
            prestatement.setString(2, email);
            prestatement.setString(3, password);
            prestatement.executeUpdate();
            response.sendRedirect("donorInfo.jsp?email=" + email);
        }
        catch(Exception e) {
            response.sendRedirect("donorRegister.jsp?msg=invalid");
        }
    }
%>
