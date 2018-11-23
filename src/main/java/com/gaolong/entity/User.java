package com.gaolong.entity;

import java.io.Serializable;

public class User implements Serializable {
	private	int user_id;
	private String user_name;	
	private String user_password;
	private String user_card_no;
	private String user_tel;
	private String user_address;
	private String user_post_number;
	private int user_is_admin;
	private String user_question;
	private String user_answer;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(int user_id, String user_name, String user_password,
			String user_card_no, String user_tel, String user_address,
			String user_post_number, int user_is_admin, String user_question,
			String user_answer) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_card_no = user_card_no;
		this.user_tel = user_tel;
		this.user_address = user_address;
		this.user_post_number = user_post_number;
		this.user_is_admin = user_is_admin;
		this.user_question = user_question;
		this.user_answer = user_answer;
	}
	public User(String user_name, String user_password,
			String user_card_no, String user_tel, String user_address,
			String user_post_number, int user_is_admin, String user_question,
			String user_answer) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_card_no = user_card_no;
		this.user_tel = user_tel;
		this.user_address = user_address;
		this.user_post_number = user_post_number;
		this.user_is_admin = user_is_admin;
		this.user_question = user_question;
		this.user_answer = user_answer;
	}
	public User(int user_is_admin, String user_question) {
		super();
		this.user_is_admin = user_is_admin;
		this.user_question = user_question;
	}
	public User(String user_name, String user_password) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_card_no() {
		return user_card_no;
	}
	public void setUser_card_no(String user_card_no) {
		this.user_card_no = user_card_no;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_post_number() {
		return user_post_number;
	}
	public void setUser_post_number(String user_post_number) {
		this.user_post_number = user_post_number;
	}
	public int getUser_is_admin() {
		return user_is_admin;
	}
	public void setUser_is_admin(int user_is_admin) {
		this.user_is_admin = user_is_admin;
	}
	public String getUser_question() {
		return user_question;
	}
	public void setUser_question(String user_question) {
		this.user_question = user_question;
	}
	public String getUser_answer() {
		return user_answer;
	}
	public void setUser_answer(String user_answer) {
		this.user_answer = user_answer;
	}
	@Override
	public String toString() {
		return "Auction_user [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + ", user_card_no="
				+ user_card_no + ", user_tel=" + user_tel + ", user_address="
				+ user_address + ", user_post_number=" + user_post_number
				+ ", user_is_admin=" + user_is_admin + ", user_question="
				+ user_question + ", user_answer=" + user_answer + "]";
	}
	
}
