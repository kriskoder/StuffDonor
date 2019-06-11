<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../../resources/admin/header.jsp"/>

<form:form method="post" modelAttribute="foundationAdd">
    <div>
        <label id="foundationName">Nazwa fundacji</label><br>
        <form:input type="text" path="name" id="foundationName"/>
        <form:errors path="name" cssClass="error"/>
    </div>
    <div>
        <label id="foundationDescription">Opis</label><br>
        <form:textarea path="description" id="foundationDescription"/>
        <form:errors path="description" cssClass="error"/>
    </div>
    <div>
        <label id="foundationText">Przyjmowane rzeczy</label><br>
        <form:textarea path="text" id="foudationText"/>
        <form:errors path="text" cssClass="error"/>
    </div>
    <div>
        <button type="submit">Dodaj</button>
    </div>
</form:form>

<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>