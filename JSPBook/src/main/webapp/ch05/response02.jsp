<%@page pageEncoding="MS949" contentType="text/html; charset=MS949" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침 됩니다.
	<%
		response.setIntHeader("Resfresh",5);		
	%>
	<p><%=(new java.util.Date()) %>
</body>
</html>
