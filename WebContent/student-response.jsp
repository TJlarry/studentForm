<html>
<head>
<title>Student Confirmation Title</title>
</head>

<body>

	The Student is confirmed:
	<%=request.getParameter("firstName")%>
	<%=request.getParameter("lastName")%><br /> Student country:
	<%=request.getParameter("Country")%><br /> Student favorite
	programming languages:
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
		if (langs != null) {
			for (String i : langs) {
				out.println("<li>" + i + "</li>");
			}
		} else {
			out.println("No programming language skills");
		}
		%>
	</ul>

</body>
</html>