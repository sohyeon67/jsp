<%@page import="kr.or.ddit.ch11.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.ch11.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="/pageModule/headPart.jsp" %>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH01</li>
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
						첨부한 파일들을 확인 할 수 있는 자료실 페이지를 구성해주세요.
						- 자료실을 구성하는데 필요한 내용 모두는 board를 작성했던 방식을 참고하여 작성한다.
						
						1. 파일의 유형에 따라 유형에 맞는 default 이미지로 리스트를 구성하세요.
						
						[출력 예]
						
						자료실
						[pdf]	[excel]	[excel]	[ppt]
						[image] [txt]	[word]	[txt]
						[etc]	[etc]	[pdf]	[ppt]
						[...]
						
						목록 
					 -->
					 	<h4>메뉴 박스</h4>
						<hr>
						<button type="button" onclick="location.href='boardList.jsp'">게시판</button>
						<button type="button" onclick="location.href='dropbox.jsp'">자료실</button>
						<button type="button" onclick="location.href='login.jsp'">로그아웃</button>
						<hr>
						 
						<h4>자료실</h4>
						<hr>
						<%
							BoardRepository dao = BoardRepository.getInstance();
							ArrayList<BoardVO> listOfBoard = dao.selectBoardList();
						%>
						<table class='table table-bordered'>
						<c:set value="<%=listOfBoard %>" var="list" />
						<c:if test="${empty list }">
							<tr>
								<th>조회하실 자료가 존재하지 않습니다.</th>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
							<c:forEach items="${list }" var="board">
								<tr>
									<td>
										<div style="width:300px;">
										<img alt="${board.fileVO.fileName }" src="${pageContext.request.contextPath }/ch11/test/images/${board.fileVO.fileName }" width="10%" height="10%">
										</div>
										파일명 : <a href="${pageContext.request.contextPath }/ch11/test/images/${board.fileVO.fileName }" download>${board.fileVO.fileName }</a><br>
										크기 : ${board.fileVO.fileSize }<br>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						</table>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>