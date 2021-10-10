<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
background-image: url("https://www.wallpaperup.com/uploads/wallpapers/2015/05/10/683550/3a852250979b74b325058a15132f5008.jpg");
background-repeat: repeat-x repeat-y ;
background-size: 1360px 700px;


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
  height:300px;
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

  width: 50%;
  margin-left: 25%;
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

  <a  href="#" onclick='show(1);'>View Vehicles</a>
  <a href="#" onclick='show(2);'>Add Vehicles</a>
  <a href="#" onclick='show(3);'>Update Vehicles</a>
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
  <h1>Truck Details</h1>
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
            <td>>yes</td>
            <td>101</td>
        </tr>
        
       
      </tbody>
    </table>
  </div>
</section>


        
            








                     
    
     
    <div id="table2" >
      
 
<div style="background-color: #000000;
background-image: linear-gradient(315deg, #000000 0%, #414141 74%); padding-top: -1000px"   class="leave-request-form">
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
      
      
      <div id="table3" class="containerf" align="center">
      
    
      </div>        
            
            
            
            
            
            
            
            
            














</body>
<script >

function show(nr) {
    document.getElementById("table1").style.display="none";
    document.getElementById("table2").style.display="none";
    document.getElementById("table3").style.display="none";
    
    document.getElementById("table"+nr).style.display="block";
}
</script>
</html>