package com.gaolong.service.impl;


import com.gaolong.dao.AuctionDao;
import com.gaolong.entity.Auction;
import com.gaolong.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuctionServiceImpl implements AuctionService {

	@Autowired
	private AuctionDao auctionDao;
	@Override
	public List<Auction> listAll(Auction auction) {
		String name=auction.getAuction_name();
		String desc=auction.getAuction_desc();
		if(name!=null&desc==null){
			String names="%"+name+"%";
			auction.setAuction_name(names);
		}else if(desc!=null&name==null){
			String descc="%"+desc+"%";
			auction.setAuction_desc(descc);
		}else if(name!=null&desc!=null){
			String names="%"+name+"%";
			auction.setAuction_name(names);
			String descc="%"+desc+"%";
			auction.setAuction_desc(descc);
		}
		return auctionDao.listAll(auction);
	}

	@Override
	public void deleteOne(int id) {
		auctionDao.deleteOne(id);
	}

	@Override
	public void updateOne(Auction auction) {
		auctionDao.updateOne(auction);
	}

	@Override
	public Auction selectOne(int id) {
		return auctionDao.selectOne(id);
	}

	@Override
	public void insertOne(Auction auction) {
		auctionDao.insertOne(auction);
	}

}
