package com.springmvc.tasks.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.tasks.controller.aux.Constant;
import com.springmvc.tasks.dao.UserDAO;
import com.springmvc.tasks.model.User;

@Transactional
@Controller
public class LoginController{
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return Constant.PAGE_LOGIN;
	}
	
	@RequestMapping("doLogin")
	public String login(User user, HttpSession session){
		User userBD = userDAO.isValid(user);
		if(userBD != null){
			session.setAttribute("userOnline", userBD);
			return Constant.REDIRECT_LIST_TASKS;
		}
		session.setAttribute("message", "User not found");
		return Constant.REDIRECT_LOGIN_FORM;
	}
	
	@RequestMapping("logout") 
	public String logout(HttpSession session){ 
		session.invalidate(); 
		return Constant.REDIRECT_LOGIN_FORM;
	}
	
}