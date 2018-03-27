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
        <td width="200px">수량</td>
        <td width="80px">버튼</td>
    </tr>
<c:forEach var="books" items="${books}">
    <tr align="center">
        <td>${books.id}</td>
        <td>${books.name}</td>
        <td>${books.writer}</td>
        <td>${books.price}</td>
        <td>${books.genre}</td>
        <td>${books.publisher}</td>
        <td>${books.cnt}</td>
        <td>
        	<button type="button" onclick="location.href='updateView?id=${books.id}' ">수정</button>
        	<button type="button" onclick="location.href='delete?id=${books.id}' ">삭제</button>
        </td>
    </tr>
</c:forEach>
</table>
<button type="button" onclick="location.href='add' ">책 등록</button>

</body>
</html>