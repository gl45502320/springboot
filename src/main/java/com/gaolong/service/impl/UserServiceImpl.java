package com.gaolong.service.impl;


import com.gaolong.dao.UserDao;
import com.gaolong.entity.User;
import com.gaolong.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User selectOne(User user) {
		return userDao.selectOne(user);
	}

	@Override
	public void insertOne(User user) {
		userDao.insertOne(user);
	}

}
