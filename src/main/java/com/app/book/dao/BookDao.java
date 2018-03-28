package com.app.book.dao;


import java.util.List;

import org.springframework.ui.Model;

import com.app.book.model.Book;

public interface BookDao {
	void addBook(Book book);
	Book viewBook(String id);
	void updateBook(Book book);
	List<Book> bookList();
	void deleteBook(String id);
}
