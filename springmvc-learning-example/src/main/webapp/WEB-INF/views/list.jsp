<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>spitter 登录首页</h2>
<a>登录名：</a>${spitter}
<c:forEach  var="spittle" items="${spittles}">
	<a>标题：</a>${spittle}
</c:forEach>
</body>
</html>