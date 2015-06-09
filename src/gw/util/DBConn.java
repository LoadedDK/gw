package gw.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConn {
	Statement stmt = null;
	PreparedStatement pstmt = null;
	
	public static Connection connect() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/mysql");
			conn = ds.getConnection();
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		System.out.println("connect");
		return conn;
	}
	
	/*
	public void disconnect() {
		Connection conn;
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("close");
	}
	*/
}