<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Calendar"%>
<%@taglib uri="http://www.bev4sports.com/apptags" prefix="myTags"%>
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
					<li><a href="orderHistory">order history</a></li>
					<!-- <li><a href="viewProfile">view my profile</a></li> -->
					<li><a href=''>view my profile</a></li>
					<li><a href='logout'>logout</a></li>
				</ul>

				<!-- navbar -->
			</div>
			<!-- container nav-elements -->
		</nav>

	</header>

	<!-- id is set in attribute of ViewProfileServlet -->
	<myTags:formatDate date="<%=Calendar.getInstance().getTime()%>"
		format="dd-MM-YYYY" />
	<section id="profile" class="section">
		<div class="container">
			<h2 class="headline">My Profile</h2>
			<table id="profile">

				<tr>
					<td>Username</td>
					<td>${user.username}</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>${user.firstName}</td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td>${user.lastName}</td>
				</tr>
				<tr>
					<td>Age</td>
					<td>${user.age}</td>
				</tr>
				<tr>
					<td>Interested in</td>
					<td>${user.activity}</td>
				</tr>

			</table>
		</div>
		<div class="container">
			<table id="weightSummary">
				<h2 class="headline">Weight Summary</h2>
				<tr>
					<td>January</td>
					<td>${requestScope.weightSummary["January"]}</td>
				</tr>
				<tr>
					<td>February</td>
					<td>${requestScope.weightSummary["February"]}</td>
				</tr>
				<tr>
					<td>March</td>
					<td>${requestScope.weightSummary["March"]}</td>
				</tr>
			</table>
		</div>
	</section>

	<footer class="footer">
		<div class="container">
			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
						<a href="#home"><img src="images/logo.svg"
							alt="logo"></a>
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