<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
background-image: url("https://www.wallpaperup.com/uploads/wallpapers/2015/05/10/683550/3a852250979b74b325058a15132f5008.jpg");
background-repeat: no-repeat;
background-size: 1360px 673px;


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









.center {
    margin: auto;
    width: 60%;
    padding: 20px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.hideform {
    display: none;
}











</style>
</head>
<body>
<div class="topnav">

  <a  href="#" onclick='show(1);'>View Managers</a>
  <a href="" onclick='show(3);'>Add Vehicles</a>
  <a href="" onclick='show(2);'>Update/Delete Vehicles</a>
   <div class="dropdown">
  <button class="dropbtn">Download Report 
     
    </button>
    <div class="dropdown-content">
      <a href="">PDF</a>
      <a href="">Excel</a>
    
   </div>
 </div>
</div>


<section id="table1">

  <!--for demo wrap-->
  <h1>Manager Details</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0"; style="background-color: gray">
     
        <tr>
          <th>Name</th>
  <th>Email Id</th>
  <th>Branch</th>

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
     
         
         
        </tr>
        <tr> 
        
        <td>Charles </td>
          <td>charles@gmail.com </td>
          <td>Madurai </td>
         
       
        </tr>
        
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
          
        </tr>
       
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
          
        </tr>
        
        
        
        
       
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
          <th>Name</th>
  <th>Email Id</th>
  <th>Branch</th>
 <th>Edit </th>
 <th>Delete </th>
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
         <td><button class="editbtn">Edit</button></td>
         <td><button class="deletebtn">Delete</button></td>
         
         
        </tr>
        <tr> 
        
        <td>Charles </td>
          <td>charles@gmail.com </td>
          <td>Madurai </td>
          <td><button class="editbtn">Edit</button></td>
          <td><button class="deletebtn">Delete</button></td>
       
        </tr>
        
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
          <td><button class="editbtn">Edit</button></td>
          <td><button id="show">Show form</button></td>
        </tr>
       
       
        <tr>
        
        <td>Jack </td>
          <td>jack@gmail.com </td>
          <td>Trichy </td>
          <td><button class="editbtn">Edit</button></td>
          <td><button id="show">Show form</button></td>
        </tr>
        
        
        
        
       
      </tbody>
    </table>
  </div>
</section>


<button onclick="showForm()">Show the form</button>
 <button onclick="showForm()">Show the form</button>
 <button onclick="showForm()">Show the form</button>
 

 <div style="background-color: black; border-radius: 30px; " class="center hideform">

   <form id="formElement" style="display: none;">
        <label style="color: gray">Name:</label><br>
        <input style="border-radius: 25px; " type="text" name="firstname" value="">
        <br>
       <label style="color: gray"> Email:</label><br>
        <input style="border-radius: 25px; " type="text" name="lastname" value="">
        <br>
        <label style="color: gray"> Location </label><br>
        <input style="border-radius: 25px; " type="text" name="lastname" value="">
        <br><br>
        <input type="submit" name="update_button" value="Update" />
<input type="submit" name="delete_button" value="Delete" />
    </form>
</div>



                     
    
   
      <div id="table3" >
      
    
      </div>        
            
   






</body>
<script type="text/javascript">

function show(nr) {
    document.getElementById("table1").style.display="none";
    document.getElementById("table2").style.display="none";
    document.getElementById("table3").style.display="none";
    
    document.getElementById("table"+nr).style.display="block";
    
    
    
}












function showForm() {
    document.getElementById('formElement').style.display = 'block';
}



if (isset($_POST['update_button'])) {
	    //update action
	} else if (isset($_POST['delete_button'])) {
	    //delete action
	} else {
	    //no button pressed
	}

















</script>
</html>