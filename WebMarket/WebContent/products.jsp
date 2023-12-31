<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<%
	String id = request.getParameter("id");
	Product product = productDAO.getProductById(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescriprion() %></p>
				<p><b>상품 코드 : </b> <span class="badge-danger">
				<%=product.getProductId() %></span>
				<p><b>제조사</b> : <%=product.getManufacturer()%></p>
				<p><b>분류</b> : <%=product.getCategory()%></p>
				<p><b>재고 수</b> : <%=product.getUnitsInStock()%></p>
				<h4><%=product.getUnitPrice() %>원</h4>
				<p><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<a href="./products.jsp" class="btn-btn-secondary">상품 목록 &raquo;</a>
			
			</div>
		
		</div>
		
		<hr>
	
	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>



	<p><%=product.getUnitPrice() %>원</p>
	<p><a href="./product.jsp?id=<%=product.getProducctId%>"
	Class="btn btn-secondary" role="button">상세정보 &raquo;></a>
	</p>
</body>
</html>