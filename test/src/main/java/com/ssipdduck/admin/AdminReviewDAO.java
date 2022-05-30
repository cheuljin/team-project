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

	public AniRecomDTO detail(int a_no) {
		String sql = "SELECT * FROM ani_view where a_no=?";
		AniRecomDTO dto = new AniRecomDTO();
		
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a_no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setA_no(rs.getInt(1));
				dto.setA_title(rs.getString("a_title"));
				dto.setA_content(rs.getString("a_content"));
				dto.setA_file(rs.getString("a_file"));
				dto.setA_orifile(rs.getString("a_orifile"));
				dto.setA_date(rs.getString("a_date"));
				dto.setA_count(rs.getInt("a_count"));
				dto.setA_epi(rs.getInt("a_epi"));
				dto.setA_type(rs.getString("a_type"));
				dto.setA_aired(rs.getString("a_aired"));
				dto.setA_studio(rs.getString("a_studio"));
				dto.setA_like(rs.getInt("a_like"));
				dto.setA_rate(rs.getInt("a_rate"));
				dto.setA_category(rs.getString("a_category"));
				dto.setCommentcount(rs.getInt("commentcount"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return dto;
	}
}