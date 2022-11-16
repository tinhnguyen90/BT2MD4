
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Đây là trang show Product</h1>
<button><a href="/create">Create</a></button>
<table border="1">
    <c:forEach items="${products}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td><img src="${p.img}" width="200" height="150"></td>
            <td><button><a href="/edit/${p.id}">Edit</a></button></td>
            <td><button><a href="/delete?id=${p.id}">Delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>