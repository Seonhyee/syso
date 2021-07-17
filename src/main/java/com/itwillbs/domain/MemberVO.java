package com.itwillbs.domain;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberVO {
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_nickname;
	private String member_email;
	private String member_zipcode;
	private String member_address;
	private String member_addressDetail;	
	private String member_phone;
	private boolean member_isLock;
	private int member_inviteCount;
	private String member_inviteID;
	private String member_authKey;
	private int member_authStatus;
	
	public int getMember_authStatus() {
		return member_authStatus;
	}
	public void setMember_authStatus(int member_authStatus) {
		this.member_authStatus = member_authStatus;
	}
	public String getMember_authKey() {
		return member_authKey;
	}
	public void setMember_authKey(String member_authKey) {
		this.member_authKey = member_authKey;
	}

	public String getMember_inviteID() {
		return member_inviteID;
	}
	public void setMember_inviteID(String member_inviteID) {
		this.member_inviteID = member_inviteID;
	}
	private int member_reportCount;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_addressDetail() {
		return member_addressDetail;
	}
	public void setMember_addressDetail(String member_addressDetail) {
		this.member_addressDetail = member_addressDetail;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public boolean isMember_isLock() {
		return member_isLock;
	}
	public void setMember_isLock(boolean member_isLock) {
		this.member_isLock = member_isLock;
	}
	public int getMember_inviteCount() {
		return member_inviteCount;
	}
	public void setMember_inviteCount(int member_inviteCount) {
		this.member_inviteCount = member_inviteCount;
	}
	public int getMember_reportCount() {
		return member_reportCount;
	}
	public void setMember_reportCount(int member_reportCount) {
		this.member_reportCount = member_reportCount;
	}

	
	
	
	
	
	
}
