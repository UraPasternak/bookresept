<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//UA" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Книга рецептів</title>
<style><%@include file="../styles/style.css"%></style>
</head>
<body>
<div align="center" class="form">
        <h2>Новий рецепт</h2>
        <form:form action="save" method="post" modelAttribute="resept">
            <table border="0" cellpadding="5">
                <tr>
                    <td>Назва: </td>
                    <td><form:input path="name_resept" /></td>
                </tr>
                <tr>
                    <td>Інгредієнти: </td>
                    <td><form:textarea path="ingredients" style="margin:0px; height: 138px; width: 267px;" /></td>
                </tr>
                <tr>
                    <td>Спосіб приготування: </td>
                    <td><form:textarea path="cooking" style="margin:0px; height: 167px; width: 600px;" /></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" value="Зберегти"></td>
                </tr>                    
            </table>
        </form:form>
        <div class="exit"><a href="exit?id=${resept.id}">Назад</a></div>
    </div>
</body>
</body>
</html>