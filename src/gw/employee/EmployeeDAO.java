package gw.employee;

import gw.util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void register(Employee employee) {
		conn = DBConn.connect();
		try {
			
			String query = "INSERT INTO employee (id, pw, name, rank, depname, tel, phone, joinDate) VALUES (?, ?, ?, ?, ?, ?, ?, NOW())";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, employee.getId());
			pstmt.setString(2, employee.getPw());
			pstmt.setString(3, employee.getName());
			pstmt.setString(4, employee.getRank());
			pstmt.setString(5, employee.getDepname());
			pstmt.setString(6, employee.getTel());
			pstmt.setString(7, employee.getPhone());
			
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		finally {
			try {
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
	}
}
