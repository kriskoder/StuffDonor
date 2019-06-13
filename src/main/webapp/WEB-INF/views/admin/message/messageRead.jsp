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
        <td>Name</td>
        <td>Email</td>
        <td>Message</td>
        <td>Created</td>
        <td>Answered</td>
        <td colspan="2">Optional</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${messageList}" var="message">
        <tr>
            <td>${message.id}</td>
            <td>${message.name}</td>
            <td>${message.email}</td>
            <td>${message.message}</td>
            <td>${message.created}</td>
            <td>
               <c:choose>
                   <c:when test="${message.answered == true}">YES</c:when>
                   <c:when test="${message.answered == false}">NO</c:when>
               </c:choose>
            </td>
            <td>
                <a href="/message/admin/update/${message.id}">Change answered</a>
            </td>
            <td>
                <a href="/message/admin/delete/${message.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>