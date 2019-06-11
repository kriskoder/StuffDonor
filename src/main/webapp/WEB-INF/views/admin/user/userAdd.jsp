<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../../resources/admin/header.jsp"/>

<form:form method="post" modelAttribute="userAdd">
    <div>
        <label id="UsernameAdd">Nazwa użytkownika</label><br>
        <form:input type="text" path="username" id="usernameAdd"/>
        <form:errors path="username" cssClass="error"/>
    </div>
    <div>
        <label id="userEmailAdd">Email</label><br>
        <form:textarea path="email" id="userEmailAdd"/>
        <form:errors path="email" cssClass="error"/>
    </div>
    <div>
        <label id="userRoleAdd">Role</label><br>
        <form:select path="role" id="userRoleAdd" items="${roleList}" multiple="false" itemLabel="name" itemValue="name"/>
        <form:errors path="role" cssClass="error"/>
    </div>
    <div>
        <label id="userEnabledAdd">Enabled</label><br>
        <form:select path="enabled" id="userEnabledAdd">
            <form:option value="1"/>
            <form:option value="0"/>
        </form:select>
        <form:errors path="enabled" cssClass="error"/>
    </div>
    <div>
        <button type="submit">Zapisz</button>
    </div>
</form:form>

<jsp:include page="../../../resources/admin/footer.jsp"/>
</body>
</html>