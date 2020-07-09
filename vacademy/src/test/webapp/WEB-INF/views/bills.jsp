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
.tablee{
 padding-top: 5px;}
				div.tablee{
		              position: absolute;
		              left: auto;
		              width: 500px;
		             
		        }
		     div.billdata {
		  position: absolute;
		  left: 500px;
		  
		  
		} 
		 .tes{
		margin-right:900px;
       border-radius: 5px;
            width: 100px;
            height: 40px;
            
       } 
.para{
width :100px;
}
			.billdata{
			padding-left: 200px;
			
			}
		    * {
		     	box-sizing: border-box;
		    }

			body{
			            margin-bottom: 220px;
           background-color:DodgerBlue;
            background-size: contain;
            background-attachment: local;
           background-size:50%;
            background-repeat: no-repeat;
            background-position: right;

			           
			}
			
			.mytab{
			background-color: white;
			width: 300px;
			margin-right: 2px;
			}
			
			tr:nth-child(even) {background-color: #f2f2f2;}
			.myinput {
			  	   width: 200px;
			       height: 30px;
			       border-radius: 5px;
			       
			       padding-bottom: 5px;
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
            
         
            function showRow(row)
            {
            var x=row.cells;
            document.getElementById("para").value = x[0].innerHTML;
            document.getElementById("para1").value = x[1].innerHTML;
            document.getElementById("para2").value = x[2].innerHTML;
            document.getElementById("para3").value = x[3].innerHTML;
                
              
            }
            
        </script>
<p align="left">
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
%><div class="tablee" >
<table class="mytab" id="tables" align="left">
			 <thead>
			<tr class="header">
			    <th style="width: 20%" >course Code</th>
			    <th style="width: 20%">course Name</th>
			    <th style="width: 20%">rate</th>
			    <th style="width: 20%">gst</th>
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
			} 

			catch (Exception ex) {
			%>
			</tbody>
			<font size="+3" color="red"></b>
			<%
			out.println("Unable to connect to database.");
			}
			%>
</table>

</div>

<div class ="billdata">
<form action="billadd" method="post" >
<p align="left">
course code :<input class="tes" type="text" name= code id="para" /><br>
course name:<input class="tes" type="text" name=name id="para1" /><br>
Rate:<input type="text" name=rate class="tes" id="para2" /><br>
GST:<input type="text" name=gst id="para3" class="tes"/><br>
Quantity:<input type="text" name=quantity  class="tes"/><br>
<input type="submit" class = "tes" value="Add to bill">
</p>
</form>
<form action="finalbill" align="left">
<input type="submit" class = "tes" value="Finalize bill">
</form>
</div>




</body>
</html>