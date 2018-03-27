package com.app.book.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.book.model.Book;
import com.app.book.service.BookService;


@Controller 
public class BookController {
	//로그를 활용하자
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookService bookService;
	
	@RequestMapping("/")
	public ModelAndView bookList() {
		List<Book> list = bookService.bookList();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("book/book");
        mav.addObject("books", list);
        return mav;
	}
	
	
}