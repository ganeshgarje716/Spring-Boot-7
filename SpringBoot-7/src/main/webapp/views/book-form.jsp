<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
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

 <a href="allbooks">All Books</a>

 <form action="search-book">
 
     <label>Book ID</label>
     <input type="number" placeholder="Enter Book ID" name="bookId">
     <br>
     <input type="submit" value="search">
 
 
 </form>
 
 
 <table border="2" width="100%" height= "50%"   >
 
    <tr bgcolor="yellow">
       <th>ID</th>
       <th>Name</th>
       <th>Price</th>
       <th>Qty</th>    
    </tr>
    
    <c:forEach var="book" items="${books}">
    <tr align="center" bgcolor="pink">
        <td>${book.id}</td>
        <td>${book.name}</td>
        <td>${book.price}</td>
        <td>${book.qty}</td>
    </tr>
    </c:forEach>
 
 </table>
 
   <h4 style="color: red">${msg}</h4>
 
   <h3>${book.id}</h3>
   <h3>${book.name}</h3>
   <h3>${book.price}</h3>
   <h3>${book.qty}</h3>
   
 
 </div>

</body>
</html>