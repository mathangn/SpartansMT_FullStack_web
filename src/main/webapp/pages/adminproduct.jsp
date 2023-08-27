<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Importing Product Model Class -->
<%@ page import="com.fssa.spartansmt.model.Product"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SpartansMT Admin</title>
<link rel="stylesheet" type="text/css" href="/spartansmt_web/assets/css/admin.css">
<link rel="icon" type="image/png" sizes="32x32"
	href="https://iili.io/HpZaout.png">

<!-- Google Font link -->
<link
	href="https://fonts.googleapis.com/css2?family=Barlow&family=Barlow+Condensed:wght@400;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">


</head>
<body>

	<%!public static final String GET_ALL_STORE_DETAILS = "GetStoreDetailsServlet";%>

	<nav>

		<div id="logo">
			<img src="https://iili.io/Hyo19Tb.png" alt="">
		</div>

		<div class="nav">

			<div>
				<i class="fa-solid fa-magnifying-glass search_icon"></i> <input
					id="search" type="search" placeholder="Search...">
			</div>

			<div>
				<span id="profile">Profile</span> <a href="../login/login.html">
					<i class="fa-solid fa-right-from-bracket logout"></i>
				</a>
			</div>

		</div>

	</nav>

	<header>

		<ul>

			<span class="menu">MENU</span>

			<a href="admin_home.html?id=dashboard">
				<menu>Dashboard
				</menu>
			</a>

			<a href="admin_home.html?id=store_form">
				<menu>Forms
				</menu>
			</a>

			<a href=<%=GET_ALL_STORE_DETAILS%>>
				<menu>Tables
				</menu>
			</a>

		</ul>

		<div class="tables">

			<div class="dash_align">

				<h4>PRODUCT DETAILS</h4>
				<div>
					<span>SpartansMT</span> <i class="fa-solid fa-angle-right"></i> <a
						href=<%=GET_ALL_STORE_DETAILS %>><span class="menu">Store
							Details</span></a> <i class="fa-solid fa-angle-right"></i> <span
						class="menu">Product Details</span>

					<button id="table_add_product" onclick="addbox()">Add
						Product</button>

				</div>

			</div>

			<div class="store_table">

				<table class="table">

					<tr>
						<th class="td">Image</th>
						<th class="td">Title</th>
						<th class="td">Price</th>
						<th class="td">Edit Product Details</th>
						<th class="td">Delete Products</th>
					</tr>

					<%
					List<Product> productList = (List<Product>) request.getAttribute("productList");
					if (productList != null) {
						for (Product product : productList) {
					%>

					<tr>
						<td class="td"><img class="product_img"
							src=<%=product.getProductImage() %>
							alt="Product Image"></td>
						<td class="td"><%=product.getProductTitle() %></td>
						<td class="td"><%=product.getProductPrice() %></td>
						<td class="td"><button class="btn_edit_store"
								onclick="updatebox()">Edit</button></td>
						<td class="td"><button class="btn_view_store">Delete</button></td>
					</tr>

					<%
					}
					} else {
					%>
					<p>Empty</p>
					<%
					}
					%>


				</table>

			</div>

		</div>


		<div id="product_update_box">

			<form id="product_form">

				<h3 class="center" id="product_header">Update Product Details</h3>

				<table>

					<tr>
						<th class="label">Labels</th>
						<th class="inputs">Inputs</th>
					</tr>


					<tr>
						<td class="label">Title :</td>
						<td class="inputs"><input type="text" id="product_title"
							required></td>
					</tr>

					<tr>
						<td class="label">Price :</td>
						<td class="inputs"><input type="number" id="price" required>
						</td>
					</tr>

					<tr>
						<td class="label">Product URL Link :</td>
						<td class="inputs"><input type="url" id="product_image"
							required></td>
					</tr>

				</table>

				<div class="btns">

					<button id="add_product_btn" type="submit">Add Product</button>
					<button id="update_btn" type="submit">Update Product</button>

				</div>

			</form>



		</div>



	</header>



	<script type="text/javascript" src="../assets/js/productlist.js"></script>

</body>
</html>