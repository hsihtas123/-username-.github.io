<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>eKart</title>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script type="text/javascript" src="js/script.js"></script>
</head>

<body>
	<div class="topnav">
		<div class="home">eKart</div>
		 <img src="images/shopping-cart.png">
		<a href="ShowCart">Cart</a> <a href="ShowProductListCustomer">Products</a>
	</div>
	<div class="page-title">Products</div>
	<c:if test="${message}">
		<div class="success-message">Item added to Cart Successfully.</div>
	</c:if>
	<table class="body-content-colour">
		<tr>
			<th>Product</th>
			<th>Free Delivery</th>
			<th class="currency">Price</th>
			<th>Category</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.title}</td>
				<td>
					<c:if test="${product.freeDelivery}">Yes</c:if>
					<c:if test="${!product.freeDelivery}">No</c:if>
				</td>
				<td class="currency">
					Rs. <fmt:formatNumber value="${product.price}" pattern="#,##,##,##,###.00" />
				</td>
				<td>${product.category}</td>
				<td><a href="AddToCart?id=${product.id}">Add To Cart</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="footer">Copyright 2019</div>
</body>

</html>