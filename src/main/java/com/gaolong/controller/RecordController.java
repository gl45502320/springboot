package com.gaolong.controller;

import com.gaolong.entity.Auction;
import com.gaolong.entity.Auction_record;
import com.gaolong.entity.User;
import com.gaolong.service.AuctionService;
import com.gaolong.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


@Controller
public class RecordController {
	@Autowired
	private AuctionService auctionService;
	@Autowired
	private RecordService recordService;
	
	@RequestMapping("/auctionOne")
	public String auctionOne(Map map,int auction_id){
		Auction auc=auctionService.selectOne(auction_id);
		List<Auction_record>list=recordService.selectlist(auction_id);
		map.put("auc", auc);
		map.put("list", list);
		return "/private/auction";
	}
	
	//��Ӿ�������
	@RequestMapping("/insertOneRecord")
	public String insertOneRecord(HttpSession session,int auction_id,double auction_price){
			User us=(User) session.getAttribute("user");
			int id=us.getUser_id();
			recordService.insertRecord(id, auction_id, auction_price);
			return "redirect:/auctionOne.long?auction_id="+auction_id;
	}
}
