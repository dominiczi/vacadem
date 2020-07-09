<Html>
    <title>Add new course</title>
    <style>
        body{
                       margin-top: 220px;
           background-image:url("https://is2-ssl.mzstatic.com/image/thumb/Purple113/v4/ec/bd/0b/ecbd0bbf-c91b-4711-2db7-948dc502ec8f/source/512x512bb.jpg");
            background-size: cover;
            background-attachment: local;
           background-size:50%;
            background-repeat: no-repeat;
        }
       .lab input[type="text"]{
            
            width: 200px;
            height: 50px;
            border-radius: 5px;
        }
       
        .lab{
            width: 500px;
            margin-left: 800px;
            margin-top: 200px;
            height: 400px;
            padding-top: 20px;
            padding-left: 10px;
            background-color: rgba(0,0,0,0);
            border-radius: 15px;
        }
        .lab label{
            color:  black;
            font-size: 30px;
            font-weight:300; 
        }
        .lab input[type="submit"]{
            width: 100px;
            height: 40px;
            border-radius: 5px;
            font-size: 20px; 
            margin-left: 200px;
        }
    </style>
    <body>
        <div class="lab">
            <form action=insert method="post">
            <label for="name">course name</label>
            <input type="text"  id="name" name="course_name" placeholder="  course name" required><br><br>
<label for="cod" >course Code</label>
            <input type="text"  id="cod" name="course_code" placeholder="  course code" required><br><br>
<label  for="rate">course price</label>
<input type="text"  id="rate" name="course_fee" placeholder="  fee per module" required><br><br>
<label for="gst">course GST</label>
<input type="text"  id="gst" name="gst%" placeholder="  gst% of course" required><br><br>
                <input type="submit" value="Add">
            </form>
        </div>
    </body>
</Html>