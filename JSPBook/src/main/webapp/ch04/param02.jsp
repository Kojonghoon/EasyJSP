<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:include page="param02_data.jsp">
		<jsp:param value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각")%>' name="title"/>
		<jsp:param value='<%=java.util.Calendar.getInstance().getTime()%>' name="date"/>
		</jsp:include>
</body>
</html>
