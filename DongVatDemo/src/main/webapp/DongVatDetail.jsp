<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 13/03/2023
  Time: 5:11 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="container">
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Ten</th>
        <th scope="col">tuoi</th>
        <th scope="col">Trang thai</th>
        <th scope="col"> Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listDV}" var="l">
        <tr>
            <td>${l.id}</td>
            <td>${l.tenDv}</td>
            <td>${l.tuoi}</td>
            <td>${l.gioiTinh}</td>
            <td>${l.trangThai}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button onclick="location.href ='/DongVat.jsp'">Them dong vat</button>
<p>xin chào bạn sinh viên</p>
</body>
</html>
