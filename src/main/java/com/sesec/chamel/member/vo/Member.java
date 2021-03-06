package com.sesec.chamel.member.vo;

public class Member {
	private String memberid;
	private String password;
	private String name;
	private String email;
	private String division;
	private String idno;
	private String address;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String memberid, String password, String name, String email, String division, String idno,
			String address) {
		super();
		this.memberid = memberid;
		this.password = password;
		this.name = name;
		this.email = email;
		this.division = division;
		this.idno = idno;
		this.address = address;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getIdno() {
		return idno;
	}
	public void setIdno(String idno) {
		this.idno = idno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Member [memberid=" + memberid + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", division=" + division + ", idno=" + idno + ", address=" + address + "]";
	}
	
	
	
}
