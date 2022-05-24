package com.ssipdduck.DTO;

public class AniCommentDTO {
	private int ac_no, ac_like, a_no, u_no;
	private String ac_comment, ac_date, u_id, u_nickname;
	
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
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public int getAc_no() {
		return ac_no;
	}
	public void setAc_no(int ac_no) {
		this.ac_no = ac_no;
	}
	public int getAc_like() {
		return ac_like;
	}
	public void setAc_like(int ac_like) {
		this.ac_like = ac_like;
	}
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getAc_comment() {
		return ac_comment;
	}
	public void setAc_comment(String ac_comment) {
		this.ac_comment = ac_comment;
	}
	public String getAc_date() {
		return ac_date;
	}
	public void setAc_date(String ac_date) {
		this.ac_date = ac_date;
	}
}
