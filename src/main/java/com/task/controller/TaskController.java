package com.task.controller;

import java.text.SimpleDateFormat;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.task.dao.TaskDAO;
import com.task.model.Task;

@Transactional
@Controller
public class TaskController{
	
	@Autowired
	private TaskDAO taskDAO;
	
	@RequestMapping("newTask")
	public String form(){
		return "task/form";
	}

	@RequestMapping("addTask")
	public String add(@Valid Task task, BindingResult result){
		if(result.hasFieldErrors("description")) 
			return "task/form";
		taskDAO.add(task);
		return "redirect:listTasks";
	}
	
	@RequestMapping("showTask")
	public String show(Long id, Model model){
		Task dao = taskDAO.get(id);
		if(dao.getFinalizationDate() != null)
			model.addAttribute("date", new SimpleDateFormat("dd/MM/yyyy").format(dao.getFinalizationDate().getTime()));
		model.addAttribute("task", dao);
		return "task/show";
	}
	
	@RequestMapping("updateTask")
	public String altera(@Valid Task task, BindingResult result){
		if(result.hasFieldErrors("description"))
			return "task/show";
		taskDAO.update(task);
		return "redirect:listTasks";
	}
	
	@RequestMapping("listTasks")
	public String lista(Model model){
		model.addAttribute("tasks", taskDAO.list());
		return "task/list";
	}
	
	@RequestMapping("deleteTask")
	public String delete(Task task){
		taskDAO.delete(task);
		return "redirect:listTasks";
	}

	@RequestMapping("closeTask")
	public String close(Long id, Model model){
		taskDAO.close(id);
		model.addAttribute("task", taskDAO.get(id));
		return "task/closed";
	}
	
}