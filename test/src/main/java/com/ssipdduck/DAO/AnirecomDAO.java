package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ssipdduck.DTO.AniCommentDTO;
import com.ssipdduck.DTO.AniRecomDTO;

import db.DBConnection;

public class AnirecomDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	void close(PreparedStatement pstmt, ResultSet rs) {
	      try {
	         if(pstmt != null) {pstmt.close();}
	         if(rs != null) {rs.close();}
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	//게시판불러오기
	public List<AniRecomDTO> Anilist(int pageNo) {
		ArrayList<AniRecomDTO> list = new ArrayList<AniRecomDTO>();
		sql = "select * from ani_view limit ?,9 ";
		
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AniRecomDTO dto = new AniRecomDTO();
				dto.setA_no(rs.getInt("a_no"));
				dto.setA_title(rs.getString("a_title"));
				dto.setA_file(rs.getString("a_file"));
				dto.setA_orifile(rs.getString("a_orifile"));
				dto.setA_date(rs.getString("a_date"));
				dto.setA_rate(rs.getInt("a_rate"));
				dto.setA_count(rs.getInt("a_count"));
				dto.setA_category(rs.getString("a_category"));
				dto.setA_epi(rs.getInt("a_epi"));
				dto.setA_type(rs.getString("a_type"));
				dto.setCommentcount(rs.getInt("commentcount"));
				dto.setTotalcount(rs.getInt("totalcount"));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			close(pstmt, rs);
		}
		return list;
	}


	//애니리뷰 게시판 상세보기 
	public AniRecomDTO detail(int a_no) {
		AniRecomDTO dto = new AniRecomDTO();
		
		sql="select * from ani_view where a_no=?";
		
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a_no);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
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
				dto.setA_rate(rs.getInt("a_rate"));
				dto.setA_category(rs.getString("a_category"));
				dto.setCommentcount(rs.getInt("commentcount"));
			}
		
		}catch(Exception e) {
			
		}
		return dto;
	}

	//조회수 1++
	public void countUp(int a_no) {
		sql="UPDATE ani SET a_count= a_count+1 WHERE a_no=? ";
		 try {
	         conn = DBConnection.dbConn();
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setInt(1, a_no);
	         
	         pstmt.execute();
	         
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }
	}

	//댓글불러오기
	public List<AniCommentDTO> commentList(int a_no) {
		List<AniCommentDTO> list = new ArrayList<AniCommentDTO>();
		
		String sql =  "select * from ani_commentview WHERE a_no=? order by ac_date desc";
	
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a_no);
			
			rs = pstmt.executeQuery();	
			
			while(rs.next()) {
				AniCommentDTO dto = new AniCommentDTO();
				dto.setA_no(rs.getInt("a_no"));
				dto.setAc_comment(rs.getString("ac_comment"));
				dto.setAc_date(rs.getString("ac_date"));
				dto.setAc_like(rs.getInt("ac_like"));
				dto.setAc_no(rs.getInt("ac_no"));
				dto.setU_nickname(rs.getString("u_nickname"));
				list.add(dto);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//글쓰기.
	public void aniwrite(AniRecomDTO dto) {
		String sql = "INSERT INTO ani (a_title, a_content, a_file, a_orifile, a_category, a_epi, a_type, a_studio, a_aired,u_no) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?,? ,?,(select u_no from user where u_email=?))";
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getA_title());
			pstmt.setString(2, dto.getA_content());
			pstmt.setString(3, dto.getA_file());
			pstmt.setString(4, dto.getA_orifile());
			pstmt.setString(5, dto.getA_category());
			pstmt.setInt(6, dto.getA_epi());
			pstmt.setString(7, dto.getA_type());
			pstmt.setString(8, dto.getA_studio());
			pstmt.setString(9, dto.getA_aired());
			pstmt.setString(10, dto.getU_id());
			
			pstmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}

	//top 5뽑기.
	public List<AniRecomDTO> topList() {
		ArrayList<AniRecomDTO> top = new ArrayList<AniRecomDTO>();
		sql = "select * from ani order by a_like desc limit 5";
		
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AniRecomDTO dto = new AniRecomDTO();
				dto.setA_no(rs.getInt("a_no"));
				dto.setA_title(rs.getString("a_title"));
				dto.setA_file(rs.getString("a_file"));
				dto.setA_orifile(rs.getString("a_orifile"));
				dto.setA_date(rs.getString("a_date"));
				dto.setA_rate(rs.getInt("a_rate"));
				dto.setA_count(rs.getInt("a_count"));
				dto.setA_category(rs.getString("a_category"));
				dto.setA_epi(rs.getInt("a_epi"));
				dto.setA_type(rs.getString("a_type"));
				top.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return top;
	}

	public void anicommentwrite(AniCommentDTO dto) {
		sql = "insert into ani_comment (a_no, ac_comment, u_no) values(?,?,(select u_no from user where u_email = ?))";
		try {
			conn = DBConnection.dbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getA_no());
			pstmt.setString(2,dto.getAc_comment());
			pstmt.setString(3, dto.getU_id());
			pstmt.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
			close(pstmt, null);
		}
	}
}