<%-- 
    Document   : Read_Book_Online
    Created on : Sep 22, 2020, 12:06:09 AM
    Author     : DIL-SOFT 02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Online Book Page</title>
        
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery1 {
  margin: 5px;
  border: 0px ;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 75%;
  height: 50%;
}

div.desc {
  padding: 15px;
  text-align: center;
}

.header {
  padding: 60px;
  text-align: center;
  background: #45B8AC;
  color: white;
  font-size: 30px;
}

.content {padding:20px;}
</style>
</head>
<body>
    
<div class="header">
    <h1>Online Book Store</h1>
    <p></p>
</div>
    
<div class="content">
</div>

<center>

<div class="gallery1">

</div>

<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="Images/book-cover-To-Kill-a-Mockingbird-many-1961.jpg" alt="Forest" width="600" height="400">
  </a>
  <div class="desc">To Kill a Mockingbird</div>
  <p>By ABC</p>
</div>

<div class="gallery">
  <a target="_blank" href="Madol Duwa.jpg">
    <img src="Images/Madol Duwa.jpg" alt="Northern Lights" width="600" height="600">
  </a>
  <div class="desc">Madol Doova</div>
  <p>By ABC</p>
</div>

<div class="gallery">
  <a target="_blank" href="Harry.jpeg">
    <img src="Images/Harry.jpeg" alt="Mountains" width="600" height="400">
  </a>
  <div class="desc">Harry Potter</div>
</div>
    
    
    

    

</center>
</body>
</html>

