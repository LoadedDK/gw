package gw.draft;

import gw.util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DraftDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<Draft> draftlist = new ArrayList<Draft>();
	
	public Draft show(int  draftNum) {
		conn = DBConn.connect();
		try {
			
			String query = "SELECT * FROM draft WHERE draft=? AND isdel='N'";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, draftNum);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			Draft draft = new Draft();
			draft.setDraft(rs.getInt("draft"));
			draft.setTitle(rs.getString("title"));
			draft.setContent(rs.getString("content"));
			draft.setFilepath(rs.getString("filepath"));
			draft.setDrafter(rs.getInt("drafter"));
			draft.setDraftername(rs.getString("draftername"));
			draft.setSigner(rs.getInt("signer"));
			draft.setSignername(rs.getString("signername"));
			draft.setIssign(rs.getBoolean("issign"));
			draft.setRegtime(rs.getString("regtime"));
			draft.setRegtime(rs.getString("signtime"));
			return draft;
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
	
	
	public boolean write(Draft draft) {
		conn = DBConn.connect();
		try {
			
			String query = "INSERT INTO draft (title, content, drafter ,draftername, issign, regtime) VALUES (?, ?, ?, ?, 'N', NOW())";
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, draft.getTitle());
			pstmt.setString(2, draft.getContent());
			pstmt.setInt(3, draft.getDrafter());
			pstmt.setString(4, draft.getDraftername());
			
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
	
	public boolean edit(String title, String content, int draft) {
		conn = DBConn.connect();
		try {
			
			String query = "UPDATE draft SET title=?, content=? WHERE draft=?";

			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, draft);
			
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
	
	public boolean delete(int draft) {
		conn = DBConn.connect();
		try {
			
			String query = "UPDATE draft SET isdel='Y' WHERE draft=?";
			//String query = "INSERT INTO draft (title, content, drafter ,draftername, filepath, issign, regtime) VALUES (?, ?, ?, ?, ?, 'N', NOW())";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, draft);
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
	public void setDraftList() {
		conn = DBConn.connect();
		try {
			String query = "SELECT * FROM draft WHERE isdel='N' ORDER BY draft DESC";
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			
			while(rs.next()) {
				Draft draft = new Draft();
				draft.setDraft(rs.getInt("draft"));
				draft.setTitle(rs.getString("title"));
				draft.setDraftername(rs.getString("draftername"));
				draft.setRegtime(rs.getString("regtime"));
				addList(draft);
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
	
	public void addList(Draft d) {
		draftlist.add(d);
	}
	
	public List<Draft> getDraftList() {
		return draftlist;
	}
}
