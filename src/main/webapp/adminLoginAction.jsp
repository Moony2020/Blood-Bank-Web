<%
String username=request.getParameter("username");
String password=request.getParameter("password");
 if("admin".equals(username) && "admin".equals(password)){
	 response.sendRedirect("home.jsp");
 }
 else{
	 response.sendRedirect("adminLogin.jsp?msg=invalid");
 }
 %>
 
 <div class="row1"> 
<h3><center>© Copyright, Save Life Bank 2022</center></h3>
<div class="container">