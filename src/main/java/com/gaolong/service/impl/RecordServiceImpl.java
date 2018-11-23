package com.gaolong.service.impl;


import com.gaolong.dao.RecordDao;
import com.gaolong.entity.Auction_record;
import com.gaolong.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {
	@Autowired
	private RecordDao recordDao;
	@Override
	public List<Auction_record> selectlist(int id) {
		return recordDao.selectlist(id);
	}

	@Override
	public void insertRecord(int user_id, int auction_id, double auction_price) {
		recordDao.insertRecord(user_id, auction_id, auction_price);
	}

}
