<%@page import="java.util.Enumeration"%>
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

	Enumeration paraNames = request.getParameterNames();
	while(paraNames.hasMoreElements()) {
		StringBuffer name = new StringBuffer((String)paraNames.nextElement());
		out.println(name + " : ");
		
		String value = request.getParameter(name.toString());
		out.println(value + "<br>");
	}
%>
</body>
</html>