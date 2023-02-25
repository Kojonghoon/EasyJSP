<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
	<jsp:setProperty property="id" name="person" value="20230225"/>
	<jsp:setProperty property="name" name="person" value="고종훈"/>
	<p>아이디 : <%out.println(person.getId()); %>
	<p>이름 : <%out.println(person.getName()); %>
</body>
</html>
