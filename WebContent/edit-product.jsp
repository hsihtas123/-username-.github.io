<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <a href="ShowProductListAdmin">Products</a>
    </div>
    <div class="page-title">Edit Product</div>
    <div class="body-content-colour">
        <form action="EditProduct" onsubmit="return validateForm()" name="editProductForm" method="post">
           
            <div>
                <label for="title">Title</label>
                <input class="text-box text-box-title" type="text" name="title" value="${product.title}" >
            </div>

            <div class="form-field-spacing ">
                <div><label for="price">Price (Rs.)</label> </div>
                <input class="text-box" type="text" name="price" value="${product.price}">
            </div>


            <div class="form-field-spacing ">
                <div> <label for="dateOfExpiry">Date of Expiry </label> </div>
                <input class="text-box" name="dateOfExpiry" value="<fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${product.dateOfExpiry}"/>" >
            </div>

            <div class="form-field-spacing ">
                <div><label for="inStock">In Stock</label></div>
                <c:if test="${product.inStock}">
                <input class="radio" type="radio" name="inStock" value="yes" checked> Yes
                <input class="radio" type="radio" name="inStock" value="no"> No
                </c:if> 
                <c:if test="${!product.inStock}">
                <input class="radio" type="radio" name="inStock" value="yes" > Yes
                <input class="radio" type="radio" name="inStock" value="no"checked> No
                </c:if>
            </div>


            <div class="form-field-spacing ">
               <div> <label for="category">Category</label></div>
                <select name="category" class="dropdown">
                	<option value="${product.category}">${product.category}</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Snack Foods">Snack Foods</option>
                    <option value="Smart Phones">Smart Phones</option>
                    <option value="Movies & Music">Movies & Music</option>
                </select>
            </div>

            <div class="form-field-spacing ">
             <c:if test="${product.freeDelivery}"> <input type="checkbox" checked name="freeDelivery"><label for="freeDelivery">Free Delivery</label></c:if>
              <c:if test="${!product.freeDelivery}"> <input type="checkbox" name="freeDelivery"> <label for="freeDelivery">Free Delivery</label></c:if> 
            </div>
           <div><input type="hidden" name="id" value="${product.id}"></div>
            <div></div>
            <input type="submit" class="button success-button" value="Save">
        </form>
    </div>
    <div class="footer">Copyright 2019</div>
</body>
</html>