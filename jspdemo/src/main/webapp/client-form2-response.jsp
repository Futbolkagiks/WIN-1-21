<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import ="java.sql.*"
%>
<%
String DB_URL = "jdbc:mysql://localhost:3306/kurs_users";
String USER = "root";
String PASS = "12345";

String sqil = "INSERT INTO clients(name,email,pnumber,address,city,district,info,passport,method) VALUES(?,?,?,?,?,?,?,?,?)";

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	PreparedStatement statement = conn.prepareStatement(sqil);
	statement.setString(1,request.getParameter("name"));
	statement.setString(2,request.getParameter("email"));
	statement.setString(3,request.getParameter("pnumber"));
	statement.setString(4,request.getParameter("addr"));
	statement.setString(5,request.getParameter("city"));
	statement.setString(6,request.getParameter("dist"));
	statement.setString(7,request.getParameter("info"));
	statement.setString(8, "passport");
	statement.setString(9, request.getParameter("metod"));
	int x = statement.executeUpdate();
	if(x>0){
		out.println("success");
	}
}
catch(Exception e){
	out.println(e);
}

%>