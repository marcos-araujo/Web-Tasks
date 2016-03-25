package com.task.dao;

import java.util.List;

import com.task.model.Task;

public interface TaskDAO{
	
	Task get(Long id); 
	List<Task> list(); 
	void add(Task t); 
	void update(Task t); 
	void delete(Task t); 
	void close(Long id);
	
}