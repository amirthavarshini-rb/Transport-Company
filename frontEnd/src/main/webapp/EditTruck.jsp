<!DOCTYPE html> 
<html> 
<head> 
 <meta charset="utf-8" /> 
 <title>Buttons</title> 
 <meta name="viewport" content="width=device-width, initial-scale=1"> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style type="text/css">
 body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
background-image: url("https://www.wallpaperup.com/uploads/wallpapers/2015/05/10/683550/3a852250979b74b325058a15132f5008.jpg");
background-repeat: no-repeat;
background-size: 1360px 900px;


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
  <form action="ManagerFinal.jsp"> <button class="button1" >Cancle</button></form>
    <br>.
  

</div>
       
 
 
 
 
 

 

 <script type="text/javascript">
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
</body> 
</html> 