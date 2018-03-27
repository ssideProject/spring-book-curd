package com.app.book.dao;


import java.util.List;

import org.springframework.ui.Model;

import com.app.book.model.Book;

public interface BookDao {
	int addBook(Book book);
	Book viewBook(String id);
	int updateBook(Book book);
	List<Book> bookList();
}
