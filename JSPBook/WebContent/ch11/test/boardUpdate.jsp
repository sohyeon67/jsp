<%@page import="java.io.FileNotFoundException"%>
<%@page import="kr.or.ddit.ch11.BoardVO"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="kr.or.ddit.ch11.BoardFileVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
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
						1. 게시글 수정을 처리해주세요.
							> 수정 성공 후, 상세보기 페이지(boardView.jsp)로 이동해주세요.
							> 수정 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
					 -->
					 	<%
					 		request.setCharacterEncoding("UTF-8");
					 		
					 		String realFolder = request.getServletContext().getRealPath("/ch11/test/images");
					 		String encType = "UTF-8";
					 		
					 		int maxSize = 5 * 1024 * 1024;
					 		
					 		DiskFileUpload upload = new DiskFileUpload();
					 		upload.setSizeMax(1000000);
					 		upload.setSizeThreshold(maxSize);
					 		upload.setRepositoryPath(realFolder);
					 		
					 		List items = upload.parseRequest(request);
					 		Iterator params = items.iterator();
					 		
					 		int no = 0;
					 		String title = "";
					 		String content = "";
					 		
					 		BoardFileVO fileVO = new BoardFileVO();
					 		String contentType = "";
					 		long fileSize = 0;
					 		String fileName = "";
					 		
					 		while(params.hasNext()) {
					 			FileItem item = (FileItem) params.next();
					 			
					 			if(item.isFormField()) {
					 				String fieldName = item.getFieldName();
					 				
					 				if(fieldName.equals("no")) {
					 					no = Integer.parseInt(item.getString(encType));
					 				} else if(fieldName.equals("title")) {
					 					title = item.getString(encType);
					 				} else if(fieldName.equals("content")) {
					 					content = item.getString(encType);
					 				} 
					 			} else {
					 				try {
					 					contentType = item.getContentType();
						 				fileSize = item.getSize();
						 				fileName = item.getName();
						 				
						 				fileVO.setContentType(contentType);
						 				fileVO.setFileSize(fileSize);
						 				fileVO.setFileName(fileName);
						 				
						 				File saveFile = new File(realFolder + "/" + fileName);
						 				item.write(saveFile);
					 				} catch (FileNotFoundException e) {
						 				fileVO.setFileName("");
					 				}
					 			}
					 		}
					 	
					 		BoardRepository dao = BoardRepository.getInstance();
					 		
					 		BoardVO board = new BoardVO();
					 		
					 		board.setNo(no);
					 		board.setTitle(title);
					 		board.setContent(content);
					 		board.setFileVO(fileVO);
					 		
					 		dao.updateBoard(board);
					 		
					 		response.sendRedirect("boardView.jsp?no=" + no);
					 		
					 	%>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
<script type="text/javascript">
function update() {
	
}

</script>
</html>