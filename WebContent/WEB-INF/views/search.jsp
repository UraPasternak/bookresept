<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="../styles/style.css"%></style>
<title>Search Result</title>
</head>
<body>
<div align="center" class="form">
    <h2>Результат пошуку</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>Назва рецепту</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${result}" var="resept">
        <tr>
            <td>${resept.name_resept}</td>
            <td><a href="edit?id=${resept.id}">Подивитися</a>
                &nbsp;&nbsp;&nbsp;
                <a href="delete?id=${resept.id}">Видалити</a></td>
        </tr>
        </c:forEach>
    </table>
    <div class="exit"><a href="exit?id=${resept.id}">Назад</a></div>
</div>   
</body>
</html>