<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>Home</title>    
</head>
<body>
<h1>
    book add
</h1>
<form name="book" method="post" action="/book/insert.do">
	<table border="1">
	    <tr align="center">
	        <td width="100px">아이디</td>
	        <td width="100px">책이름</td>
	        <td width="100px">글쓴이</td>
	        <td width="100px">가격</td>
	        <td width="100px">장르</td>
	        <td width="200px">출판사</td>
	    </tr>
	    
	    <h2>등록화면</h2>
		    <tr align="center">
		        <td><input name="id" /></td>
		        <td><input name="name" /></td>
		        <td><input name="writer"/></td>
		        <td><input name="price"/></td>
		        <td><input name="genre" /></td>
		        <td><input name="publisher" /></td>
		    </tr>
	</table>
		<input type="submit" value="확인">
        <input type="reset" value="취소">		
</form>
</body>
</html>