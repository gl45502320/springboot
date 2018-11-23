package com.gaolong.entity;

import java.io.Serializable;

public class Auction_record implements Serializable {
	private int id;
	private int user_id;
	private int auction_id;
	private String auction_time;
	private double auction_price;
	private User user;
	public Auction_record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Auction_record(int id, int user_id, int auction_id,
			String auction_time, double auction_price) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.auction_id = auction_id;
		this.auction_time = auction_time;
		this.auction_price = auction_price;
	}
	public Auction_record(int user_id, int auction_id, String auction_time,
			double auction_price) {
		super();
		this.user_id = user_id;
		this.auction_id = auction_id;
		this.auction_time = auction_time;
		this.auction_price = auction_price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAuction_id() {
		return auction_id;
	}
	public void setAuction_id(int auction_id) {
		this.auction_id = auction_id;
	}
	public String getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(String auction_time) {
		this.auction_time = auction_time;
	}
	public double getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(double auction_price) {
		this.auction_price = auction_price;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Auction_record [id=" + id + ", user_id=" + user_id
				+ ", auction_id=" + auction_id + ", auction_time="
				+ auction_time + ", auction_price=" + auction_price + ", user="
				+ user + "]";
	}
	
}
