package com.task.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.task.model.User;

@Repository
public class UserDAO{
	
	@PersistenceContext 
	private EntityManager manager;
	
	public boolean isValid(User user){
		Query query = manager.createQuery("from User u where u.user = :user and u.password = :password");
		query = query.setParameter("user", user.getUser()).setParameter("password", user.getPassword());
		
		if(query.getResultList().size() > 0)
			return true;
		
		return false;
	}
}