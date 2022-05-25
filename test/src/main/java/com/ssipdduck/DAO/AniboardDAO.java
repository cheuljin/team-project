package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.ssipdduck.DTO.AniboardDTO;

import db.DBConnection;


public class AniboardDAO {
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

	public List<AniboardDTO> list(){	
		List<AniboardDTO> list = new ArrayList<AniboardDTO>();
		sql = "SELECT * FROM boardview";
			//	select, insert, update
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				AniboardDTO dto = new AniboardDTO();
				dto.setB_no(rs.getInt("b_no"));
				dto.setU_no(rs.getInt("u_no"));
				dto.setB_title(rs.getString("b_title"));
				dto.setB_content(rs.getString("b_content"));
				dto.setB_date(rs.getString("b_date"));
				dto.setB_like(rs.getInt("b_like"));
				dto.setB_count(rs.getInt("b_count"));
				dto.setU_nickname(rs.getString("u_nickname"));
				System.out.println(dto.getB_title());
				list.add(dto);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			close(pstmt, rs);
		}
		
		return list;
		}			
}
