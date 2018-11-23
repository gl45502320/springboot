package com.gaolong.dao;

import com.gaolong.entity.Auction_record;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface RecordDao {
	public List<Auction_record> selectlist(int id);
	
	public void insertRecord(@Param("user_id") int user_id, @Param("auction_id") int auction_id, @Param("auction_price") double auction_price);
	
}
