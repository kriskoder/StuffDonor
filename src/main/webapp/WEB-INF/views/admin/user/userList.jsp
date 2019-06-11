<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../../resources/admin/header.jsp"/>
<span><a href="/admin/foundation/add">Add foundation</a></span>
<table border="2px">
    <thead>
    <tr>
        <td>Id</td>
        <td>Username</td>
        <td>Email</td>
        <td>Role</td>
        <td>Enabled</td>
        <td colspan="2">Optional</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.role}</td>
            <td>${user.enabled}</td>
            <td><a href="/admin/user/update/${user.id}"/>Edit</td>
            <td>
                <a href="/admin/user/delete/${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>

