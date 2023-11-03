<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	// String realFolder = request.getRealPath("/") + "upload";	// 이녀석은 더이상 사용 X
	// 웹 애플리케이션상의 절대 경로
	String realFolder = request.getServletContext().getRealPath("/resources/images");
	String encType = "UTF-8";	// 인코딩 타입
	
	int maxSize = 5 * 1024 * 1024;	// 최대 업로드 될 파일 크기(5MB)
	
	File folder = new File(realFolder);
	if(!folder.exists()) {
		folder.mkdirs();
	}
	
	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(1000000);	// 최대 크기
	upload.setSizeThreshold(maxSize);	// 메모리상에 저장할 최대 크기(byte)
	upload.setRepositoryPath(realFolder);	// 업로드 된 파일을 임시로 저장할 경로
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	// 데이터를 저장하기 위한 변수 설정
	String productId = "";
	String name = "";
	String unitPrice = "";
	String description = "";
	String manufacturer = "";
	String category = "";
	String unitsInStock = "";
	String condition = "";
	String fileName = "";

	// 일반적인 데이터를 저장할 때 사용(방법 1)
	/*
	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	*/
	
	while(params.hasNext()) {
		FileItem item = (FileItem) params.next();
		
		if(item.isFormField()) {	// 일반 데이터일때
			String fieldName = item.getFieldName();
			
			// 일반적인 input 요소로 넘어온 name(key)을 이용하여 값을 할당
			if(fieldName.equals("productId")) {
				productId = item.getString(encType);
			} else if(fieldName.equals("name")) {
				name = item.getString(encType);
			} else if(fieldName.equals("unitPrice")) {
				unitPrice = item.getString(encType);
			} else if(fieldName.equals("description")) {
				description = item.getString(encType);
			} else if(fieldName.equals("manufacturer")) {
				manufacturer = item.getString(encType);
			} else if(fieldName.equals("category")) {
				category = item.getString(encType);
			} else if(fieldName.equals("unitsInStock")) {
				unitsInStock = item.getString(encType);
			} else if(fieldName.equals("condition")) {
				condition = item.getString(encType);
			}
		} else {	// 파일 데이터일때
			String fileFieldName = item.getFieldName();	// 요청 파라미터 이름
			fileName = item.getName();	// 저장 파일의 이름
			String contentType = item.getContentType();	// 파일 컨텐츠 타입
			long fileSize = item.getSize();	// 파일 크기 정보
			File saveFile = new File(realFolder + "/" + fileName);
			item.write(saveFile);	// 파일 복사
		}
	}
	
	// 가격을 문자에서 숫자로 변경
	Integer price;
	if(unitPrice.isEmpty()) {
		price = 0;
	} else {
		price = Integer.valueOf(unitPrice);
	}
	
	// 재고수를 문자에서 숫자로 변경
	long stock;
	if(unitsInStock.isEmpty()) {
		stock = 0;
	} else {
		stock = Long.valueOf(unitsInStock);
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = new Product();
	product.setProductId(productId);
	product.setPname(name);
	product.setUnitPrice(price);
	product.setDescription(description);
	product.setManufacturer(manufacturer);
	product.setCategory(category);
	product.setUnitsInStock(stock);
	product.setCondition(condition);
	product.setFilename(fileName);
	
	dao.addProduct(product);
	
	response.sendRedirect("products.jsp");
	
%>