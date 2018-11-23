package com.gaolong.dao;


import com.gaolong.entity.Auction;
import com.gaolong.entity.Auction_record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuctionDao{
	public List<Auction> listAll(Auction auction);
	
	public void deleteOne(int id);
	
	public void updateOne(Auction auction);
	
	public Auction selectOne(int id);
	
	public void insertOne(Auction auction);
	
	public List<Auction_record> selectlist(int id);
	
	public void insertRecord(@Param("user_id") int user_id, @Param("auction_id") int auction_id, @Param("auction_price") double auction_price);
	
	
}
