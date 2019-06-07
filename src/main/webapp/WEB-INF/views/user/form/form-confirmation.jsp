<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<title>Document</title>
	<script src="<c:url value="/resources/js/app.js"/>" type="text/javascript"></script>
	<link rel="stylesheet" href=" <c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<header class="header--form-page">
	<nav class="container container--70">

		<ul class="nav--actions">
			<li class="logged-user">
				<%--            ${username}--%>
				<ul class="dropdown">
					<li><a href="#">Profil</a></li>
					<li><a href="#">Ustawienia</a></li>
					<li><a href="#">Moje zbiórki</a></li>
					<li><a href="<c:url value="/logout"/>">Wyloguj</a></li>
				</ul>
			</li>
		</ul>

		<ul>
			<li><a href="<c:url value="../.."/>" class="btn btn--without-border active">Start</a></li>
			<li><a href="#" class="btn btn--without-border">O co chodzi?</a></li>
			<li><a href="#" class="btn btn--without-border">O nas</a></li>
			<li><a href="#" class="btn btn--without-border">Fundacje i organizacje</a></li>
			<li><a href="#" class="btn btn--without-border">Kontakt</a></li>
		</ul>
	</nav>

	<div class="slogan container container--90" >
		<h2>
			Dziękujemy za przesłanie formularza Na maila prześlemy wszelkie
			informacje o odbiorze.
		</h2>
	</div>

</header>

<%@include file="../../../resources/user/footer.jsp"%>

</body>
</html>
