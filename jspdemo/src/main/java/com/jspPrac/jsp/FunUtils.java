package com.jspPrac.jsp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class FunUtils {

	public static void main(String name, String email, String pnumber, String addr, String city, String dist,String info, Boolean metod) {
	    static final String DB_URL = "jdbc:mysql://localhost:3306/kurs_users";
	    static final String USER = "root";
	    static final String PASS = "12345";
	    String sqil = "INSERT INTO clients(name,email,pnumber,address,city,district,info,passport,method) VALUES(?,?,?,?,?,?,?,?,?)";
	    try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS)){
	    	PreparedStatement statement = conn.prepareStatement(sqil);
	    	statement.setString(1, name);
	    	statement.setString(2, email);
	    	statement.setString(3, pnumber);
	    	statement.setString(4, addr);
	    	statement.setString(5, city);
	    	statement.setString(6, dist);
	    	statement.setString(7, info);
	    	statement.setString(8, "passport");
	    	statement.setBoolean(9, metod);
	    	int rowsInserted = statement.executeUpdate();
	    }
	}
}
