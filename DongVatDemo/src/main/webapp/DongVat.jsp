<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 13/03/2023
  Time: 4:49 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="container">
<%--<%@include file="layout/header.jsp" %>--%>
<form action="/ServletDongVat/add" method="post">
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">ID</label>
    <div class="col-sm-10">
      <input class="form-control" type="text" name="id"><br>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Tên</label>
    <div class="col-sm-10">
      <input class="form-control" type="text" name="tenDv"><br>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Tuoi</label>
    <div class="col-sm-10">
      <input class="form-control" type="text" name="tuoi"><br>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Gioi Tinh</label>
    <div class="col-sm-10">
      <input class="form-control" type="text" name="gioiTinh"><br>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Trang Thái</label>
    <div class="col-sm-10">
      <input class="form-control" type="text" name="trangThai"><br>
    </div>
  </div>
  <button type="submit">Them</button>
</form>
<%--<%@include file="layout/footer.jsp" %>--%>
</body>
</html>
