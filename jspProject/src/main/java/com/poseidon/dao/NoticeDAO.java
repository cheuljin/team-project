package com.poseidon.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.poseidon.dto.NoticeDTO;

public class NoticeDAO extends AbstractDAO {
	public void noticeWrite(NoticeDTO dto) {
		con = getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into may_notice (n_title,n_content,n_orifilename,n_filename,m_no) values(?,?,?,?,(select m_no from may_member where m_id=?))";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getN_title());
			pstmt.setString(2, dto.getN_content());
			pstmt.setString(3, dto.getN_orifilename());
			pstmt.setString(4, dto.getN_filename());
			pstmt.setString(5, dto.getM_id());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			close(pstmt, null);
		}
	}
			
	
	public List<NoticeDTO> noticeList(){
		List<NoticeDTO> list = new ArrayList<NoticeDTO>();
		con=getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from may_noticeview";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				NoticeDTO dto = new NoticeDTO();
				dto.setN_no(rs.getInt(1));
				dto.setN_title(rs.getString(2));
				dto.setN_content(rs.getString(3));
				dto.setM_no(rs.getInt(4));
				dto.setN_orifilename(rs.getString(5));
				dto.setN_filename(rs.getString(6));
				dto.setN_date(rs.getString(7));
				dto.setM_name(rs.getString("m_name"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
			close(pstmt,rs);
		}
		return list;
	}
	
	
	void close(PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}


	public NoticeDTO noticeDetail(int n_no) {
		NoticeDTO dto = new NoticeDTO();
		con=getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM may_noticeview where n_no=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, n_no);
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				dto.setN_no(rs.getInt(1));
				dto.setN_title(rs.getString(2));
				dto.setN_content(rs.getString(3));
				dto.setN_orifilename(rs.getString(4));
				dto.setN_filename(rs.getString("n_filename"));
				dto.setN_date(rs.getString("n_date"));
				dto.setM_name(rs.getString("m_name"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			close(pstmt,rs);
		}
		return dto;
	}
	
	
	
}
