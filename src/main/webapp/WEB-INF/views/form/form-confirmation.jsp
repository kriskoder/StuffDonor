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
			<li><a href="#" class="btn btn--without-border active">Start</a></li>
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

<footer>
	<div class="contact">
		<h2>Skontaktuj się z nami</h2>
		<h3>Formularz kontaktowy</h3>
		<form class="form--contact">
			<div class="form-group form-group--50">
				<input type="text" name="name" placeholder="Imię" />
			</div>
			<div class="form-group form-group--50">
				<input type="text" name="surname" placeholder="Nazwisko" />
			</div>

			<div class="form-group">
            <textarea name="message" placeholder="Wiadomość" rows="1"></textarea>
			</div>

			<button class="btn" type="submit">Wyślij</button>
		</form>
	</div>
	<div class="bottom-line">
		<span class="bottom-line--copy">Copyright &copy; 2018</span>
		<div class="bottom-line--icons">
			<a href="#" class="btn btn--small"><img src="images/icon-facebook.svg"/></a>
			<a href="#" class="btn btn--small"><img src="images/icon-instagram.svg"/></a>
		</div>
	</div>
</footer>
</body>
</html>
