<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style type="text/css">
 
 div{
     box-shadow: 0px 0px 10px black;
     margin: 100px auto;
     padding: 50px;
     width: 400px;
     height: 400px;
     
 }
 
 </style>

</head>
<body>

<div>

 <form action="search-book">
 
     <label>Book ID</label>
     <input type="number" placeholder="Enter Book ID" name="bookId">
     <br>
     <input type="submit" value="search">
 
 
 </form>
 
   <h4 style="color: red">${msg}</h4>
 
   <h3>${book.id}</h3>
   <h3>${book.name}</h3>
   <h3>${book.price}</h3>
   <h3>${book.qty}</h3>
   
 
 </div>

</body>
</html>