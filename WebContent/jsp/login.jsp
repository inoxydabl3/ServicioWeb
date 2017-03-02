<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="login" method="post" action="controler.jsp">
		<table>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="username" value="" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" value="" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="Login" /></td>
			</tr>
		</table>
	</form>
	<br>
	<div style="color: red">
	<%
		String error = (String) session.getAttribute("error");
		if (error != null) {
			out.println(session.getAttribute("error"));
		}
		session.invalidate();
	%>
	</div>

</body>
</html>