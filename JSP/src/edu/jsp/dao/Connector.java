package edu.jsp.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	private static Connector con = null;
	private String url = "jdbc:mysql://localhost:3306/java";
	private String id = "root";
	private String pw = "mysql";
	
	private Connector() {}
	
	public static Connector getInstance() {
		if(con == null) {
			con = new Connector();
		}
		return con;
	}
	
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		//Class.forName("com.mysql.jdbc.Driver");
		//sql 문장 log 출력
		Class.forName("core.log.jdbc.driver.MysqlDriver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		return conn;
	}
	
}
