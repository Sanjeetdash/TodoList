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
 <div class="container my-3">


        <div class="row">
            <div class="col-md-4 " > 
            </div>

            <div class="col-md-4 mb-3 box" style="border: 1px solid black;  background-color:#4a8a9c;border-radius: 5px;">
                <form method="post" action="check" >
                <h1>login</h1>

	        <h1 style="margin-left:30px; color:white;"> </h1>
                    <label  class="form-label my-3">Name</label>
                    <input type="text" class="form-control mb-3"  name="name">
                    <label  class="form-label">Email</label>
                    <input type="text" class="form-control mb-3" name="email">
                    
                    
                    <input type="Submit"  name="submit" value="Sign Up" class="mb-3 btnn" style="display: block; margin: auto; padding:5px; border-radius: 5px;">
                </form>
                </div>
            <div class="col-md-4">

            </div>
            
        </div>
    </div>

</body>
</html>