<%-- 
    Document   : Check_Bk_Availability
    Created on : Sep 22, 2020, 4:11:14 PM
    Author     : DIL-SOFT 02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Check Book</title>
    
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("Images/bk.gif");

  min-height: 730px;
  

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 320px;
  margin: 200px;
  max-width: 500px;
  padding: 16px;
  background-color: #CFB095;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 10;
}

.btn:hover {
  opacity: 1;
}

.h1 {
    color: white;
}
</style>
</head>
<body>

<div class="bg-img">
  <form action="Bk_AvilabilityServlet" class="container">
      <center>  <h1 class="h1"> Check Book Availability</h1> </center>

    <label for="bkname" class="h1"><b>Book Name</b></label>
    <input type="text" placeholder="Enter Book Name" name="bkname" required>

    <label for="bkauthor" class="h1"><b>Book Author</b></label>
    <input type="text" placeholder="Enter Book Author" name="bkauthor" required>

    
    <button type="submit" class="btn">Search</button>
  </form>
</div>

</body>
</html>


