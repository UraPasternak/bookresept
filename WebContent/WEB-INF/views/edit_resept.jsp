<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="../styles/style.css"%></style>
<title>Insert title here</title>
</head>
<body>
	<div align="center"  class="form">
	<div class="name"><h2>Назва рецепту:</h2> ${resept.name_resept}</div>
	<div class="ingredients"><h2>Інгредієнти:</h2> <br>
		${resept.ingredients}
	</div>
	<div class="cooking"><h2>Спосіб приготування:</h2> <br>
		${resept.cooking}
	</div>
	<div class="exit"><a href="exit?id=${resept.id}">Назад</a></div>
    </div>
</body>
</html>