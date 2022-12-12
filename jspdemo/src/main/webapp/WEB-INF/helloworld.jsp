<%@ page import = "com.jspPrac.jsp.*" %>
<html>
<body>

<h3>Hello World of Java</h3>

Converting <%= new String("Hello World").toUpperCase() %>

<br/>
<br/>

= <%= 25*4 %>
<br/>

<% for (int i=1; i<=5; i++){
		out.println("<br/>I = "+i);
} %>
<br/>
The time on the server is <%= new java.util.Date() %>


<br/>
Lower case <%= FunUtils.makeItLower("sdad") %> 

</body>
</html>