<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<header>
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="<c:url value="../login"/>">Zaloguj</a></li>
            <li class="highlighted"><a href="<c:url value="../register"/>">Załóż konto</a></li>
        </ul>

        <ul>
            <li><a href="<c:url value="/"/>">Start</a></li>
            <li><a href="#">O co chodzi?</a></li>
            <li><a href="#">O nas</a></li>
            <li><a href="#">Fundacje i organizacje</a></li>
            <li><a href="#">Kontakt</a></li>
        </ul>
    </nav>
</header>

<section class="login-page">
    <h2>Załóż konto</h2>
    <form:form method="post" modelAttribute="user">
        <div class="form-group">
            <form:input type="text" path="username" placeholder="Name"/>
            <form:errors path="username" class="error"/>
        </div>
        <div class="form-group">
            <form:input type="email" path="email" placeholder="Email"/>
            <form:errors path="email" class="error"/>
        </div>
        <div class="form-group">
            <form:input type="password" path="password" placeholder="Hasło"/>
            <form:errors path="password" class="error"/>
        </div>
        <div class="form-group">
            <form:input type="password" path="passwordCompare" placeholder="Powtórz hasło"/>
            <form:errors path="passwordCompare" class="error"/>
        </div>

        <div class="form-group form-group--buttons">
            <a href="<c:url value="/login"/>" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
    </form:form>
</section>

<%@include file="../../resources/user/footer.jsp"%>

</body>
</html>
