package connection;

import java.sql.*;

public class DbConnection {

	public static Connection getConnection(){
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/cdacdb?useSSL=false"
					,"root","Pass@123");
			
			return con;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
