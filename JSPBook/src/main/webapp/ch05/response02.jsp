<%@page pageEncoding="MS949" contentType="text/html; charset=MS949" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<p>�� �������� 5�ʸ��� ���ΰ�ħ �˴ϴ�.
	<%
		response.setIntHeader("Resfresh",5);		
	%>
	<p><%=(new java.util.Date()) %>
</body>
</html>
