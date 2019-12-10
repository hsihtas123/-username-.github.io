<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>eKart</title>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>

<body>
	<div class="topnav">
		<div class="home">eKart</div>
		<img src="images/shopping-cart.png">
		<a href="ShowProductListAdmin">Products</a>
	</div>
	<div class="page-title">Products</div>
	<table class="body-content-colour">
		<tr>
			<th>Product</th>
			<th class="currency">Price</th>
			<th>In Stock</th>
			<th>Date of Expiry</th>
			<th>Category</th>
			<th>Free Delivery</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.title}</td>
				<td class="currency">
					Rs. <fmt:formatNumber value="${product.price}"  pattern="#,##,##,##,###.00"/>
				</td>
				<td>
					<c:if test="${product.inStock}">Yes</c:if>
					<c:if test="${!product.inStock}">No</c:if>
				</td>
				<td>
					<fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${product.dateOfExpiry}"/>
				</td>
				<td>${product.category}</td>
				<td>
					<c:if test="${product.freeDelivery}">Yes</c:if>
					<c:if test="${!product.freeDelivery}">No</c:if>
				</td>
				<td><a href="ShowEditProduct?id=${product.id}">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="footer">Copyright 2019</div>
</body>


</html>