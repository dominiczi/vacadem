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
            background-size: cover;
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
  font-size: 18px;
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
  padding: 15px;
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
</style>

<title>display data from the table using jsp</title>
</head>
<body>
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

String QueryString = "SELECT * from vacademy.course_details";
rs = statement.executeQuery(QueryString);
%><div class ="div">
<TABLE class="mytab" id="tables" align="right">
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
<TR onclick="javascript:showRow(this);">
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getDouble(3)%></TD>
<TD><%=rs.getDouble(4)%></TD>
</TR>
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
</TABLE>
 <form action="academy">
        <input class ="edit "type="submit"  value="Back to Home"><br></form>
</div>
<p id="demo"> </p>

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
           
        </script>

<script>
document.querySelector('.results').innerHTML = f1;</script>
</body>
</html>