<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>

     <%@ include file="header.jsp" %>
     
     <h1>Students Data</h1> 
     
     <table class="table">
         <tr>
             <th>Id</th>
             <th>Fullname</th>
             <th>Email</th>
             <th>Password</th>
             <th>Address</th>
             <th></th>
         </tr>
         
         <c:forEach var="s" items="${list}" varStatus="status">
         <tr>
            <td>${status.index + 1}</td>
            <td>${s.fullname}</td>
            <td>${s.email}</td>
            <td>${s.password}</td>
            <td>${s.address}</td>
      
         <td>
               <a href="delete/${s.id}" class="btn btn-danger" onClick="return confirm('Are you sure ?')">Delete</a>
               <a href="profileedit/${s.id}" class="btn btn-success">Profile Edit</a>
         </td>
         </tr>
         </c:forEach>
    </table>
</body>
</html>


