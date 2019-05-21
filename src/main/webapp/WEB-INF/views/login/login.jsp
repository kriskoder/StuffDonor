<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
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
          <li><a href="/">Start</a></li>
          <li><a href="#">O co chodzi?</a></li>
          <li><a href="#">O nas</a></li>
          <li><a href="#">Fundacje i organizacje</a></li>
          <li><a href="#">Kontakt</a></li>
        </ul>
      </nav>
    </header>
    <section class="login-page">
      <h2>Zaloguj się</h2>
      <form  th:action="@{/login}" method="post">
        <div class="form-group">
          <input type="text" name="username" placeholder="UserName" />
        </div>
        <div class="form-group">
          <input type="password" name="password" placeholder="Hasło" />
          <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
        </div>
        <div class="form-group form-group--buttons">
          <a href="<c:url value="../register"/>" class="btn btn--without-border">Załóż konto</a>
          <button class="btn" type="submit">Zaloguj się</button> 
        </div>
      </form>
    </section>

    <footer>
        <div class="contact">
          <h2>Skontaktuj się z nami</h2>
          <h3>Formularz kontaktowy</h3>
          <form>
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
            <a href="#" class="btn btn--small"><img src="${pageContext.request.contextPath}/resources/images/icon-facebook.svg"/></a>
            <a href="#" class="btn btn--small"><img src="${pageContext.request.contextPath}/resources/images/icon-instagram.svg"/></a>
          </div>
        </div>
      </footer>
  </body>
</html>