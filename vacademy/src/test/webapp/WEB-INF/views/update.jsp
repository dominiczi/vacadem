<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<script src= 
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
<style>
* {
  box-sizing: border-box;
}
.edit{
            border-radius: 10px;
            margin-left: 900px;
            margin-top: 40px;
            font-size: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
        }
body{
           margin-bottom: 100px;
           background-image:url("https://is2-ssl.mzstatic.com/image/thumb/Purple113/v4/ec/bd/0b/ecbd0bbf-c91b-4711-2db7-948dc502ec8f/source/512x512bb.jpg");
            background-size: contain;
            background-attachment: local;
           background-size:50%;
            background-repeat: no-repeat;
           
}
.mytab{
background-color: white;
}
tr:nth-child(even) {background-color: #f2f2f2;}
.myinput {
  	   width: 200px;
       height: 30px;
       border-radius: 5px;
       border-bottom: 15px;
}

#myTable {
  border-collapse: collapse;
  
  border: 1px solid #ddd;
  font-size: 15px;
}

#myTable th, #myTable td {
  text-align: left;
  
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

th, td {
  padding: 7px;
  text-align: left;
}
.div{
padding-top: 5px;
}
table {
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}
.tes{
margin-left:900px;
       border-radius: 5px;
            width: 100px;
            height: 40px;
       } 
table tr.active td {background: #ccc;}
</style>

<title>display data from the table using jsp</title>
</head>
<body>

<script> 
            $(document).ready(function() { 
                $("#gfg").on("keyup", function() { 
                    var value = $(this).val().toLowerCase(); 
                    $("#geeks tr").filter(function() { 
                        $(this).toggle($(this).text() 
                        .toLowerCase().indexOf(value) > -1) 
                    }); 
                }); 
            }); 
            
            
            $(document).ready(function(){
                $("#tables").children("tbody").children("tr").children("td").click(function(){
                    $(this.parentNode).toggleClass("active");
                });
            });
            
            var name="";
            function showRow(row)
            {
            var x=row.cells;
            document.getElementById("course_name").value = x[1].innerHTML;
            document.getElementById("price").value = x[2].innerHTML;
            document.getElementById("gst").value = x[3].innerHTML;
                name= x[1].innerHTML;
                document.getElementById("demo").value = x[1].innerHTML;
              
            }
            function call(){
            	window.location.replace("remove.jsp?name="+name);
            }
        </script>

<p align="right">

<input class="myinput" type="text" id="gfg" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
</p>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/gst";

Connection connection = null;

   Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

   connection = DriverManager.getConnection(connectionURL, "root", "Mysql123*");

statement = connection.createStatement();

String QueryString = "SELECT * from gst.course_details";
rs = statement.executeQuery(QueryString);
%><div class ="div">
<table class="mytab" id="tables" align="right">
 <thead>
<tr class="header">
    <th style="width:20%;">course Code</th>
    <th style="width:20%;">course Name</th>
    <th style= "width:20%;">rate</th>
    <th style="width:20%;">gst</th>
  </tr>
   </thead>
  <tbody id="geeks">
<%
while (rs.next()) {
%>
<tr onclick="javascript:showRow(this);">
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getDouble(3)%></td>
<td><%=rs.getDouble(4)%></td>
</tr>
<% }
 %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</tbody>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</table>
</div>
<p id="demo"></p>

<form action=upd method="post">

<input type="text" class="tes" name="name" id="course_name"  >
<input type="text" class="tes"name="rate" id="price" >
<input type="text" class="tes"name="tax" id="gst" >
<input type="submit"  class="tes" value="update">
</form>
    <form action="edit">
        <input class ="edit "type="submit"  value="Back"><br></form>


</body>
</html>