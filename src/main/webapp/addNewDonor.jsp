<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionHandler"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input,select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:45%;	
	border-radius: 25px;
	margin-left:27%;
}
</style>
</head>
<body>
<%
String msg= request.getParameter("msg");
if("valid".equals(msg)){
%>
<center><font color ="red" size ="4">Successfully Updated</font></center>
<%
}
%>
<%
if("invalid".equals(msg)){
%>
<center><font color ="red" size ="4">Something went wrong, Please try again</font></center>
<%
}
%>
<% 
int id=1;
try{
    Connection connection=ConnectionHandler.getConnection();
    Statement statement=connection.createStatement();
    ResultSet rs=statement.executeQuery("select max(id) from donor");
    if(rs.next()){
    	id=rs.getInt(1);
    	id=id+1;
    } 
    %>
    <div class="container1">
    <h4>Donor ID: <%out.println(id); %></h4*>
    <% 
   }
catch(Exception e){
}
%>
<div class="container2">
<form action="addNewDonorAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<h2>Full Name</h2>
<input type= "text" placeholder="Enter Full Name" name="fullname">
<h2>Emergency Donor</h2>
<select name= "emergencydonor">
<option value = "Yes">Yes</option>
<option value = "No">No</option>
</select>
<h2>Age</h2>
<select name= "age">
<option value = "18">18</option>
<option value = "19">19</option>
<option value ="20">20</option>
<option value ="21">21</option>
<option value ="22">22</option>
<option value ="23">23</option>
<option value ="24">24</option>
<option value ="25">25</option>
<option value ="26">26</option>
<option value ="27">27</option>
<option value ="28">28</option>
<option value ="29">29</option>
<option value ="30">30</option>
<option value ="31">31</option>
<option value ="32">32</option>
<option value ="33">33</option>
<option value ="34">34</option>
<option value ="35">35</option>
<option value ="36">36</option>
<option value ="37">37</option>
<option value ="38">38</option>
<option value ="39">39</option>
<option value ="40">40</option>
<option value ="41">41</option>
<option value ="42">42</option>
<option value ="43">43</option>
<option value ="44">44</option>
<option value ="45">45</option>
<option value ="46">46</option>
<option value ="47">47</option>
<option value ="48">48</option>
<option value ="49">49</option>
<option value ="50">50</option>
<option value ="51">51</option>
<option value ="52">52</option>
<option value ="53">53</option>
<option value ="54">54</option>
<option value ="55">55</option>
<option value ="56">56</option>
<option value ="57">57</option>
<option value ="58">58</option>
<option value ="59">59</option>
<option value ="60">60</option>
</select>

<h2>Mobile Number</h2>
<input type= "number" placeholder="Enter Mobile Number" name="mobilenumber">
<h2>Email</h2>
<input type= "email" placeholder="Enter Email" name="email">
<h2>Blood Group</h2>
<select name= "bloodgroup">
<option value = "A+">A+</option>
<option value = "A-">A-</option>
<option value = "B+">B+</option>
<option value = "B-">B-</option>
<option value = "O+">O+</option>
<option value = "O-">O-</option>
<option value = "AB+">AB+</option>
<option value = "AB-">AB-</option>
</select>
<h2>Address</h2>
<input type= "text" placeholder="Enter Address" name="address">

<h2>Donation Location</h2>
<select name= "donationlocation">
<option value = "Växjö">Väjxö </option>
<option value = "Stockholm">Stockholm</option>
<option value = "Gothenborg">Gothenborg</option>
<option value = "Lund">Lund</option>
<option value = "Malmö ">Malmö </option>
<option value = "Örebro">Örebro</option>
<option value = "Uppsala">Uppsala</option>
</select>
<h2>Donation Time</h2>
 <input type="datetime-local" name="donationtime"> 
<br>
<center><button type ="submit" class = "button">Book</button></center>
</form>
  </div>
</body>
</html>