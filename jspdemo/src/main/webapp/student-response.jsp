<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student confirm</title>
</head>
<body>

The student is confirmed: ${param.firstname} ${param.lastname}
<br/>
<ul>
<% 
	String[] langs = request.getParameterValues("favouriteLang");
	for (String tempLang : langs){
		out.println("<li>"+tempLang+"</li>");
	}

%>
</ul>
</body>
</html>