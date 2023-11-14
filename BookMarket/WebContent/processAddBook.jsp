<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="vo.Book"%>
<%@page import="dao.BookRepository"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("UTF-8");

/* 	String bookId = request.getParameter("bookId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String author = request.getParameter("author");
	String description = request.getParameter("description");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String totalPages = request.getParameter("totalPages");
	String releaseDate = request.getParameter("releaseDate");
	String condition = request.getParameter("condition"); */
	
	String realFolder = request.getServletContext().getRealPath("/resources/images");
	String encType = "UTF-8";
	
	int maxSize = 5 * 1024 * 1024;
	
	File folder = new File(realFolder);
	if(!folder.exists()) {
		folder.mkdirs();
	}
	
	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(1000000);
	upload.setSizeThreshold(maxSize);
	upload.setRepositoryPath(realFolder);
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	String bookId = "";
	String name = "";
	String unitPrice = "";
	String author = "";
	String description = "";
	String publisher = "";
	String category = "";
	String unitsInStock = "";
	String totalPages = "";
	String releaseDate = "";
	String condition = "";
	String fileName = "";
	
	
	while(params.hasNext()) {
		FileItem item = (FileItem) params.next();
		
		if(item.isFormField()) {
			String fieldName = item.getFieldName();
			
			// 일반적인 input 요소로 넘어온 name(key)을 이용하여 값을 할당
			if(fieldName.equals("bookId")) {
				bookId = item.getString(encType);
			} else if(fieldName.equals("name")) {
				name = item.getString(encType);
			} else if(fieldName.equals("unitPrice")) {
				unitPrice = item.getString(encType);
			} else if(fieldName.equals("author")) {
				author = item.getString(encType);
			} else if(fieldName.equals("description")) {
				description = item.getString(encType);
			} else if(fieldName.equals("publisher")) {
				publisher = item.getString(encType);
			} else if(fieldName.equals("category")) {
				category = item.getString(encType);
			} else if(fieldName.equals("unitsInStock")) {
				unitsInStock = item.getString(encType);
			} else if(fieldName.equals("totalPages")) {
				totalPages = item.getString(encType);
			} else if(fieldName.equals("releaseDate")) {
				releaseDate = item.getString(encType);
			} else if(fieldName.equals("condition")) {
				condition = item.getString(encType);
			}
		} else {
			fileName = item.getName();	// 저장 파일의 이름
			File saveFile = new File(realFolder + "/" + fileName);
			item.write(saveFile);
		}
	}
	
	
	Integer price;
	if(unitPrice == null)
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock == null)
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	long total_Pages;
	if(totalPages == null)
		total_Pages = 0;
	else
		total_Pages = Long.valueOf(totalPages);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setTotalPages(total_Pages);
	newBook.setReleaseDate(releaseDate);
	newBook.setCondition(condition);
	newBook.setFilename(fileName);
	
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
%>