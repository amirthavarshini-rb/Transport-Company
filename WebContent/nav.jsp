<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: black;
 }
.tbl-content{
  height:60vh;
  overflow-x:auto;
  margin-top: 0px;
  border: black;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: white;
  background-color:black;
  font-weight:bold;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: black;

  border-bottom:solid 1px black;
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: white;
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
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

.leave-request-form
{
  border: 2px solid rgb(41,42,62);
  width: 50%;
  margin-left: 25%;
  margin-top: 30px;
  margin-bottom:20px;
  border-radius: 5px;
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active" ><a onclick='show(1);' href="#">View Vehicle</a></li>
       <li><a onclick='show(2);' href="#">Add Vehicle</a></li>
      <li><a onclick='show(3);' href="#">Update Vehicle</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Report
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">PDF</a></li>
          <li><a href="#">EXCEL</a></li>
        </ul>
      </li>
     
    </ul>
  </div>
</nav>
<section id="table1">

    <div class="row" id="reg" style="margin-top: 10px;">
  <div class="col-md-2">
  
  </div>
  <div class="col-md-8">
          <h1 style="text-align: center;color:rgb(41,42,62);font-size: 35px;text-decoration: underline;"><b>View Vehicles</b></h1>
  </div>
  <div class="col-md-2">
      
  </div>
  </div>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0"; style="background-color: gray">
     
        <tr>
          <th>Description</th>
  <th>Vehicle type</th>
  <th>Location</th>
  <th>Status</th>
  <th>Vehicle NO</th>
  <th>Owner Name</th>
  <th>Owner Contact</th>
  <th>Insurance Status</th>
<th> Truck Id</th> 
<th>Edit</th>td>
        </tr>
    
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
         <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
            <td><button>Edit</button></td>
        </tr>
        <tr>
       <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
         <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>>yes</td>
            <td>101</td>
        </tr>
        <tr>
         <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
         <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
          <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
          <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
          <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        <tr>
          <td>The Tata trucks are not overly fast, but they're dependable</td>
         <td>TATA</td>
         <td>Chennai</td>
         <td>Booked</td>
          <td>5658</td>
           <td>jaya</td>
            <td>9999 9999</td>
            <td>yes</td>
            <td>101</td>
        </tr>
        
       
      </tbody>
    </table>
  </div>
</section>

<div id="table2">
<div class="leave-request-form">
        <div class="row" id="reg" style="margin-top: 10px;">
  <div class="col-md-2">
  
  </div>
  <div class="col-md-8">
          <h1 style="text-align: center;color:rgb(41,42,62);font-size: 35px;text-decoration: underline;"><b>Add Vehicles</b></h1>
  </div>
  <div class="col-md-2">
      
  </div>
  </div>
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Vehicle Type<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Status<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Vehicle Number<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Owner<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Owner Phone Number<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Insurance<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
   <button class="button1" >Submit</button>
    <br>.
    </div>

</div>




<div id="table3">
<div class="leave-request-form">
        <div class="row" id="reg" style="margin-top: 10px;">
  <div class="col-md-2">
  
  </div>
  <div class="col-md-8">
          <h1 style="text-align: center;color:rgb(41,42,62);font-size: 35px;text-decoration: underline;"><b>Update Vehicles</b></h1>
  </div>
  <div class="col-md-2">
      
  </div>
  </div>
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">User Id<b style="color:red">*</b></label>
    <div class="col-8">
      <input class="form-control" type="text" value="" id="example-text-input" #emp_num>
    </div>
  </div>
  
  
  <div class="form-group row" style="width: 80%;margin-left: 10%;margin-top: 20px;">
    <label for="example-text-input" class="col-4 col-form-label">Password<b style="color:red">*</b></label>
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
window.load=show(1);
function show(nr) {
	
    document.getElementById("table1").style.display="none";
   document.getElementById("table2").style.display="none";
   document.getElementById("table3").style.display="none";
    
    document.getElementById("table"+nr).style.display="block";
    
}
</script>
</html>