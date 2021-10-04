<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<h2>hello "${sessionScope.token }"</h2>	
<input id="userName" type="text" />
<input id="tokenField" type="hidden" value="${sessionScope.token }"/>
<input id="submitButton" type="button" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script>
var det;
$('#submitButton').on('click',function(){
	var temp=$('#userName').val();
	console.log($('#userName').val());
    $.ajax({
          url: "/searchManager",
          type: 'POST',
          data: {userName:temp},
          dataType: 'text',
          headers: {
                    "Authorization": "Bearer " + $('#tokenField').val()
                 },
                 success: function(data) {
                	 det=data;
                	 document.getElementById("demo").innerHTML = det;
                	 
                	 
                 },
                 error: function() {
                     alert('Error occured');
                 },
          async: false
            })
            console.log(det);
});
</script>

<p id="demo"></p>
</body>
</html>