<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <script src="<c:url value="/resources/js/app.js"/>" type="text/javascript"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="<c:url value="../login"/>" class="btn btn--small btn--without-border">Zaloguj</a></li>
            <li><a href="<c:url value="../register"/>" class="btn btn--small btn--highlighted">Załóż konto</a></li>
        </ul>

        <ul>
            <li><a href="#steps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="#about-us" class="btn btn--without-border">O nas</a></li>
            <li><a href="#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="#contact" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Zacznij pomagać!<br/>
                Oddaj niechciane rzeczy w zaufane ręce
            </h1>

            <ul class="slogan--buttons">
                <li><a href="<c:url value="../form"/>" class="btn btn--large">Oddaj rzeczy</a></li>
                <li><a href="#" class="btn btn--large">Zorganizuj zbiórkę</a></li>
            </ul>
        </div>
    </div>
</header>

<section class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>${numberOfBags}</em>
            <h3>Oddanych worków</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius est beatae, quod accusamus illum
                tempora!</p>
        </div>

        <div class="stats--item">
            <em>${numberOfFoundations}</em>
            <h3>Wspartych organizacji</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam magnam, sint nihil cupiditate quas
                quam.</p>
        </div>

        <div class="stats--item">
            <em>${numberOfDonations}</em>
            <h3>Zorganizowanych zbiórek</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quos dolores commodi error. Natus, officiis
                vitae?</p>
        </div>
    </div>
</section>

<section class="steps" id="steps">
    <h2>Wystarczą 4 proste kroki</h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3>Wybierz rzeczy</h3>
            <p>ubrania, zabawki, sprzęt i inne</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3>Spakuj je</h3>
            <p>skorzystaj z worków na śmieci</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3>Zdecyduj komu chcesz pomóc</h3>
            <p>wybierz zaufane miejsce</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3>Zamów kuriera</h3>
            <p>kurier przyjedzie w dogodnym terminie</p>
        </div>
    </div>

    <a href="<c:url value="../register/"/>" class="btn btn--large">Załóż konto</a>
</section>

<section class="about-us" id="about-us">
    <div class="about-us--text">
        <h2>O nas</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas vitae animi rem pariatur incidunt libero
            optio esse quisquam illo omnis.</p>
        <img src="<c:url value="/resources/images/signature.svg"/>" class="about-us--text-signature" alt="Signature"/>
    </div>
    <div class="about-us--image"><img src="<c:url value="/resources/images/about-us.jpg" />" alt="People in circle"/>
    </div>
</section>

<section class="help" id="help">
    <h2>Komu pomagamy?</h2>

    <ul class="help--buttons">
        <li data-id="1"><a href="#" class="btn btn--without-border active">Fundacjom</a></li>
        <li data-id="2"><a href="#" class="btn btn--without-border">Organizacjom pozarządowym</a></li>
        <li data-id="3"><a href="#" class="btn btn--without-border">Lokalnym zbiórkom</a></li>
    </ul>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>W naszej bazie znajdziesz listę zweryfikowanych Fundacji, z którymi współpracujemy. Możesz sprawdzić czym się
            zajmują, komu pomagają i czego potrzebują.</p>

        <ul class="help--slides-items">
            <c:forEach items="${foundations}" var="foundation">
                <li>
                    <div class="col">
                        <div class="title">Fundacja: ${foundation.name}</div>
                        <div class="subtitle">Cel i misja: ${foundation.description}</div>
                    </div>

                    <div class="col">
                        <div class="text">${foundation.text}</div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>

    <!-- SLIDE 2 -->
    <div class="help--slides" data-id="2">
        <p>
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic officiis mollitia dolor, neque aspernatur
            accusamus debitis. Ducimus, officia. Quia, sunt illum! Non iste placeat ab ipsum alias
            quos suscipit corporis!
        </p>
        <ul class="help--slides-items">
            <li>
                <div class="col">
                    <div class="title">Organizacja 1</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>

            <li>
                <div class="col">
                    <div class="title">Organizacja 2</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>

            <li>
                <div class="col">
                    <div class="title">Organizacja 3</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>

            <li>
                <div class="col">
                    <div class="title">Organizacja 4</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>
        </ul>
    </div>

    <!-- SLIDE 3 -->
    <div class="help--slides" data-id="3">
        <p>Lorem ipsum dolor sit amet, his ocurreret persequeris ea, ad utinam laudem duo. Verterem adipisci partiendo
            eos ne, ea his reque quaeque recteque, ne quo lobortis intellegam.</p>
        <ul class="help--slides-items">
            <li>
                <div class="col">
                    <div class="title">Lokalna zbiórka 1</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>

            <li>
                <div class="col">
                    <div class="title">Lokalna zbiórka 2</div>
                    <div class="subtitle">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="col">
                    <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit.</div>
                </div>
            </li>
        </ul>
    </div>
</section>

<%@include file="../../../resources/user/footer.jsp"%>

</body>
</html>