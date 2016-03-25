package com.task.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Task{
	
	@Id
	@GeneratedValue
	private Long id;
	@NotNull @Size(min=5)
	private String description;
	private boolean closed;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar finalizationDate;
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id = id;
	}
	
	public String getDescription(){
		return description;
	}
	public void setDescription(String description){
		this.description = description;
	}
	
	public boolean isClosed(){
		return closed;
	}
	public void setClosed(boolean closed){
		this.closed = closed;
	}
	
	public Calendar getFinalizationDate(){
		return finalizationDate;
	}
	public void setFinalizationDate(Calendar finalizationDate){
		this.finalizationDate = finalizationDate;
	}
	
}