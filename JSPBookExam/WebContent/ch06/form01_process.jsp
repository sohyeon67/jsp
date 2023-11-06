<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	StringBuffer name = new StringBuffer(request.getParameter("name"));
	StringBuffer address = new StringBuffer(request.getParameter("address"));
	StringBuffer email = new StringBuffer(request.getParameter("email"));
%>
	아이디 : <%=name %><br>
	주소 : <%=address %><br>
	이메일 : <%=email %><br>
</body>
</html>