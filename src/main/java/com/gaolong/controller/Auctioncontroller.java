package com.gaolong.controller;

import com.gaolong.entity.Auction;
import com.gaolong.service.AuctionService;
import com.gaolong.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class Auctioncontroller {
	@Autowired
	private AuctionService auctionService;
	@Autowired
	private RecordService recordService;
	
	//��ѯȫ�� &������ѯ
	@RequestMapping("/selectAll")
	public String selectAll(Map map,Auction auction){
		List<Auction>list=auctionService.listAll(auction);
		map.put("list",list);
		return "/private/auction_manage";
	}
	
	//���
	@RequestMapping("/insertOne")
	public String insertOne(Auction auction,MultipartFile tupian) throws IllegalStateException, IOException{
		
		String fileName=tupian.getOriginalFilename();
		tupian.transferTo(new File("E:\\idea_space\\springboot\\src\\main\\webapp\\images"+fileName));
		auction.setAuction_pic(fileName);
		
		System.out.println("insertOne ----- auction------>"+auction);
		auctionService.insertOne(auction);
		return "redirect:/selectAll.long";
	}
	
	//ɾ��
	@RequestMapping("/deleteOne")
	public String deleteOne(int auction_id){
		auctionService.deleteOne(auction_id);
		return "redirect:/selectAll.long";
	}
	//�޸ģ���ѯ��
	@RequestMapping("/selectOne")
	public String selectOne(Map map,int auction_id){
		Auction auc=auctionService.selectOne(auction_id);
		map.put("auc", auc);
		return "/private/update_auction";
	}
	//�޸�
	@RequestMapping("updateOne")
	public String updateOne(Auction auction,MultipartFile tupian) throws IllegalStateException, IOException{
		String fileName=tupian.getOriginalFilename();
		System.out.println("fileName------->"+fileName);
		if(fileName!=null){
		tupian.transferTo(new File("E:\\idea_space\\springboot\\src\\main\\webapp\\images\\"+fileName));
		auction.setAuction_pic(fileName);
			
		}
		auctionService.updateOne(auction);
		return "redirect:/selectAll.long";
	}

}
