package com.ganesh.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ganesh.entity.Book;
import com.ganesh.repository.BookRepository;

@Controller
public class BookController {
	
	
	@Autowired
	BookRepository bookRepository;

	
	@GetMapping("/")
	public ModelAndView getBookForm() {
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("book-form");
		
		return mav;
	}
	
	
	@GetMapping("/search-book")
	public ModelAndView searchBook(@RequestParam("bookId") int id) {
		
		System.err.println(id);
		
		ModelAndView mav=new ModelAndView();
		
		Optional<Book> op = bookRepository.findById(id);
		
		if (op.isPresent()) {
			
			Book book = op.get();
			mav.addObject("book", book);
		}
		else {
			
			mav.addObject("msg", "Book Not Available");
		}
		
		mav.setViewName("book-form");
		
		return mav;
	}
	
}
