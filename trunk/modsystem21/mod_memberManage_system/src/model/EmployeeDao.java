package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDao {
	private static EmployeeDao instance = new EmployeeDao();
	private Connection conn;
	private EmployeeDao() {
		super();
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/xe", "root", "1234");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static EmployeeDao getInstance() {
		return instance;
	}
	public boolean insertEmployee(EmployeeVO vo) {
		// TODO Auto-generated method stub
		String sql = "insert into employee values(?,md5(?),?,?,?,?)";
		PreparedStatement pstmt = null;
		boolean control = false;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.geteId());
			pstmt.setString(4, vo.getName());
			pstmt.setString(5, vo.getDept());
			pstmt.setString(6, vo.getPosition());
			
			
			int count = pstmt.executeUpdate();
			
			if(count == 1)
				control = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return control;
	}
	public EmployeeVO login(String id, String pass) {
		// TODO Auto-generated method stub
		String sql = "select * from employee where id = ? and pass = md5(?)";
		PreparedStatement pstmt = null;
		EmployeeVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				vo = new EmployeeVO();
				vo.setId(rs.getString(1));
				vo.seteId(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setDept(rs.getString(5));
				vo.setPosition(rs.getString(6));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return vo;
	}
	
}
