<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션태그</h3>
	<jsp:forward page="param01_date.jsp">
		<jsp:param value="admin" name="id" />
		<jsp:param value='<%=java.net.URLEncoder.encode("관리자")%>' name="name" />
	</jsp:forward>
	<p>Java Server Page
</body>
</html>
