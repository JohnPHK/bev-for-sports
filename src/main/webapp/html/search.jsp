<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List" buffer="8kb" isELIgnored="false"
	session="true" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isThreadSafe="true" isErrorPage="false"
	errorPage="error.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Bev For Sports</title>
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<header id="home" class="header">
		<nav class="nav" role="navigation">
			<div class="container nav-elements">
				<div class="branding">
					<a href="#home"><img src="images/logo.svg" alt="logo"></a>
				</div>
				<!-- branding -->
				<!--href always calls the doGet method -->
				<ul class="navbar">
					<li><a href="home">home</a></li>
					<li><a href="#history">history</a></li>
					<li><a href="#products">products</a></li>
					<li><a href="login">login</a></li>
					<li><a href="#search">search</a></li>
					<li><a href="registerUser">new user?</a></li>
				</ul>

				<!-- navbar -->
			</div>
			<!-- container nav-elements -->
		</nav>

	</header>

	<section id="products" class="section">
		<div class="container">
			<h2 class="headline">Products</h2>
			<p>
				Bev4Sport is <em>committed to developing</em> eco-friendly,
				high-quality, and nutrient-rich beverages that <em>fuel active
					lifestyles</em>. We <a href="#guarantee">guarantee</a> it. Explore our
				range of hydration and performance drinks today!

			</p>
			<%
			if (session.getAttribute("noofproducts") != null) {
			%>
			<span id="size"
				title="<%=(ArrayList) session.getAttribute("noofproducts")%>">Items
				in Cart: <%=((ArrayList) session.getAttribute("noofproducts")).size()%></span>
			<%
			} else {
			%>
			<span id="size">Items in Cart: 0</span>
			<%
			}
			%>

		</div>


		<%--fetch he products from the rqq object --%>
		<%-- iterate the list and generate the display for every product --%>


		<div class="productContainer"></div>
	</section>
	<!-- #products -->

	<section id="search" class="section">
		<header class="imageheader"></header>
		<div class="container">
			<h2 class="headline">Search Products</h2>
			<form action="search" method="get">
				<label class="card-title">Search your product</label> <input
					type="search" name="search"> <input type="submit"
					value="Search">
			</form>
		</div>
	</section>
	<!-- guarantee -->

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