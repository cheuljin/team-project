package com.ssipdduck.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ssipdduck.DTO.AniRecomDTO;

import db.DBConnection;

public class AdminReviewDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;

	void close(PreparedStatement pstmt, ResultSet rs) {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<AniRecomDTO> adminreviewlist() {
		ArrayList<AniRecomDTO> list = new ArrayList<AniRecomDTO>();
		sql = "select * from ani";
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AniRecomDTO dto = new AniRecomDTO();
				dto.setA_no(rs.getInt("a_no"));
				dto.setA_title(rs.getString("a_title"));
				dto.setA_date(rs.getString("a_date"));
				list.add(dto);			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			close(pstmt, rs);
		}
		return list;
	}
}