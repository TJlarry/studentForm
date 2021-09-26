<html>
<head>
<title>Student Confirmation Title</title>
</head>

<body>
<h1> CONFIRMATION PAGE </h1>

	The Student is confirmed:
	<%=request.getParameter("firstName")%>
	<%=request.getParameter("lastName")%><br />
	  
	 Student sex identity:
	<%=request.getParameter("sex") %><br />
	
	Student Age:
	<%= request.getParameter("Agegroup") %><br/>
	
	 Student country:
	<%=request.getParameter("Country")%><br /> 
	
	Student favorite programming languages:
	
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
	
	<a href="student-form.html"> Return to homepage</a>

</body>
</html>