<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세 정보</title>
<style>
.content .row {
	padding: 30px 0;
	display: flex;
}

.content .row div {
	padding: 10px;
}

.content h3, .content p, .content h4 {
	margin: 25px 0;
}

.content h3 {
	margin-bottom: 5px;
}

.content .description {
	margin-top: 5px;
}

.content .badge {
	background-color: #f00;
	color: #fff;
	border-radius: 5px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>상품 정보</h1>
			</div>
		</div>

		<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		%>
		<div class="content">
			<div class="container">
				<div class="row">
					<div>
						<img alt="상품 사진" style="width: 100%"
							src="c:/upload/<%=product.getFilename()%>">
					</div>
					<div>
						<h3><%=product.getPname()%></h3>
						<p class="description"><%=product.getDescription()%></p>
						<p>
							<b>상품 코드 : </b><span class="badge"><%=product.getProductId()%></span>
						<p>
							<b>제조사</b> :
							<%=product.getManufacturer()%></p>
						<p>
							<b>분류</b> :
							<%=product.getCategory()%></p>
						<p>
							<b>재고 수</b> :
							<%=product.getUnitInStock()%>
						</p>
						<h4><%=product.getUnitPrice()%>원
						</h4>
						<p>
							<a href="#" class="btn btn-secondary">상품 주문 &raquo;</a> <a
								href="./products.jsp" class="btn">상품 목록 &raquo;</a>
						</p>
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>