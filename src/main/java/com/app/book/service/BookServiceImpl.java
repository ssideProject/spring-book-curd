package com.app.book.service;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.app.book.dao.BookDao;
import com.app.book.model.Book;


@Service
public class BookServiceImpl implements BookService	{ 
	
	@Resource
	private BookDao bookDao;
	

	public List<Book> bookList() { 
		return bookDao.bookList();		
	}


	@Override
	public int updateBook(Book book) {
		return bookDao.updateBook(book);
	}


	@Override
	public int addBook(Book book) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Book viewBook(Book book) {
		// TODO Auto-generated method stub
		return null;
	}

}
