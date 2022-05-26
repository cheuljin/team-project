package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssipdduck.DTO.NoticeDTO;

import db.DBConnection;

public class NoticeDAO {

	public List<NoticeDTO> noticeList() {
		
	List<NoticeDTO> list = new ArrayList<NoticeDTO>();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM ani_notice order by an_no desc;";
	
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				NoticeDTO dto = new NoticeDTO();
				dto.setAn_no(rs.getInt("an_no"));
				dto.setAn_title(rs.getString("an_title"));
				dto.setAn_content(rs.getString("an_content"));
				dto.setAn_count(rs.getInt("an_count"));
				dto.setAn_date(rs.getString("an_date"));
				list.add(dto);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}	
		return list;
	}
	
	public void noticewrite(NoticeDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getAn_title());
			pstmt.setString(2, dto.getAn_content());
			pstmt.setString(3, dto.getU_nickname());
			pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public NoticeDTO detail(int an_no) {
		NoticeDTO dto = new NoticeDTO();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM ani_notice WHERE an_no=?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, an_no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setAn_no(rs.getInt("an_no"));
				dto.setAn_title(rs.getString("an_title"));
				dto.setAn_content(rs.getString("an_content"));
				dto.setAn_date(rs.getString("an_date"));
				dto.setAn_count(rs.getInt("an_count"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	public void countUp(int an_no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE ani_notice SET an_count=an_count+1 WHERE an_no=?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, an_no);
			pstmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public void nup(NoticeDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE ani_notice SET an_title=? , an_content=? WHERE an_no=?";
		
		try {
			con = DBConnection.dbConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	
	

}

























