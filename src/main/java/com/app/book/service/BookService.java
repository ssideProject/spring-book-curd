package com.app.book.service;


import java.util.List;

import org.springframework.ui.Model;

import com.app.book.model.Book;

public interface BookService {
	List<Book> bookList();
	void addBook(Book book);
	Book viewBook(String id);
	void updateBook(Book book);
	void deleteBook(String id);
}
