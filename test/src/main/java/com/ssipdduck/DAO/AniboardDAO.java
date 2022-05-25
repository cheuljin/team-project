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

	public AniboardDTO detail(int b_no) {
		AniboardDTO dto = new AniboardDTO();
		sql = "SELECT * FROM boardview where b_no=?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, b_no);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setB_no(rs.getInt(1));
				dto.setU_no(rs.getInt(2));
				dto.setB_title(rs.getString(3));
				dto.setB_content(rs.getString(4));
				dto.setB_orifile(rs.getString(5));
				dto.setB_file(rs.getString(6));
				dto.setB_date(rs.getString(7));
				dto.setB_count(rs.getInt(8));
				dto.setB_like(rs.getInt(9));
				dto.setU_nickname(rs.getString(10));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return dto;
	}

	public void write(AniboardDTO dto) {
		sql = "INSERT INTO board (b_title, b_content, u_no) VALUES(?, ?, (SELECT u_no FROM user WHERE u_email=?))";
		 try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getB_title());
			pstmt.setString(2, dto.getB_content());
			pstmt.setString(3, dto.getU_id());
			pstmt.execute();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}			
}
