package com.task.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TASK")
public class Task{
	
	@Id
	@GeneratedValue
	@Column(name = "ID")
	private Long id;
	@Column(name = "NAME")
	private String name;
	@NotNull @Size(min=5)
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "CLOSED")
	private boolean closed;
	@Column(name = "FINALIZATION_DATE")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar finalizationDate;
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id = id;
	}
	
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
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