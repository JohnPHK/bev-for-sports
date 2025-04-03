<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Bev For Sports</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header id="home" class="header">
		<nav class="nav" role="navigation">
			<div class="container nav-elements">
				<div class="branding">
					<a href="#home"><img src="images/logo.svg" alt="logo"></a>
				</div>
				<!-- branding -->
				<ul class="navbar">
					<li><a href="home">home</a></li>
					<li><a href="orderHistory">order history</a></li>
					<li><a href='<%=response.encodeURL("getProfileDetails")%>'>view
							my profile</a></li>
					<li><a href="logout">logout</a></li>
				</ul>
				<!-- navbar -->
			</div>
			<!-- container nav-elements -->
		</nav>
		<!-- <div class="container tagline">
    <h1 class="headline">Our Mission</h1>
    <p>We support and encourage <em>active and healthy</em> lifestyles, by offering <em>ethically sourced</em> and <em>eco-friendly</em> nutritional products for the <em>performance-driven</em> athlete.</p>
  </div>container tagline -->
	</header>

	<fmt:setBundle basename="com.app.resources.applicationResources"
		var="message" />
	<section id="orders" class="section">
		<c:if test="${requestScope.orders != null}">
			<div class="container">
				<h2 class="headline">
					<fmt:message bundle="${message}" key="label.header.orders"></fmt:message>
				</h2>
				<table id="orderHistory">

					<tr>
						<th>Order No.</th>
						<th>Product Name</th>
						<th>Order Date</th>
						<th>Product Image</th>

					</tr>
					<c:forEach items="${requestScope.orders}" var="order"
						varStatus="loop">
						<tr>
							<td>${loop.count}</td>
							<td>${order.productName}</td>
							<td><fmt:formatDate value="${order.orderDate}"
									pattern="YYYY-MM-dd" /></td>
							<td><img width="200px" height="150px"
								src="${order.productImgPath }"></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	</section>


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