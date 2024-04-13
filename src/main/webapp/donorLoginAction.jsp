<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");

    try {
        Connection connection = ConnectionHandler.getConnection();
        PreparedStatement prestatement = connection.prepareStatement("select * from donor where (username=? or email=?) and password=?");
        prestatement.setString(1, username);
        prestatement.setString(2, username);
        prestatement.setString(3, password);
        ResultSet rs = prestatement.executeQuery();
        if (rs.next()) {
            response.sendRedirect("donorProfile.jsp?userid=" + username);
        } else {
            response.sendRedirect("donorLogin.jsp?msg=invalid");
        }
    }
    catch(Exception e) {
        response.sendRedirect("donorLogin.jsp?msg=invalid");
    }
 %>
 