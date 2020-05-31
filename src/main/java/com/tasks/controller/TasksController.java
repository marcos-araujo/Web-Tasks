package com.tasks.controller;

import java.text.SimpleDateFormat;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasks.controller.aux.Constant;
import com.tasks.dao.TaskDAO;
import com.tasks.model.Task;

@Transactional
@Controller
public class TasksController{
	
	@Autowired
	private TaskDAO taskDAO;
	
	@RequestMapping("newTask")
	public String form(){
		return Constant.PAGE_TASKS_EDIT;
	}
	
	@RequestMapping("saveTask")
	public String save(@Valid Task task, BindingResult result){
		if(result.hasFieldErrors("description"))
			return Constant.REDIRECT_LIST_TASKS;
		if(task.getClosingDate() != null)
			task.setClosed(true);
		if(task.getId() == null)
			taskDAO.add(task);
		else
			taskDAO.update(task);
		return Constant.REDIRECT_LIST_TASKS;
	}

	@RequestMapping("editTask")
	public String edit(Long id, Model model){
		Task dao = taskDAO.get(id);
		if(dao.getClosingDate() != null)
			model.addAttribute("date", new SimpleDateFormat("dd/MM/yyyy").format(dao.getClosingDate().getTime()));
		model.addAttribute("task", dao);
		return Constant.PAGE_TASKS_EDIT;
	}
	
	@RequestMapping("listTasks")
	public String list(Model model){
		model.addAttribute("tasks", taskDAO.list());
		return Constant.PAGE_TASKS_LIST;
	}
	
	@RequestMapping("deleteTask")
	public String delete(Long id){
		if(id != null)
			taskDAO.delete(id);
		return Constant.REDIRECT_LIST_TASKS;
	}

	@RequestMapping("closeTask")
	public String close(Long id, Model model){
		model.addAttribute("task", taskDAO.close(id));
		return Constant.PAGE_TASKS_CLOSED;
	}

	@RequestMapping("reopenTask")
	public String reopen(Long id, Model model){
		taskDAO.reopen(id);
		model.addAttribute("task", taskDAO.get(id));
		return Constant.PAGE_TASKS_CLOSED;
	}
	
	@RequestMapping("about")
	public String about(){
		return Constant.PAGE_ABOUT;
	}
	
}