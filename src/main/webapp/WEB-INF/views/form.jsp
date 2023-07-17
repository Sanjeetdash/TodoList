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
  <link href="<c:url value="/resources/style/style.js"/>">
  <script src="<c:url value="/resources/js/validation.js"/>" ></script>
</head>
<body>
 <div class="container my-3">


        <div class="row">
            <div class="col-md-4 " > 
            </div>

            <div class="col-md-4 mb-3 box" style=" box-shadow: 7px 12px 8px 5px #cecdcd; background-color:rgb(239, 239, 239);border-radius: 5px;">
                <form method="post" action="insert" onsubmit="validate(event)">
                <h1 class="text-center my-2">Sign Up</h1>

	        <h1 style="margin-left:30px; color:white;"> </h1>
                    <label  class="form-label my-3 ">Name</label>
                    <input type="text" class="form-control mb-3"  name="name"  id="name">
                    <label for="" class="text-danger" id="name_error"></label><br>
                    <label  class="form-label">Email</label>
                    <input type="text" class="form-control mb-3" name="email" id="email">
                    <label for="" class="text-danger" id="email_error"></label><br>
                    <label  class="form-label">Mobile</label>
                    <input type="text" class="form-control mb-3" name="mobile" id="mobile">
                    <label for="" class="text-danger" id="mobile_error"></label>
                    
                    
                    <input type="Submit"  name="submit" value="Sign Up" class="mb-3 btnn btn-primary" style="display: block; margin: auto; padding:5px; border-radius: 5px;">
                </form>
                </div>
            <div class="col-md-4">

            </div>
            
        </div>
    </div>

</body>
</html>