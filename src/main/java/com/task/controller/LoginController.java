package com.task.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.task.dao.UserDAO;
import com.task.model.User;

@Controller
public class LoginController{
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return "form-login";
	}
	
	@RequestMapping("doLogin")
	public String doLogin(User user, HttpSession session){
		if(new UserDAO().isValid(user)){
			session.setAttribute("userOnline", user);
			return "redirect:listTasks";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("logout") 
	public String logout(HttpSession session){ 
		session.invalidate(); 
		return "redirect:loginForm";
	}
	
}