
<%
	String name = (String) session.getAttribute("name");
	if (name == null) {
		response.sendRedirect("login.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<form name="login" method="post" action="controlerPin.jsp">
		<table>
			<tr>
				<td>Introduce el PIN :</td>
				<td><input type="text" name="PIN" value="" /></td>
				<td><input type="submit" name="send" value="send" /></td>
			</tr>
		</table>
	</form>
	<div style="color: red">
		<%
			String error = (String) session.getAttribute("errorpin");
			if (error != null) {
				out.println(session.getAttribute("errorpin"));
				session.removeAttribute("errorpin");
			}
		%>
	</div>
</body>
</html>