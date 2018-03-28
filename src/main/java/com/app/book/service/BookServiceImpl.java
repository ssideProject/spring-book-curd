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
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}


	@Override
	public void addBook(Book book) {
		bookDao.addBook(book);
	}


	@Override
	public Book viewBook(String id) {
		return bookDao.viewBook(id);
	}


	@Override
	public void deleteBook(String id) {
		bookDao.deleteBook(id);		
	}

}
