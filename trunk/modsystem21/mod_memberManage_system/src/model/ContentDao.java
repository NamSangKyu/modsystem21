package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import config.OracleConfig;

public class ContentDao {
	private static ContentDao instance = new ContentDao();
	private Connection conn;
	private ContentDao() {
		super();
		// TODO Auto-generated constructor stub
		try {
			Class.forName(OracleConfig.Driver);
			conn = DriverManager.getConnection(
					OracleConfig.URL, OracleConfig.USER, OracleConfig.PASS);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static ContentDao getInstance() {
		return instance;
	}
	public int getTotalCount() {
		// TODO Auto-generated method stub
		String sql = "select count(*) from ";
		return 0;
	}
	
}
