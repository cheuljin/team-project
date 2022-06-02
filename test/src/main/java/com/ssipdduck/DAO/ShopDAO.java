package com.ssipdduck.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssipdduck.DTO.NoticeDTO;
import com.ssipdduck.DTO.ShopDTO;

import db.DBConnection;

public class ShopDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	void close(PreparedStatement pstmt, ResultSet rs) {
		try {
			if (pstmt != null) {pstmt.close();}
			if (rs != null) {rs.close();}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<ShopDTO> shopList() {

		List<ShopDTO> list = new ArrayList<ShopDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM ani_shop order by as_name desc;";

		try {
			con = DBConnection.dbConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				ShopDTO dto = new ShopDTO();
				dto.setAs_no(rs.getInt("as_no"));
				dto.setAs_name(rs.getString("as_name"));
				dto.setAs_site(rs.getString("as_site"));
				dto.setAs_map(rs.getString("as_map"));
				dto.setAs_content(rs.getString("as_content"));
				dto.setAs_image(rs.getString("as_image"));
				dto.setAs_description(rs.getString("as_description"));
				dto.setAs_postcode(rs.getString("as_postcode"));
				dto.setAs_roadAddr(rs.getString("as_roadAddr"));
				dto.setAs_detailAddr(rs.getString("as_detailAddr"));
				dto.setAs_extraAddr(rs.getString("as_extraAddr"));
				
				list.add(dto);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return list;
	}

	public void shopwrite(ShopDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "INSERT INTO ani_shop (as_image, as_name, as_site, as_map, as_content) VALUES(?,?,?,?,?)";
				
			try {
				con = DBConnection.dbConn();
				pstmt.setString(1, dto.getAs_image());
				pstmt.setString(2, dto.getAs_name());
				pstmt.setString(3, dto.getAs_site());
				pstmt.setString(4, dto.getAs_map());
				pstmt.setString(5, dto.getAs_content());

			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}
}

	
























