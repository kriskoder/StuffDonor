<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<footer>
    <div class="contact" id="contact">
        <h2>Skontaktuj się z nami</h2>
        <form class="form--contact" action="/message/create" method="post" id="messageForm">
            <div class="form-group form-group--50">
                <input type="text" name="name" placeholder="Imię" id="messageName"/>
            </div>
            <div class="form-group form-group--50">
                <input type="text" name="email" placeholder="Email" id="messageEmail"/>
            </div>
            <div class="form-group">
                <textarea name="message" placeholder="Wiadomość" rows="1" id="messageText"></textarea>
            </div>
            <button class="btn" type="submit" id="messageFormSubmit">Wyślij</button>
        </form>
    </div>
    <div class="bottom-line">
        <span class="bottom-line--copy">Copyright &copy; 2018</span>
        <div class="bottom-line--icons">
            <a href="#" class="btn btn--small"><img src="<c:url value="/resources/images/icon-facebook.svg"/>"/></a>
            <a href="#" class="btn btn--small"><img src="<c:url value="/resources/images/icon-instagram.svg"/>"/></a>
        </div>
    </div>
</footer>
