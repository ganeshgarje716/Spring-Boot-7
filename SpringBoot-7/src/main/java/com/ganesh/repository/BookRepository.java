package com.ganesh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ganesh.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer>{
	
	

}
