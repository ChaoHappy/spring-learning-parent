<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>注册</h2>
<sf:form method="POST" modelAttribute="spitter">
	<fieldset>
		<table>
			<tr>
				<td>Full name：</td>
				<td><sf:input path="fullName" id="fullName"/></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><sf:input path="username" id="username"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><sf:password path="password" id="password"/></td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><sf:input path="email" id="email"/></td>
			</tr>
			<tr>
				<th></th>
				<td>
					<sf:checkbox path="updateByEmail" id="updateByEmail"/>
					<label>发送邮箱</label>
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input name="注册" type="submit" value="注册" />
				</td>
			</tr>
		</table>
	</fieldset>
</sf:form>
</body>
</html>