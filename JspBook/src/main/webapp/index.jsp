<%@ page import ="dao.BookDao" %>
<%@ page import ="pojo.Book" %>
<%@ page import ="daoImpl.BookDaoImpl" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h2>Search the Book</h2>
	<form action="search.jsp" method="post" class="form">
		<div class="form-group col-xs-3">
			<input type="text" placeholder="Enter Book name..." name="bookname" class="form-control"/>
		</div>
			<input type="submit" value="Search" class="btn btn-success"/>
	</form>
</body>
</html>
