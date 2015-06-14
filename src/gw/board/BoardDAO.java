package gw.board;

import gw.util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<Board> boardlist = new ArrayList<Board>();
	
	public Board read(int  boardNum) {
		conn = DBConn.connect();
		try {
			
			String query = "SELECT * FROM board WHERE board=? AND isdel='N'";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNum);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			Board board = new Board();
			board.setBoard(rs.getInt("board"));
			board.setTitle(rs.getString("title"));
			board.setContent(rs.getString("content"));
			board.setWriter(rs.getInt("writer"));
			board.setWritername(rs.getString("writername"));
			board.setRegtime(rs.getString("regtime"));
			return board;
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
			return null;
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
	}
	
	
	public boolean write(Board board) {
		conn = DBConn.connect();
		try {
			
			String query = "INSERT INTO board (title, content, writer ,Writername, isdel, regtime) VALUES (?, ?, ?, ?, 'N', NOW())";
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getWriter());
			pstmt.setString(4, board.getWritername());
			
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
			return false;
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
		return true;
	}
	
	public boolean edit(String title, String content, int board) {
		conn = DBConn.connect();
		try {
			
			String query = "UPDATE board SET title=?, content=? WHERE board=?";

			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, board);
			
			pstmt.executeQuery();
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
			return false;
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
		return true;
	}
	
	public boolean delete(int board) {
		conn = DBConn.connect();
		try {
			
			String query = "UPDATE board SET isdel='Y' WHERE board=?";

			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board);
			pstmt.executeQuery();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
			return false;
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
		return true;
	}
	
	
	
	//DB에서 리스트로 기안 리스트 땡겨옴
	public void setBoardList() {
		conn = DBConn.connect();
		try {
			String query = "SELECT * FROM board WHERE isdel='N' ORDER BY board DESC";
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			
			while(rs.next()) {
				Board board = new Board();
				board.setBoard(rs.getInt("board"));
				board.setTitle(rs.getString("title"));
				board.setWritername(rs.getString("writername"));
				board.setRegtime(rs.getString("regtime"));
				addList(board);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			}
			catch (SQLException e) {
				System.out.println("close");
				e.printStackTrace();
			}
		}
	}
	
	public void addList(Board b) {
		boardlist.add(b);
	}
	
	public List<Board> getBoardList() {
		return boardlist;
	}
}
