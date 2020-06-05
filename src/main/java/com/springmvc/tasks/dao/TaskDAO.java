package com.springmvc.tasks.dao;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.springmvc.tasks.model.Task;

@Repository
public class TaskDAO{
	
	@PersistenceContext 
	private EntityManager manager;
	
	public void add(Task task){
		manager.persist(task); 
	}
	
	public void update(Task task){ 
		manager.merge(task); 
	}
	
	public List<Task> list(){ 
		return manager.createQuery("SELECT t FROM Task t").getResultList(); 
	}
	
	public Task get(Long id){ 
		return manager.find(Task.class, id); 
	}
	
	public void delete(Long id){ 
		manager.remove(get(id)); 
	}
	
	public Task close(Long id){ 
		Task task = get(id); 
		task.setClosed(true); 
		task.setClosingDate(Calendar.getInstance()); 
		return task;
	}
	
	public void reopen(Long id){ 
		Task task = get(id); 
		task.setClosed(false); 
		task.setClosingDate(null); 
	}

}