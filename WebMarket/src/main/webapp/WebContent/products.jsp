<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 목록</title>
<style>
.main .content .row {
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
}

.main .content .row .column {
	width: 300px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	margin: 15px 0;
}

.main .content .row .column h3, .main .content .row .column p {
	text-align: center;
	padding: 10px;
}

.main .content .row .column h3 {
	font-size: 1.7rem;
	font-weight: 400;
}
</style>
<%!String greenting = "상품목록";%>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="main">

		<div class="banner">
			<div class="container">
				<h1><%=greenting%></h1>
			</div>
		</div>

		<div class="content">
			<%
			ProductRepository dao = ProductRepository.getInstance();
			ArrayList<Product> listOfProducts = dao.getAllProducts();
			%>
			<div class="container">
				<div class="row">
					<%
					for (int i = 0; i < listOfProducts.size(); i++) {
					  Product product = listOfProducts.get(i);
					%>
					<div class="column">
						<img src="c:/upload/<%=product.getFilename()%>" alt="상품사진"
							style="width: 100%">
						<h3><%=product.getPname()%></h3>
						<p><%=product.getDescription()%></p>
						<p><%=product.getUnitPrice()%>원
						</p>
						<p>
							<a href="./product.jsp?id=<%=product.getProductId()%>"
								class="btn" role="button">상세 정보&raquo;</a>
					</div>
					<%
					}
					%>
				</div>
				<hr>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>