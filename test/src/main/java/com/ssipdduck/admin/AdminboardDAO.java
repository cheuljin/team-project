package com.ssipdduck.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.DTO.NoticeDTO;

import db.DBConnection;

public class AdminboardDAO {
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

	//관리자 review 불러오기
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

	//관리자 review 상세보기
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
				dto.setA_writer(rs.getString("a_writer"));
				dto.setA_category(rs.getString("a_category"));
				dto.setCommentcount(rs.getInt("commentcount"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return dto;
	}
	
	//관리자 Reivew 페이지 수정
	public void reviewup(AniRecomDTO dto) {
		String sql =  "UPDATE ani SET u_no=1, a_title=? , a_content=?, a_file=?, a_orifile=?, a_epi=?, a_type=?, a_aired=?, a_studio=?, a_category=?, a_writer=?   WHERE a_no=? ";
		String sql1 = "UPDATE ani SET u_no=1, a_title=? , a_content=?, a_epi=?, a_type=?, a_aired=?, a_studio=?, a_category=?, a_writer=?   WHERE a_no=? ";
		try {
			
			conn = DBConnection.dbConn();
			if(dto.getA_file() !=null) {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getA_title());
			pstmt.setString(2, dto.getA_content());
			pstmt.setString(3, dto.getA_file());
			pstmt.setString(4, dto.getA_orifile());
			pstmt.setInt(5, dto.getA_epi());
			pstmt.setString(6, dto.getA_type());
			pstmt.setString(7, dto.getA_aired());
			pstmt.setString(8, dto.getA_studio());
			pstmt.setString(9, dto.getA_category());
			pstmt.setString(10, dto.getA_writer());
			pstmt.setInt(11, dto.getA_no());
			}else {
				pstmt = conn.prepareStatement(sql1);
				pstmt.setString(1, dto.getA_title());
				pstmt.setString(2, dto.getA_content());
				pstmt.setInt(3, dto.getA_epi());
				pstmt.setString(4, dto.getA_type());
				pstmt.setString(5, dto.getA_aired());
				pstmt.setString(6, dto.getA_studio());
				pstmt.setString(7, dto.getA_category());
				pstmt.setString(8, dto.getA_writer());
				pstmt.setInt(9, dto.getA_no());
			}
			pstmt.execute();
		
		}catch(Exception e) {
			e.printStackTrace();
			close(pstmt, null);
		}
	}

	public void reviewDel(int a_no) {
		sql = " delete from ani where a_no=?";
		
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a_no);
			
			rs = pstmt.executeQuery();
		}catch (Exception e) {
			e.printStackTrace();
			close(pstmt, null);
		}
	}

	public List<NoticeDTO> noticeList() {
		List<NoticeDTO> list = new ArrayList<NoticeDTO>();
		String sql = "SELECT * FROM ani_notice order by an_no desc;";

		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

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
}