<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.student"%>
<%@page import="model.regstration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
</head>
<body>
<%@include file="heder.jsp"%>
<style>
.jumbotron{
background-color: white;
}
input{
    width: 400px;
    height:35px;
}
 body {
  margin: 0;
  height: 100vh;
 background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
 <center>
<% if (session.getAttribute("id") != null && session.getAttribute("id").equals("23")) {%>
<font color="blue" size="4">
<h2> Search module </h2>
</font>
<br><br>
<form action="search" method="POST">
<label >Student id:</label><br>
<input type="text" name="id"  ><br><br>
<button type="submit" class="btn btn-primary" name="submit">Search</button><br><br>
</form>
<% if (request.getParameter("id") != null) {%>
<div class="container ">
<div class="jumbotron">
<table class="table" border="2">
<thead>
<tr style="background-color: lightblue;">
<br>
<th>SrNo</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Date</th>
</tr>
</thead>
<tbody id="table">
<% regstration reg = new regstration(session);
ArrayList<student> mydata = reg.getUserinfo(request.getParameter("id"));
Iterator<student> itr = mydata.iterator();
while (itr.hasNext()) {
student s = itr.next();
%>
<tr>
<td><%=s.getId()%></td>
<td><%=s.getName()%></td>
<td><%=s.getMail()%></td>
<td><%=s.getPhone()%></td>
<td><%=s.getDate()%></td>
</tr>
<%}%>
</tbody>
</table>
</div>
</div>
<%}
}%>
</center>
<%@include file="footer.jsp"%>
</body>
</html>