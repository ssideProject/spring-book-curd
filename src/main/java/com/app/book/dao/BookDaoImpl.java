package com.app.book.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.app.book.model.Book;


@Repository
public class BookDaoImpl implements BookDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Book> bookList() {
		return sqlSession.selectList("book.bookList");
	}

	@Override
	public void addBook(Book book) {
		sqlSession.insert("book.addBook", book);
	}

	@Override
	public void updateBook(Book book) {
		sqlSession.update("book.updateBook", book);
	}

	@Override
	public Book viewBook(String id) {
		return sqlSession.selectOne("book.viewBook",id);
	}

	@Override
	public void deleteBook(String id) {
		sqlSession.delete("book.deleteBook", id);
		
	}

}
