<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록</title>
<style>
.inputRow {
	margin: 15px 0px;
	display: flex;
	align-items: center;
}

.inputRow label {
	width: 150px;
}

.inputRow input, .inputRow textarea {
	font-size: 1.3rem;
}

.inputRow input.btn {
	font-size: 1rem;
	padding: 5px 15px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>상품 등록</h1>
			</div>
		</div>

		<div class="content">
			<div class="container">
				<form name="newProduct" action="./processAddProduct.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="inputRow">
						<label for="productId">상품 코드</label> <input type="text"
							name="productId" id="productId">
					</div>
					<div class="inputRow">
						<label for="name">상품 명</label> <input type="text" name="name"
							id="name">
					</div>
					<div class="inputRow">
						<label for="unitPrice">가격</label> <input type="text"
							name="unitPrice" id="unitPrice">
					</div>
					<div class="inputRow">
						<label for="description">상세 정보</label>
						<textarea name="description" cols="50" rows="2" id="description">
							</textarea>
					</div>
					<div class="inputRow">
						<label for="manufacturer">제조사</label> <input type="text"
							name="manufacturer" id="manufacturer">
					</div>
					<div class="inputRow">
						<label for="category">분류</label> <input type="text"
							name="category" id="category">
					</div>
					<div class="inputRow">
						<label for="unitStock">재고 수</label> <input type="text"
							name="unitInStock" id="unitStock">
					</div>
					<div class="inputRow">
						<label>상태</label> <label><input type="radio"
							name="condition" value="New"> 신규 제품</label> <label><input
							type="radio" name="condition" value="Old"> 중고 제품</label> <label><input
							type="radio" name="condition" value="Refurbished"> 재생 제품</label>
					</div>
					<div class="inputRow">
						<label for="productImage">이미지</label> <input type="file"
							name="productImage" id="productImage">
					</div>
					<div class="inputRow">
						<input type="submit" value="등록" class="btn btn-secondary">
					</div>
				</form>
				<hr>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>