<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%@include file="/pageModule/headPart.jsp" %>

</head>

<body>
    <%@include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">폼 태그</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH06</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<!-- 
							아이디 : a001
							비밀번호 : 12345
							이름 : 홍길동
							연락처 : 010-1234-1234
							성별 : 남자
							취미 : 운동 독서 영화 여행
							소개 : 안녕하세요! 반갑습니다!
								저는 홍길동이라고 합니다!
								
							출력은 JSTL을 이용한 출력으로 해주세요!(Core 적극 활용)
						 -->
						 <%
						 	request.setCharacterEncoding("UTF-8");

						 	String id = request.getParameter("id");	
							String pw = request.getParameter("pw");
							String name = request.getParameter("name");
							String phone1 = request.getParameter("phone1");
							String phone2 = request.getParameter("phone2");
							String phone3 = request.getParameter("phone3");
							String gender = request.getParameter("gender");
							String[] hobby = request.getParameterValues("hobby");
							String comment = request.getParameter("comment");
						 
						 %>
						 <c:set value="<%=id %>" var="mem_id" />
						 <c:set value="<%=pw %>" var="mem_pw" />
						 <c:set value="<%=name %>" var="mem_name" />
						 <c:set value="<%=phone1 %>" var="mem_phone1" />
						 <c:set value="<%=phone2 %>" var="mem_phone2" />
						 <c:set value="<%=phone3 %>" var="mem_phone3" />
						 <c:set value="<%=gender %>" var="mem_gender" />
						 <c:set value="<%=hobby %>" var="mem_hobby" />
						 <c:set value="<%=comment %>" var="mem_comment" />
						 아이디 : <c:out value="${mem_id }"></c:out><br>
						 비밀번호 : <c:out value="${mem_pw }"></c:out><br>
						 이름 : <c:out value="${mem_name }"></c:out><br>
						 연락처 : <c:out value="${mem_phone1 }"></c:out>-
						 		<c:out value="${mem_phone2 }"></c:out>-
						 		<c:out value="${mem_phone3 }"></c:out><br>
						 성별 : 
						 <c:if test="${mem_gender eq 'M' }">남성</c:if>
						 <c:if test="${mem_gender eq 'G' }">여성</c:if><br>
						 취미 : 
						<c:forEach items="${mem_hobby }" var="ihobby">
							<c:choose>
								<c:when test="${ihobby eq 'book' }">독서</c:when>
								<c:when test="${ihobby eq 'power' }">운동</c:when>
								<c:when test="${ihobby eq 'movie' }">영화</c:when>
								<c:when test="${ihobby eq 'music' }">음악</c:when>
								<c:when test="${ihobby eq 'trip' }">여행</c:when>
							</c:choose>
						 </c:forEach>
						 <br>
						 소개 : <c:out value="${mem_comment }"></c:out><br>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>