package com.app.book.service;


import java.util.List;

import org.springframework.ui.Model;

import com.app.book.model.Book;

public interface BookService {
	List<Book> bookList();
	int addBook(Book book);
	Book viewBook(Book book);
	int updateBook(Book book);
}
