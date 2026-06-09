package com.ganesh.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "books")
public class Book {
	
	
	@Id
	private Integer id;
	
	private String name;
	
	private Double price;
	
	private Integer qty;
	

}
