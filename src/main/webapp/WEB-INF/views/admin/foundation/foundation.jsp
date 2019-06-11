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
        <td>Name</td>
        <td>Description</td>
        <td colspan="2">Optional</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${foundationList}" var="foundation">
        <tr>
            <td>${foundation.id}</td>
            <td>${foundation.name}</td>
            <td>${foundation.description}d>
            <td>Edit</td>
            <td>
                <a href="/admin/foundation/delete/${foundation.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>

<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>

