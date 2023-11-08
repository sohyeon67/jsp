<%@page import="kr.or.ddit.ch11.BoardFileVO"%>
<%@page import="kr.or.ddit.ch11.BoardVO"%>
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
						1. 게시판 수정 페이지를 작성해주세요.
						
						[출력 예]
						
						게시글 등록
						─────────────────────────────
						제목 : 제목입니다1
						작성자 : 홍길동
						내용 : 내용입니다1
						─────────────────────────────
						[ 수정  ] [ 목록 ]
						
						2. 수정 버튼 클릭 시, 게시글 수정(boardUpdate.jsp)을 진행해주세요.
						3. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요. 
					 -->
					 <%
					 		int boardNo = Integer.parseInt(request.getParameter("no"));
					 		
					 		BoardRepository dao = BoardRepository.getInstance();
					 		BoardVO board = dao.getBoardById(boardNo);
					 		
					 		BoardFileVO fileVO = board.getFileVO();
					 	%>
						<c:set value="<%=boardNo %>" var="no" />
					 	<c:set value="<%=board %>" var="board" />
					 	<c:set value="<%=fileVO %>" var="file" />
					 	<form action="boardUpdate.jsp" method="post" enctype="multipart/form-data">
					 		<input type="hidden" name="no" value="<%=boardNo %>">
						 	<table class='table table-bordered'>
						 		<tr>
						 			<td width="20%">제목</td>
						 			<td><input type="text" id="title" name="title" value="${board.title }"></td>
						 		</tr>
						 		<tr>
						 			<td>내용</td>
						 			<td><textarea cols="30" rows="5" name="content">${board.content }</textarea></td>
						 		</tr>
						 		<tr>
						 			<td>파일</td>
						 			<td><input type="file" name="filename"></td>
						 		</tr>
						 		<tr>
						 			<td>첨부파일 내용</td>
						 			<td>${file.fileName }</td>
						 		</tr>
						 		<tr>
						 			<td colspan="2">
									 	<button type="submit">수정</button>
									 	<button type="button" onclick="location.href='boardView.jsp?no=${no}'">취소</button>
						 			</td>
						 		</tr>
						 	</table>
					 	</form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>