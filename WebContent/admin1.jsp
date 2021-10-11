<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
background-image: url("https://www.wallpaperup.com/uploads/wallpapers/2015/05/10/683550/3a852250979b74b325058a15132f5008.jpg");
background-repeat: no-repeat;
background-size: 1600px 1000px;


}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: gray;
  color: white;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: grey;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

#table1, #table2, #table3, #table4 {
    display: none;
}

table{
  width:100%;
  table-layout: fixed;
  
   background: black;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
 height : 170px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */


section{
  margin: 50px;
}








/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}




<!-- form -->


.leave-request-form
{

  width: 50%;
  margin-left: 100px;
  margin-top: 30px;
  margin-bottom:20px;
  border-radius: 30px;
  background-color: white;
  box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
}

.button1 {
border: 1px solid rgb(41,42,62);
border-radius: 3px;
width: 30%;
margin-left: 35%;
margin-top:15px;
height: 30px;
display: block;
color:rgb(41,42,62);

background: linear-gradient(to right, rgb(41,42,62) 50%,white  50%);
background-size: 200% 100%;
background-position: right bottom;
transition: all .5s ease-out;
}

.button1:hover {
background-position: left bottom;

color:white;
}

.col-form-label
{
  font-weight: bold;
  font-size: large
}
</style>
</head>
<body>
<div class="topnav">

  <a  href="#" onclick='show(1);'>View Managers</a>
  <a href="#" onclick='show(3);'>Add Manager</a>
  <a href="#" onclick='show(2);'>Update/Delete Manager</a>
   <div class="dropdown">
  <button class="dropbtn">Download Report 
     
    </button>
    <div class="dropdown-content">
      <a href="#">PDF</a>
      <a href="#">Excel</a>
    
   </div>
 </div>
</div>


<section id="table1">

  <!--for demo wrap-->
  <h1>Manager Details</h1>
  <div class="tbl-header">
    <table  id="datatable" cellpadding="0" cellspacing="0" border="0"; style="background-color: gray">
     
     <thead>
        <tr>
          <th>Name</th>
  <th>Email </th>
  <th>Branch</th>

        </tr>
    </thead>
    
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
         
         <td id ="Mname">John </td>
          <td id="Memail">john@gmail.com </td>
          <td  id="Mbranch">Chennai </td>
     
    
       
      </tbody>
    </table>
  </div>
</section>





<section id="table2">

  <!--for demo wrap-->
  <h1>Manager Details</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0"; style="background-color: gray">
     
        <tr>
          <th >Name</th>
  <th >Email Id</th>
  <th>Branch</th>
 <th>Delete</th>
 <th>Edit </th>
        </tr>
    
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
         
         <td>John </td>
          <td>john@gmail.com </td>
          <td>Chennai </td>
          <td><button  onclick="myFunction()">Delete</button></td>
          <td><form action="Sam.jsp"><button onclick="showForm()">Edit</button></form></td>
         
         
         
        </tr>
        <tr> 
        
        <td>Charles </td>
          <td>charles@gmail.com </td>
          <td>Madurai </td>
          <td><button  onclick="myFunction()">Delete</button></td>
          <td><form action="Sam.jsp"><button onclick="showForm()">Edit</button></form></td>
          
       
        </tr>
        
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
           <td><button  onclick="myFunction()">Delete</button></td>
          <td><form action="Sam.jsp"><button onclick="showForm()">Edit</button></form></td>
         
        </tr>
       
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
          <td><button onclick="myFunction()">Delete</button>
          <td><form action="Sam.jsp"><button onclick="showForm()">Edit</button></form></td>

        </tr>
        
        
        
        
       
      </tbody>
    </table>
  </div>
</section>








<!-- add form -->

 
    <div id="table3" >
      
 
<div style="background-color: black; padding-top: -1000px"   class="leave-request-form">
        <div class="row" id="reg" style="margin-top: 10px;">
  <div class="col-md-2">
  
  </div>
  
  <div class="col-md-2">
      
  </div>
  </div>
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label style="color: white" for="example-text-input" class="col-4 col-form-label">Vehicle Type<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label style="color: white" for="example-text-input" class="col-4 col-form-label">Status<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label  style="color: white" for="example-text-input" class="col-4 col-form-label">Vehicle Number<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label  style="color: white" for="example-text-input" class="col-4 col-form-label">Owner<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label style="color: white" for="example-text-input" class="col-4 col-form-label">Owner Phone Number<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label style="color: white" for="example-text-input" class="col-4 col-form-label">Insurance<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
   <button class="button1" >Submit</button>
    <br>.
  

</div>
        </div>



    
            
</body>

<script >

function show(nr) {
    document.getElementById("table1").style.display="none";
    document.getElementById("table2").style.display="none";
    document.getElementById("table3").style.display="none";
    
    document.getElementById("table"+nr).style.display="block";
    
    
    
}






<!-- 

var det;
$('#').on('click',function(){
	
	console.log($('#userName').val());
    $.ajax({
          url: "/",
          type: 'POST',
        //  data: {userName:temp},
          dataType: 'text',
          headers: {
                    "Authorization": "Bearer " + $('#tokenField').val()
                 },
                 success: function(data) {
                	$('#datatable').datatable({
                		data: data,
                		columns:[
                			
                			{'data': Name},
                			{'data': Email },
                			{'data': Branch},
                			
                		]
                	
                	})
                	 
                 },
                 error: function() {
                     alert('Error occured');
                 },
          async: false
            })
            console.log(det);
});

-->

function myFunction()
{
	alert("Do you want to delete it!!!")
}

</script>


</html>