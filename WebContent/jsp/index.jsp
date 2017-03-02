
<%
	String success = (String) session.getAttribute("success");
	String name = "";

	if (success == null) {
		response.sendRedirect("login.jsp");
	} else
		name = (String) session.getAttribute("name");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success!</title>
</head>
<body>
	<%
		out.print("Usuario = " + name);
	%>
</body>
</html>