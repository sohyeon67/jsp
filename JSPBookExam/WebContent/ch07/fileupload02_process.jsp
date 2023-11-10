<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
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
	String fileUploadPath = "C:\\upload";
	
	File file = new File(fileUploadPath);
	if(!file.exists()) {
		file.mkdirs();
	}

	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(5 * 1024 * 1024);
	upload.setSizeThreshold(4 * 1024 * 1024);
	upload.setRepositoryPath(fileUploadPath);
	
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	int maxSize = 4 * 1024 * 1024;
	while(params.hasNext()) {
		FileItem fileItem = (FileItem)params.next();
		
		if(fileItem.isFormField()) {
			String name = fileItem.getFieldName();
			String value = fileItem.getString("UTF-8");
			out.println(name + "=" + value + "<br>");
		} else {
			String fileFieldName = fileItem.getFieldName();
			String fileName = fileItem.getName();
			String contentType = fileItem.getContentType();
			long fileSize = fileItem.getSize();
			
			File newFile = new File(fileUploadPath + "/" + fileName);
			
			if(maxSize < fileSize) {
				out.println("파일 크기를 초과하였습니다!<br>");
			} else {
				fileItem.write(newFile);
			}
			
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
			out.println("저장 파일 이름 : " + fileName + "<br>");
			out.println("파일 컨텐츠 타입 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize + "<br>");
		}
	}
	
%>
</body>
</html>