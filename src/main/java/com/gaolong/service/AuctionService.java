package com.gaolong.service;


import com.gaolong.entity.Auction;

import java.util.List;

public interface AuctionService {
	public List<Auction> listAll(Auction auction);
	
	public void deleteOne(int id);
	
	public void updateOne(Auction auction);
	
	public Auction selectOne(int id);
	
	public void insertOne(Auction auction);
	
}
