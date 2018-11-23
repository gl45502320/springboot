package com.gaolong.controller;

import com.gaolong.entity.User;
import com.gaolong.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/login")
	public String login(HttpSession session,User user,Map map,String kaptcha){
		System.out.println("你好！！！");
		String sessionkaptcha=(String)session.getAttribute("Kaptcha");
		if(sessionkaptcha.equalsIgnoreCase(kaptcha)){
			User us=userService.selectOne(user);
			if(us!=null){
				System.out.println("us----> "+us);
				session.setAttribute("user", us);
				User uss=(User) session.getAttribute("user");
				return "redirect:/selectAll.long";
			}else{
				map.put("error", "�˺Ż�������������");
				return "/login";
			}
		}else{
			map.put("error", "��֤�벻��ȷ�����������룡");
			return "/login";
		}
	}
	@RequestMapping("logon")
	public String logon(HttpSession session,User user,Map map,String kaptcha){
		String sessionkaptcha=(String)session.getAttribute("Kaptcha");
		if(sessionkaptcha.equalsIgnoreCase(kaptcha)){
			userService.insertOne(user);
			return "/login";
		}else{
			map.put("error", "��֤�벻��ȷ�����������룡");
			return "/auction_logon";
		}
	}
}
