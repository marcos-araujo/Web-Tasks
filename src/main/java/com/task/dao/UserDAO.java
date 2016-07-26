package com.task.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.task.model.User;

@Repository
public class UserDAO{
	
	@PersistenceContext 
	private EntityManager manager;
	
	public boolean isValid(User user){
		String queryH = "from User u where u.user = :user and u.password = :password";
		List result = manager.createQuery(queryH).setParameter("user", user.getUser()).setParameter("password", user.getPassword()).getResultList();
		
		if(result.size()>0)
			return true;

		return false;
	}
}