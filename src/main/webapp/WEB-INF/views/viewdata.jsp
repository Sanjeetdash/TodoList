<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>


<table class="table mx-auto my-5" style="width:700px;">
  <thead class="thead-light">
    <tr>
      
      <th class="text-center" scope="col">name</th>
      <th class="text-center" scope="col">email</th>
      <th class="text-center" scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${data}" var="t">
    <tr>
     
      <td class="text-center">${t.name}</td>
      <td class="text-center">${t.email}</td>
      <td class="text-center"><a href="empdelete/${t.name}">delete</a>
      						  <a href="empupdate/${t.name}">Update</a>
      </td>
    </tr>
  
  </c:forEach>
  </tbody>
 
</table>
<div class="text-center">
  <button type="button" class="btn btn-success" >
  <a href="form" style=" text-decoration: none;color: white; ">ADD</a></button>
</div>
</body>
</html>