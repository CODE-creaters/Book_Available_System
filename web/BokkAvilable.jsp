<%-- 
    Document   : booksave
    Created on : Sep 22, 2020, 4:03:11 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BOOK AVAILABLE Page</title>
    
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
  background-image: url("Images/Library.jpg");

  min-height: 735px;
  

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 450px;
  margin: 50px;
  max-width: 500px;
  padding: 16px;
  background-color: #BCBCBE;
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
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body>

<div class="bg-img">
  <form action="Add_bk_AvilableServlet" class="container">
      <h1><center> BOOK AVAILABLE </center></h1>

    <label for="bid"><b>Book ID</b></label>
    <input type="text" placeholder="Enter Book ID" name="bid" required>

    <label for="bname"><b>Book Name</b></label>
    <input type="text" placeholder="Enter Book name" name="bname" required>

    <label for="bauthor"><b>Book author</b></label>
    <input type="text" placeholder="Enter Book author" name="bauthor" required>
    
    <label for="bcat"><b> Book Categories</b></label>
    <input type="text" placeholder="Enter categories" name="bcat" required>
    
    <label for="bavail"><b>Book Available </b></label> <br>
    <input type="text" placeholder="Enter Book Availabilitie" name="bavail" required>
       
   
      
    

    <button type="submit" class="btn">Login</button>
  </form>
</div>

</body>
</html>

