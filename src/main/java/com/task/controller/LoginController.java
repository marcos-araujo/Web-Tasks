package com.task.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.task.dao.UserDAO;
import com.task.model.User;

@Transactional
@Controller
public class LoginController{
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return "general/login";
	}
	
	@RequestMapping("doLogin")
	public String doLogin(User user, HttpSession session){
		if(userDAO.isValid(user)){
			session.setAttribute("userOnline", user);
			return "redirect:listTasks";
		}
		session.setAttribute("message", "User not found");
		return "redirect:loginForm";
	}
	
	@RequestMapping("logout") 
	public String logout(HttpSession session){ 
		session.invalidate(); 
		return "redirect:loginForm";
	}
	
}