<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>Home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#btnUpdate").click(function(){
            // 확인 대화상자    
            if(confirm("수정하시겠습니까?")){
                document.form1.action = "${path}/book/update.do";
                document.form1.submit();
            }
        });
    });
    $(document).ready(function(){
        $("#btnDelete").click(function(){
            // 확인 대화상자 
            if(confirm("삭제하시겠습니까?")){
                document.form1.action = "${path}/book/delete.do";
                document.form1.submit();
            }
        });
    });
	</script>
    
    
    
</head>
<body>
<h1>
    book add
</h1>
<form:form conmandName="bookResult" >
	<table border="1">
	    <tr align="center">
	        <td width="100px">아이디</td>
	        <td width="100px">책이름</td>
	        <td width="100px">글쓴이</td>
	        <td width="100px">가격</td>
	        <td width="100px">장르</td>
	        <td width="200px">출판사</td>
	    </tr>
	    <c:if test="${registerFlag == 'create'}">
	    <h2>등록화면</h2>
		    <tr align="center">
		        <td><input type="text" name="id" /></td>
		        <td><input type="text" name="name" /></td>
		        <td><input type="text" name="writer"/></td>
		        <td><input type="text" name="price"/></td>
		        <td><input type="text" name="genre" /></td>
		        <td><input type="text" name="publisher" /></td>
		    </tr>
		 </c:if>
		 
		 <c:if test="${registerFlag == 'modify'}">
		 <h2>수정화면</h2>
			    <tr align="center">
			        <td><input type="text" name="id" value="${bookResult.id}" /></td>
			        <td><input type="text" name="name" value="${bookResult.name}" /></td>
			        <td><input type="text" name="writer" value="${bookResult.writer}"  /></td>
			        <td><input type="text" name="price" value="${bookResult.price}"  /></td>
			        <td><input type="text" name="genre" value="${bookResult.genre}"  /></td>
			        <td><input type="text" name="publisher" value="${bookResult.publisher}"  /></td>
			    </tr>
		 </c:if>
		 <td colspan="2" align="center">
                    <input type="button" value="수정" id="btnUpdate">
                    <input type="button" value="삭제" id="btnDelete">
                    <div style="color: red;">${message}</div>
         </td>
	</table>
		
</form:form>
</body>
</html>