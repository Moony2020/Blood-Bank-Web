<%@page import="java.sql.*"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Project.ConnectionHandler"%>

<html>
<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
	<style>
		#donor {
		  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 95%;
		}

		#donor td, #donor th {
		  border: 1px solid #ddd;
		  padding: 8px;
		}
		
		#donor tr:nth-child(even){background-color: #f2f2f2;}
		
		#donor tr:hover {background-color: #FFD700;}
		
		#donor th {
		  padding-top: 12px;
		  padding-bottom: 12px;
		  text-align: left;
		  background-color: #FF1493;
		  color: white;
		}
	</style>
</head>
<body>
<div class="header">
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
  </div>
</div>
<br/>
<%
    String userid = request.getParameter("userid");
	if (userid == null) {
		return;
	}
    try {
        Connection connection = ConnectionHandler.getConnection();
        PreparedStatement prestatement = connection.prepareStatement("select * from donorrecords where username=? or email=? or id=?");
        prestatement.setString(1, userid);
        prestatement.setString(2, userid);
        prestatement.setString(3, userid);
        ResultSet rs = prestatement.executeQuery();
        while (rs.next()) {
    %>
        <center>
        	<h1>Welcome: <%=rs.getString(2)%></h1>
        </center>
        <br/>
        <center>
            <table id="donor">
                <tr>
                    <td>ID</td>
                    <td><%=rs.getInt(1)%></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><%=rs.getString(2)%></td>
                </tr>
                  <tr>
                    <td>Email</td>
                    <td><%=rs.getString(3)%></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><%=rs.getString(5)%></td>
                </tr>
                  <tr>
                    <td>Address</td>
                    <td><%=rs.getString(6)%></td>
                </tr>
                 <tr>
                    <td>Mobile Number</td>
                    <td><%=rs.getString(7)%></td>
                </tr>

                <tr>
                    <td>Weight</td>
                    <td><%=rs.getString(9)%></td>
                </tr>
                <tr>
                    <td>Emergency Donor</td>
                    <%
                        String pd = "";
                        if (rs.getInt(11) == 0) {
                            pd = "No";
                        } else {
                            pd = "Yes";
                        }
                    %>
                    <td><%=pd%></td>
                </tr>
         
             
              
              
     
                <tr>
                    <td><a href="donorProfileEdit.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
                    
                </tr>
            </table>
        </center>
    <% }
}
catch(Exception e) {
    System.out.println(e);
} %>

<br>
<br>
<br>
<br>
<h3><center>© Copyright, Save Life Bank 2022  </center></h3>
</body>
</html>