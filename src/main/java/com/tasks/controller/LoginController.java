package com.tasks.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasks.controller.aux.Constant;
import com.tasks.dao.UserDAO;
import com.tasks.model.User;

@Transactional
@Controller
public class LoginController{
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return Constant.PAGE_LOGIN;
	}
	
	@RequestMapping("login")
	public String login(User user, HttpSession session){
		User userBD = userDAO.isValid(user);
		if(userBD != null){
			session.setAttribute("userOnline", userBD);
			return "redirect:" + Constant.LIST_TASKS;
		}
		session.setAttribute("message", "User not found");
		return "redirect:" + Constant.LOGIN_FORM;
	}
	
	@RequestMapping("logout") 
	public String logout(HttpSession session){ 
		session.invalidate(); 
		return "redirect:" + Constant.LOGIN_FORM;
	}
	
}