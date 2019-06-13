<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../../resources/admin/header.jsp"/>

<table border="2px">
    <thead>
    <tr>
        <td>Id</td>
        <td>Username</td>
        <td>stuffType</td>
        <td>bagsNumber</td>
        <td>foundation</td>
        <td>street</td>
        <td>city</td>
        <td>zipCode</td>
        <td>phone</td>
        <td>pickUpDate</td>
        <td>pickUpTime</td>
        <td>pickUpComment</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${formList}" var="form">
        <tr>
            <td>${form.id}</td>
            <td>${form.user.username}</td>
            <td>
            <c:forEach items="${form.stuffType}" var="stuffType">
            ${stuffType.name}<br>
            </c:forEach>
            </td>
            <td>${form.bagsNumber}</td>
            <td>${form.foundation.name}</td>
            <td>${form.street}</td>
            <td>${form.city}</td>
            <td>${form.zipCode}</td>
            <td>${form.phone}</td>
            <td>${form.pickUpDate}</td>
            <td>${form.pickUpTime}</td>
            <td>${form.pickUpComment}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>

