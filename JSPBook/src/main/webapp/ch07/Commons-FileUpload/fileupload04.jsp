<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name ="fileForm" method="post" enctype="multipart/form-data" action="fileUpload04_process.jsp">
		<p>이름 : <input type="text" name = "name">
		<p>제목 : <input type="text" name="subject">
		<p>파일 : <input type="file" name="filename">
		<p><input type="submit" value="파일올리기">
	
	</form>
</body>
</html>
