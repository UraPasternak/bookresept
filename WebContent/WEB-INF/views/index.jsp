<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//UA" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<style><%@include file="../styles/style.css"%></style>
<title>Книга рецептів</title>
</head>
<body>
<div align="center" class="form">
    <h2>Рецепти</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Знайти" />
    </form>
    <h3><a href="new">Додати рецепт</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            
            <th>Назва рецепту</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listResept}" var="resept">
        <tr>
            <td>${resept.name_resept}</td>
            
            <td>
                <a href="edit?id=${resept.id}">Подивитися</a>
                &nbsp;&nbsp;&nbsp;
                <a href="delete?id=${resept.id}">Видалити</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>