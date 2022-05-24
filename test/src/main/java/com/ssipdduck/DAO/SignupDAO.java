package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ssipdduck.DTO.SignupDTO;

import db.DBConnection;

public class SignupDAO {
	public int signup(SignupDTO dto) {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO user (u_name, u_nickname, u_email, u_tel, u_pw)" 
		+"VALUES(?, ?, ?, ?, ?)";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getNickname());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getTele());
			pstmt.setString(5, dto.getPassword());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
			return result;
		
	}
}
