<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
	//폼페이지로 전송된 파일을 저장할 서버의 경로 작성
	String fileUploadPath = "C:\\upload";		
	//파일 업로드를 위한 DiskFileUpload클래스 생성
	DiskFileUpload upload = new DiskFileUpload();
	//요청파라미터를 받도록 DiskFileUpload객체 타입의 parseRequest() 메소드 작성
	List items = upload.parseRequest(request);
	//요청파라미터를 Iterator 클래스로 변환
	Iterator params = items.iterator();

	while (params.hasNext()) {	// 요청파라미터가 없을때 까지 반복한도록 Iterator객체타입 hasNext
	  //요청 파라미터의 이름이 이름을 가져오도록 Iterator객체 타입 next()메소드 작성
	  FileItem fileItem = (FileItem) params.next();
	  if (!fileItem.isFormField()) {
	    String fileName = fileItem.getName();
	    fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
	    File file = new File(fileUploadPath + "/" + fileName);
	    fileItem.write(file);
	  }
	}
	%>
</body>
</html>
