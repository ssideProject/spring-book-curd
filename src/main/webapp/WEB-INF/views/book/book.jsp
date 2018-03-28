<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
	    <title>Home</title>
	</head>
<body>
<h1>
    book list  
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">아이디</td>
        <td width="100px">책이름</td>
        <td width="100px">글쓴이</td>
        <td width="100px">가격</td>
        <td width="100px">장르</td>
        <td width="200px">출판사</td>
        <td width="100px">수량</td>
        <td width="auto">버튼</td>
    </tr>
<c:forEach  var="book" items="${books}" >
    <tr>
        <td>${book.id}</td>
        <td>${book.name}</td>
        <td>${book.writer}</td>
        <td>${book.price}</td>
        <td>${book.genre}</td>
        <td>${book.publisher}</td>
        <td>${book.cnt}</td>
        <td>
        <button type="button" onclick="location.href='${path }/book/view.do?id=${book.id}' ">상세</button></td>
    </tr>
</c:forEach>
</table>
<button type="button" onclick="location.href='addBook.do' ">책 등록</button>
</body>
</html>