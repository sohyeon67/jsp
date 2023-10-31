<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%!
	String str1 = "Book Market Mall";
	String str2 = "Welcome to Book Market";
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%=request.getContextPath() %>/welcome.jsp">Home</a>
  </div>
</nav>
<div class="p-5" style="background: lightgray;">
  <h1><%=str1 %></h1>
</div>
<div class="p-5 text-center">
  <p><%=str2 %></p>
</div>
</body>
</html>