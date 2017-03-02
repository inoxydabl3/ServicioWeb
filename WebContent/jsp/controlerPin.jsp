
<%
	String pin = (String) request.getParameter("PIN");
	if (pin != null && pin.equals("1234")) {
		session.setAttribute("success", "true");
		response.sendRedirect("index.jsp");
	} else {
		session.setAttribute("errorpin", "PIN incorrecto.");
		response.sendRedirect("pinChecker.jsp");
	}
%>