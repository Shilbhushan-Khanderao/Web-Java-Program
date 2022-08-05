<%@ page import ="dao.BookDao" %>
<%@ page import ="pojo.Book" %>
<%@ page import ="daoImpl.BookDaoImpl" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String bname = request.getParameter("bookname");
		BookDao dao = new BookDaoImpl();
		Book book = dao.search(bname);
		
		if(book != null){
	%>
		<h1 style="color:green">Search Result</h1>
		<div class="container color-primary">
			<h3>Book Id 	: <%=book.getBookid() %></h3>
			<h3>Book Name   : <%=book.getBookname() %></h3>
			<h3>Author Name : <%=book.getAuthor() %></h3>
			<h3>Price       : <%=book.getPrice() %></h3>
		</div>
		<%
		}else{
			%>
			<div>
				<h1>No Record Found...</h1>
			</div>
			<%
		}
		%>
</body>
</html>