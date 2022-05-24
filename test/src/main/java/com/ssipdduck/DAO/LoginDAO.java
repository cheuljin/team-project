package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ssipdduck.DTO.LoginDTO;

import db.DBConnection;

public class LoginDAO {
	
	void close(PreparedStatement pstmt, ResultSet rs) {
	      try {
	         if(pstmt != null) {pstmt.close();}
	         if(rs != null) {rs.close();}
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	public LoginDTO login(LoginDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "SELECT count(*) as c FROM user WHERE u_email=? AND u_pw=";
		ResultSet rs = null;
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getU_email());
			pstmt.setString(2, dto.getU_password());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setU_email(rs.getString("u_email"));
				dto.setU_name(rs.getString("u_name"));
				dto.setU_nickname(rs.getString("u_nickname"));
				dto.setC(rs.getInt("c"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			close(pstmt, rs);
		}
		return dto;
	}
}
