package com.ssipdduck.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import db.DBConnection;

public class AdminuserDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	void close(PreparedStatement pstmt, ResultSet rs) {
		try {
			if(pstmt != null) {pstmt.close();}
			if(rs != null) {rs.close();}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<AdminuserDTO> list(){
		List<AdminuserDTO> list = new ArrayList<AdminuserDTO>();
		sql = "SELECT * FROM user";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				AdminuserDTO dto = new AdminuserDTO();		
				dto.setU_no(rs.getInt("u_no"));
				dto.setU_name(rs.getString("u_name"));
				dto.setU_nickname(rs.getString("u_nickname"));
				dto.setU_tel(rs.getString("u_tel"));
				dto.setU_email(rs.getString("u_email"));
				dto.setU_date(rs.getString("u_date"));
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			close(pstmt, rs);
		}
		return list;
	}

	public void admin_del(AdminuserDTO dto) {
		sql = "UPDATE user SET u_del=1 WHERE u_name=? AND u_name(SELECT u_name FROM user WHERE u_name=?)";
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getU_name());
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
	}
	
	
}
