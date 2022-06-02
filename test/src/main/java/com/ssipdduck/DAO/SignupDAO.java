package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

	public int emailCheck(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT count(*) from user where u_email=?";
		int result = 1;
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
				System.out.println("결과는 :" + result + "개가 나왔습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int nicknamecheck(String nickname) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT count(*) from user where u_nickname=?";
		int result = 1;
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, nickname);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
				System.out.println("결과는 :" + result + "개가 나왔습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int passwordcheck(String password) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT count(*) from user where u_password=?";
		int result = 1;
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, password);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//비밀번호찾기sql
	public SignupDTO findpw(SignupDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT u_pw from user where u_name=? AND u_email=?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getEmail());
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setPassword(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	//mypage 정보 불러올 sql
	public SignupDTO mypage(SignupDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * from user where u_email= ?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getEmail());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setName(rs.getString("u_name"));
				dto.setNickname(rs.getString("u_nickname"));
				dto.setTele(rs.getString("u_tel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	public void mypagemodify(SignupDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE user set u_nickname=?, u_password=?, u_tel=?, where u_email=?";
		
		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getNickname());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getTele());
			pstmt.setString(4, dto.getEmail());
			pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	}

