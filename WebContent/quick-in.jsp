
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>VNS-DMM</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="dist/cursor.css">
		<link rel="stylesheet" href="css/nav-style.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		<script src="js/player/lottie.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> </head>
<body>


<div class="slide-out">
<a style="background-color: red;
    border-radius: 0px !important;
    position: relative;
    width: 38px;
    top: 0px;
    font-size: 23px;
    margin-top: 0px;
    height: 33px;
    line-height: 0px;
    padding-top: 14px;" href="#" class="close">x</a>
  <form style="margin-top: 6px;" id="send" class="send-form">
        <h6>QUICK ENQUIRY</h6>
        <div class="form-group qe">
          <input type="text" placeholder="Enter name..." id="qe_name" name="name" required="required">
        </div>
         <div class="form-group qe">
          <input type="email" placeholder="Enter mail..." id="qe_email" name="mail" required="required">
        </div>
        <div class="form-group qe">
          <input type="tel" placeholder="Enter phone..." id="qe_phone" name="phone" required="required">
        </div>
          <div class="form-group qe">
          <input type="text" placeholder="Company..." id="qe_company" name="phone" required="required">
        </div>
        
        <div class="form-group min-h qe">
          <textarea placeholder="Enter message..." name="text" id="qe_message"></textarea>
          
        </div>
        </form>
        <button style="width: 54%;" id="sendbtn" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="main-btn-rect" name="text" value="Send" >
          Send</button>
          <div id="thankyoudiv" style="display:none">
  <label style="color:white">Thank you please check your email..we have sent a confirmation email</label>
  </div>
</div>
<div class="popup-content" id="loaderDisplay" style="display:none">
  <span class="loader">
  <span class="loader-inner"></span>
</span>
<h1>Processing...</h1>
  </div>
<a id="col13" href="#" class="click"><img src="images/quickinquery.png"></a>

</body>
<style>
.qe {
    width: 100% !important;
}
.close {
    background-color: #fc4f4f;
    color: #FFFFFF !important;
    position: absolute;
    right: 10px;
    text-align: center;
    top: 15px;
    width: 38px;
    text-decoration: none;
    font-weight: normal;
    -webkit-border-radius: 12px;
    -moz-border-radius: 12px;
    border-radius: 0% !important;
    -moz-box-shadow: 1px 1px 3px #000;
    -webkit-box-shadow: 1px 1px 3px #000;
    box-shadow: 0px 0px 0px #000;
    border: 0px solid #fff !important;
    opacity: 9;
    font-size: 20px;
    background-color: #fc4f4f;
    height: 31px;
    padding-top: 3px;
}
.send-form {
    margin-top: 0px;
}
.form-group.min-h textarea {
    width: 100%;
    padding: 1px 6px;
}
#sendbtn {
    background-color: rgb(255 0 0);
    text-transform: uppercase;
    border: 0px;
    color: #fff;
    padding: 10px 20px;
    font-size: 14px;
    letter-spacing: 1px;
    font-weight: 500;
    border-radius: 2px;
}
.send-form input {
    width: 100%;
    padding: 1px 6px;
}
.close:focus, .close:hover {
    color: #fff;
    text-decoration: none;
    cursor: pointer;
    filter: alpha(opacity=50);
   opacity: 1.5 !important;
    background-color: red;
}
.close:focus, .close:hover {
    color: #000;
    text-decoration: none;
    cursor: pointer;
    filter: alpha(opacity=50);
    opacity: 1.5 !important;
}
#send h6 {
    color: #fff;
    padding-top: 0px;
    margin-top: 0;
    font-size: 18px;
    font-weight: 500;
    margin-bottom: 20px;
}
.slide-out {
    position: fixed;
    right: -1200px;
    transition: .5s ease-in-out;
    background-color: #000;
    z-index: 999999;
    padding: 20px 14px;
    margin-top: 57px;
    margin-right: 0px;
    width: 20%;
    z-index: 9999999;
}
#col13 img {
    width: auto;
    position: fixed;
    right: -10px;
    top: 28%;
    z-index: 999999;
}
.min-h {
    margin-bottom: 10px;
}
@media screen and (min-width: 320px) and (max-width:991px) {
/*.slide-out {
    position: fixed;
    right: -1200px;
    transition: .5s ease-in-out;
    background-color: #000;
    z-index: 999999;
    padding: 20px 14px;
    margin-top: 57px;
    margin-right: 0px;
    width: 60%;
    z-index: 9999999;
}*/

.slide-out {
    position: fixed;
    right: -1200px;
    transition: .5s ease-in-out;
    background-color: #000;
    z-index: 999999;
    padding: 20px 14px;
    margin-top: 57px;
    margin-right: 12px;
    width: 70%;
    z-index: 9999999;
}

}




</style>

<script>
$('.click').click(function(){
	  $('.slide-out').css('right', '0');
	});

	$('.close').click(function(){
	  $('.slide-out').css('right', '-1200px');
	});
</script>		
	<script type="text/javascript">
	
    $('#sendbtn').on('click', function() {
        var $this = $(this);
      $this.button('loading');
      ////alert("working");
  	var name=document.getElementById('qe_name').value;
  	var email=document.getElementById('qe_email').value;
  	var phn=document.getElementById('qe_phone').value;
  	var company=document.getElementById('qe_company').value;
  	var message=document.getElementById('qe_message').value;
  	var email_filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  	var phoneno = /^\d{10}$/;
  	var email_check="false";
  	var phn_check="false";
  	//alert(name+"="+email+"="+phn+"="+company+"="+message);
  	
  	if(email.length==0 || name.length==0 || phn.length==0 || company.length==0 || message.length==0){
      	alert("please fill all the feilds");
  		$this.button('reset');
  	}
  	
  	else{
  		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) && phn.match(phoneno))
  		  {
  			$(document).ready(function() {
                  
                  
                  $.ajax({
                  url: "save_quick_enquiry_details.jsp",
                  type: "post",
                  data: {
                  name:name,
                  email:email,
                  phn:phn,
                  company:company,
                  message:message},
                 
                
                  success : function(data){
                 // //alert(data);
                 
             //    document.getElementById('loaderDisplay').style.display='none';
              document.getElementById('qe_name').value="";
               	document.getElementById('qe_email').value="";
               	document.getElementById('qe_phone').value="";
               	document.getElementById('qe_company').value="";
               	document.getElementById('qe_message').value="";
                 document.getElementById("send").style.display='block';
                 document.getElementById("sendbtn").style.display='block';	
                 document.getElementById("thankyoudiv").style.display='block';
                 setTimeout(thankyou, 3000);
                 $this.button('reset');
                
                  }
                  
                  });
                  
                  });
  		  }else{
  			 $this.button('reset');
  			  alert("please enter a valid email or phone number");
  		  }
  	
  	}
  	
        
    });

    function SaveQuickEnquiryDetails(){

    }
    </script>
    <script>
    function thankyou(){
    	$("#thankyoudiv").fadeOut();
  //  	$("#send").reset();
    	$("#send").fadeIn();
    	$("#send")[0].reset();
    	$("#sendbtn").fadeIn();
    //    document.getElementById("send").style.display='none'; 	

    }
    </script>


</html>