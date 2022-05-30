package com.ssipdduck.DTO;

public class BoardcommentDTO {
	private int bc_no, u_no, bc_like, b_no;
	private String bc_comment, bc_date, u_id, u_nickname;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_nickname() {
		return u_nickname;
	}
	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}
	public int getBc_no() {
		return bc_no;
	}
	public void setBc_no(int bc_no) {
		this.bc_no = bc_no;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public int getBc_like() {
		return bc_like;
	}
	public void setBc_like(int bc_like) {
		this.bc_like = bc_like;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getBc_comment() {
		return bc_comment;
	}
	public void setBc_comment(String bc_comment) {
		this.bc_comment = bc_comment;
	}
	public String getBc_date() {
		return bc_date;
	}
	public void setBc_date(String bc_date) {
		this.bc_date = bc_date;
	}

}
