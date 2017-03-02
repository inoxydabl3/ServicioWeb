
<%
	String name = (String) request.getParameter("username");
	String pass = (String) request.getParameter("password");
	if (name != null && pass != null && name.equals("test") && pass.equals("test")) {
		response.sendRedirect("pinChecker.jsp");
		session.setAttribute("name", name);
	} else {
		session.setAttribute("error", "Usuario o password incorrectos.");
		response.sendRedirect("login.jsp");
	}
%>