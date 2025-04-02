<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.app.beans.Product"%>
<%@page import="java.util.List" errorPage="error.jsp"
	isErrorPage="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>Bev For Sports</title>
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="header.jsp" />

	<section id="products" class="section">
		<header class="imageheader"></header>
		<div class="container">
			<h2 class="headline">Products</h2>
			<p>
				Bev4Sport is <em>committed to developing</em> eco-friendly,
				high-quality, and nutrient-rich beverages that <em>fuel active
					lifestyles</em>. We <a href="#guarantee">guarantee</a> it. Explore our
				range of hydration and performance drinks today!

			</p>
			<%
			if (session.getAttribute("cart") != null) {
			%>
			<p>
				<span id="size">Items in Cart: <%=((ArrayList) session.getAttribute("cart")).size()%></span>
			</p>
			<%} else {%>
			<span id="size">Items in Cart : 0</span>
			<%
			}
			%>
		</div>
		<!-- container -->
		<div class="productContainer">
			<%
			List<Product> products = (ArrayList) request.getAttribute("products");
			Iterator<Product> iterator = products.iterator();
			while (iterator.hasNext()) {
				Product product = iterator.next();
				System.out.println(product.getProductImgPath());
			%>
			<form action="addProducts" method="get">

				<div class="productContainerItem">
					<img id="pic1" src="<%=product.getProductImgPath()%>"> <input
						type="text" name="product" value="<%=product.getProductName()%>">
					<br />
					<button>Add to Cart</button>
				</div>
			</form>
			<%
			}
			%>
		</div>

		<!-- product-list -->
	</section>
	<!-- #products -->

	<section id="history" class="section">
		<div class="container">
			<div class="text-content">
				<h2 class="headline">Company History</h2>
				<p>
					At <em>Bev4Sport</em>, we are dedicated to developing
					high-performance beverages designed to enhance <em>hydration,
						endurance, and recovery</em>. Our formulas are crafted using <em>pure,
						science-backed ingredients</em>, ensuring that every sip supports <em>optimal
						athletic performance</em>.
				</p>
				<p>
					Born from a commitment to clean, effective hydration, our beverages
					provide the perfect balance of <em>electrolytes, essential
						nutrients, and natural flavors</em>, without unnecessary additives.
					Whether you're pushing through intense training, competing at the
					highest level, or simply staying active, <em>Bev4Sport</em> fuels
					your body with what it needs to perform at its best.
				</p>
				<p>
					Explore our range of <a href="#products">hydration and
						performance beverages</a> and experience the power of clean,
					scientifically formulated hydration.
				</p>
			</div>
		</div>
		<!-- container text -->
	</section>
	<!-- #history -->


	<footer class="footer">
		<div class="container">
			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
						<a href="#home"><img src="images/logo.svg" alt="logo"></a>
						<p class="address">
							100 Sample Street<br> City, STATE 98144
						</p>
					</div>
				</div>
			</nav>
		</div>
		<!-- container -->
	</footer>
	<!-- footer -->


</body>
</html>