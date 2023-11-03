<%@page import="java.util.Calendar"%>
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
	response.setIntHeader("Refresh", 5);

	Calendar cal = Calendar.getInstance();
	
	int hour = cal.get(Calendar.HOUR_OF_DAY);
	int minute = cal.get(Calendar.MINUTE);
	int second = cal.get(Calendar.SECOND);
	String am_pm = "";
	
	if(hour / 12 == 0) {
		am_pm = "AM";
	} else {
		am_pm = "PM";
		hour = hour - 12;
	}
	
	String time = hour + ":" + minute + ":" + second + " " + am_pm;
	
	out.println("현재 시간은 " + time + "<br><br>");
%>
<a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>