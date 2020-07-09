<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <title>Virtusa V-Academy</title>
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
        <style>
body {
  background-image: url(https://aibworld.net/wp-content/uploads/2016/10/online-education.jpg);
    
    background-attachment: fixed;
    background-repeat: no-repeat;
    background-position: right;
    background-size: 900px 700px;
}
.aa{
  width: 350px;
    height: 200px;
    background-color: rgba(0,0,0,0.25);
    margin-left: 100px;
    margin-top: 129px;
    padding-top: 50px;
    padding-left: 20px;
    border-radius: 15px;
    color: black;
    font-weight: bold;
}
.aa input[type="text"]{
    width: 200px;
    height:35px;
    border-radius: 5px;
    font-family:Arial, Helvetica, sans-serif;
}      
.aa input[type="password"]{
    width: 200px;
    height:35px;
    border-radius: 5px;
    font-family:Arial, Helvetica, sans-serif;
}      
.aa input[type="submit"]{
    width: 80px;
    height:35px;
    border-radius: 5px;
    margin-left: 90px;
    font-family: bold;
}    
.aa label{
    font-size: 20px;
    font-family: bold;
}
            .a{
                margin-top: 80px;
                margin-left: 80px;
                font-size: 50px;
                font-family: 'Arial, Helvetica, sans-serif';
            }
</style>
    </HEAD>
    <body>
    
        <div class="a">
            <p>V-ACADEMY LEARNING'S</p> Employee's login
            
        </div>
    <div class="aa">
        <form action="validate" method="post">
            <label for="name"> USERNAME </label>
            <input type="text"  id="name" name="username" placeholder="Enter the username" required><br><br>
            <label for="password"> PASSWORD </label>
        <input type="password" id="password" name="password" placeholder="Enter the password" required><br><br>
            <center> <input type="submit"  placeholder="Enter the username" value="LOGIN"> </center><br>
        </form>
        </div>
    </body>
</HTML>