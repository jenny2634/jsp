package edu.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.jsp.dto.MemberDto;

public class MemberDao {
	public int insertMember(MemberDto memberDto) {
		Connection con = null;
		PreparedStatement stmt = null;
		int result = 0;

		try {
			con = Connector.getInstance().getConnection();
			String sql = "INSERT INTO JSP_MEMBER (ID, PW, NAME)";
			sql += " VALUES (?, ?, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, memberDto.getId());
			stmt.setString(2, memberDto.getPw());
			stmt.setString(3, memberDto.getName());

			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return result;
	}

	public String selectMemberById(String userId) {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String pw = null;

		try {
			con = Connector.getInstance().getConnection();
			String sql = "SELECT PW FROM JSP_MEMBER WHERE ID = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, userId);
			rs = stmt.executeQuery();
			if (rs.next()) {
				pw = rs.getString("pw");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return pw; // ID 조회가 되지 않은 경우 null 반환
	}
}
