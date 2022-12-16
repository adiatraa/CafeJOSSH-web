<%@page import="jossh.connection.DbCon"%>
<%@page import="jossh.Dao.ProductDao"%>
<%@page import="jossh.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<link rel="stylesheet" href="assets/css/menu.css">
<title>Menu JOSSH Cafe</title>
</head>
<body>
	<header>
	<div class="nav-bar">
		<a href="" class="logo">Jossh</a>
		<div class="navigation">
			<div class="nav-items">
				<i class="uil uil-times nav-close-btn"></i>
				<a href="index.jsp"><i class="uil uil-home"></i>Home</a>
				<a href="menu.jsp"><i class="uil uil-apps nav-menu-btn"></i>Menu</a>
				<a href="cart.jsp"><i class="uil uil-apps nav-menu-btn"></i>Cart <span class="badge badge-danger">${cart_list.size()}</span></a>
				<a href="about.jsp"><i class="uil uil-info-circle"></i>About Us</a>
			</div>
		</div>
		<i class="uil uil-envelope"></i>
	</div>
</header>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
	<div class="container">
		<div class="card-header my-3">All Menu</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="product-image/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rp<%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-primary" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no products");
			}
			%>

		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>