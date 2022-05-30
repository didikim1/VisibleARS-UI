package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.dto;

/*
 *
 *
 * 	System.out.println("userCompanyName : " + paramMap.getStr("userCompanyName"));
		System.out.println("userName : " + paramMap.getStr("userName"));
		System.out.println("userEmail : " + paramMap.getStr("userEmail"));
		System.out.println("userPhoneNo : " + paramMap.getStr("userPhoneNo"));
		System.out.println("usermessage : " + paramMap.getStr("usermessage"));
 */
public class UserInfo {
	private String userCompanyName;
	private String userName;
	private String userEmail;
	private String userPhoneNo;
	private String usermessage;
	public String getUserCompanyName() {
		return userCompanyName;
	}
	public void setUserCompanyName(String userCompanyName) {
		this.userCompanyName = userCompanyName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhoneNo() {
		return userPhoneNo;
	}
	public void setUserPhoneNo(String userPhoneNo) {
		this.userPhoneNo = userPhoneNo;
	}
	public String getUsermessage() {
		return usermessage;
	}
	public void setUsermessage(String usermessage) {
		this.usermessage = usermessage;
	}


}
