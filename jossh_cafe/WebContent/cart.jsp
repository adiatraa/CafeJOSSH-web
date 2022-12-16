<%@page import="jossh.connection.DbCon"%>
<%@page import="jossh.Dao.ProductDao"%>
<%@page import="jossh.model.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {
	ProductDao pDao = new ProductDao(DbCon.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/cart.css">
<%@include file="/includes/head.jsp"%>
<title>Cart JOSSH Cafe</title>
<style type="text/css">

.table tbody td{
vertical-align: middle;
}
.btn-incre, .btn-decre{
box-shadow: none;
font-size: 25px;
}
</style>
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
	
	<div class="container my-3">
		<div class="d-flex py-3"><h3>Total Price: Rp ${(total>0)?dcf.format(total):0} </h3> <a class="mx-3 btn btn-primary" href="succesfulnotification.jsp">Check Out</a></div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (cart_list != null) {
					for (Cart c : cartProduct) {
				%>
				<tr>
					<td><%=c.getName()%></td>
					<td><%=c.getCategory()%></td>
					<td><%= dcf.format(c.getPrice())%></td>
					<td>
						<form action="order-now" method="post" class="form-inline">
						<input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly> 
								<a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a>
							</div>
						</form>
					</td>
					<td><a href="remove-from-cart?id=<%=c.getId() %>" class="btn btn-sm btn-danger">Remove</a></td>
				</tr>

				<%
				}}%>
			</tbody>
		</table>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>