package com.tasks.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.tasks.model.User;

@Repository
public class UserDAO{
	
	@PersistenceContext 
	private EntityManager manager;
	
	public User isValid(User user){
		Query query = manager.createQuery("from User u where u.login = :user and u.password = :password");
		query = query.setParameter("user", user.getLogin()).setParameter("password", user.getPassword());
		
		try{
			return (User) query.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
		
	}
}