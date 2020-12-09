<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.js"></script>

</head>
<body>
<div  class="main-enquiry-form">
<div class="panel panel-primary"> 
        <div id="wrapper">
            <img class="img-responsive myButton" src="../fb-icon.png" alt="{{item.entree}}">
        </div>    
        <div class="center" style="width: 85%; margin-bottom: 7px;">
            <div id="popup-reg" class="popup">
  <div class="popup-content" id="quick_enquiry_form">
    <div class="event-header" style="display:block">
      <h6>QUICK ENQUIRY</h6>
    </div>
      <form id="send" class="send-form">
        <div class="form-group">
          <input type="text" placeholder="Enter name..." id="qe_name" name="name" required="required">
        </div>
         <div class="form-group">
          <input type="email" placeholder="Enter mail..." id="qe_email" name="mail" required="required">
        </div>
        <div class="form-group">
          <input type="tel" placeholder="Enter phone..." id="qe_phone" name="phone" required="required">
        </div>
          <div class="form-group">
          <input type="text" placeholder="Company..." id="qe_company" name="phone" required="required">
        </div>
        
        <div class="form-group min-h">
          <textarea placeholder="Enter message..." name="text" id="qe_message"></textarea>
          
        </div>
        </form>
        <button id="sendbtn" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="main-btn-rect" name="text" value="Send" >
          Send</button>
        <div id="thankyoudiv" style="display:none">
  <label style="color:white">Thank you please check your email..we have sent a confirmation email</label>
  </div>
    <span class="fade-out main-btn-circle">x</span>
  </div>
  <div class="popup-content" id="loaderDisplay" style="display:none">
  <span class="loader">
  <span class="loader-inner"></span>
</span>
<h1>Processing...</h1>
  </div>

   
</div>

            </div>
    </div>

</div>

</body>
<script>
$(".myButton").click(function () {
    // Set the effect type
    var effect = 'slide';
    // Set the options for the effect type chosen
    var options = { direction: "right" };
    // Set the duration (default: 400 milliseconds)
    var duration = 500;
    $('.myButton').toggle(effect, options, duration);
  //  document.getElementById("wrapper").style.display="none";
 showForm();
});
</script>
<script>
function showForm(){

    // Set the effect type
    var effect = 'slide';
    // Set the options for the effect type chosen
    var options = { direction: "left" };
    // Set the duration (default: 400 milliseconds)
    var duration = 500;
    $('.center').toggle(effect, options, duration);
}

</script>
</html>