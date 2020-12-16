<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>VNS-DMM</title>


<meta name="keywords" content="digital marketing in new zealand, web marketing agency in new zealand, web marketing agency in Australia, top digital agency in new zealand, top digital agency in Australia, online marketing consultant in new zealand, online marketing companies in Australia, marketing agency, marketing agency near me, digital marketing masters in new zealand, digital marketing agency">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="dist/cursor.css">
<link rel="stylesheet" href="css/nav-style.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<script src="js/player/lottie.js"></script>
   <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</head>

<body class="has-overflow-hidden allowHover" id="homepage" style="">

<div id="site-wrapper">
  <header class="bg-pink">
	<%@include file="sidebar.jsp" %>
  </header>
   <main role="main">
<div id="barba-wrapper" aria-live="polite">


      
               <!----------Banner Section Start--------------->
  	<section class="bk-img">
  		<div class="container">
  			<div class="row">
  				<div class="col-sm-12 col-md-12 col-xs-12">
  					<h1 class="hp">Contact us</h1>
                    <p class="content-c">Get a step ahead of your competitors. Outsmart your business with
                    our Digital Marketing strategies.</p>
  				</div>
  			</div>
  		</div>
  	</section>
<!----------Banner Section End--------------->
<!----------Form Section Start------------->
<section>
  <div class="container-fluid">
     
        <div class="col-sm-4 col-md-4 col-xs-12">
          <div class="contacts">
            <ul class="email-list">
              <li class="no1"><a href="#">+91-8288815694</a></li>
              <li class="no2">ADDRESS:</li>
              <li class="no3"><b>Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post
              Code:-160101</b></li>
              <li class="no2">MAIL US:</li>
              <li><b>rishabh@virtuosonetsoft.in</b></li>
              <!--<li class="no2">Job Openings, Career Opportunites</li>
              <li><b>Email: info@gmail.com</b></li>
              <li class="no2">Billing, Invoice</li>
              <li><b>Email: info@gmail.com</b></li>-->

            </ul>
          
          <ul class="social-media-list">
            <li><a href="https://www.facebook.com/VirtuosoNetsoft.VNS"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="https://twitter.com/VNS_Virtuoso"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            <li><a href="https://www.instagram.com/virtuosonetsoft/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>-->
          </ul>
        </div>
        </div>


         <div class="col-sm-8 col-md-8 col-xs-12">
          
           
           <h4 class="page-header">Let our experts serve your requirements.</h4>

           <ul class="cont-nav">
               <li><a onclick="changeTypeValue('general_inquiries')">General Inquiries</a></li>
               <li><a onclick="changeTypeValue('callback')">Request a Callback</a></li>
               <li><a onclick="changeTypeValue('quote')">Request a Quote</a></li>
               <li><a onclick="changeTypeValue('careers')">Careers</a></li>
           </ul>
                <form id="con_form" role="form" method="post" action="contact_normal_submission.jsp">
                <input type="hidden" class="form-control" name="type" id="type" value="general_inquiries">
                    <div class="form-group float-label-control">
                        <input type="text" class="form-control" name="con_name" id="con_name" placeholder="Name">
                    </div>
                    <div class="form-group float-label-control">
                        <input type="email" class="form-control" name="con_email" id="con_email" onkeyup="checkEmailValidity()" placeholder="Email">
                    </div>
                                            <p id="email_error" class="validation_errors" style="display:none">Enter a valid email address</p>
                    
                    <div class="form-group float-label-control">
                        <input type="text" class="form-control" name="con_phone" id="con_phone" onkeyup="checkPhoneValidity()" placeholder="Phone">
                    </div>
                                     <p id="phn_error" class="validation_errors" style="display:none">Enter a valid Phone Number</p>
                    
                     <div class="form-group float-label-control" id="company_website_div" style="display:block">
                        <input type="text" class="form-control" name="company_website" id="company_website" placeholder="Company Website">
                    </div>
                    <div class="form-group float-label-control" id="drop_a_line_div" style="display:block">
                     <input type="text" class="form-control" name="drop_a_line" id="drop_a_line" placeholder="Drop Line">
                    </div>
                    <div class="form-group" id="time_slot_label_div" style="display:none">
                        <label>Share 3 Time-Slots, we will email you for confirmation</label>
                    </div>
                    <div class="form-group float-label-control" id="time_slot_one_div" style="display:none">
                        <input type="text" class="form-control" name="time_slot_one" id="time_slot_one" placeholder="Time Date Timezone Slot 1*">
                    </div>
                    <div class="form-group float-label-control" id="time_slot_two_div" style="display:none">
                        <input type="text" class="form-control" name="time_slot_two" id="time_slot_two" placeholder="Time Date Timezone Slot 2*">
                    </div>
                    <div class="form-group float-label-control" id="time_slot_three_div" style="display:none">
                        <input type="text" class="form-control" name="time_slot_three" id="time_slot_three" placeholder="Time Date Timezone Slot 3(Optional)">
                    </div>
					<div class="form-group float-label-control" id="services_div" style="display:none">
                        <input type="text" class="form-control" name="con_services" id="services" placeholder="Services*">
                    </div>
                    <div class="form-group float-label-control" id="requirement_div" style="display:none">
                        <input type="text" class="form-control" name="requirement" id="requirement" placeholder="Requirement">
                    </div>
                    <div class="form-group float-label-control" id="post" style="display:none">
                        <input type="text" class="form-control" name="position" id="position" placeholder="Position applying for">
                    </div>
                    <span style="display:none" id="file_span" class="drag">Drag & Drop to Upload
                    <input type="file" id="images" name="images" multiple></span>

                    <br><br>
                  
                   
                 <input type="submit" class="submt6" id="con_submit" value="Send">
                </form>
     </div>
  
</section>
<!----------Form Section End--------------->
        <%@include file="footer.jsp" %>
        
         </div>
    	<div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog"> 
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <section class="digital-title">
            <h1>
            <span class="orange">Hello,</span> Lets Talk about </br>
            the details.
            </h1>
            </section>
          </div>
          <div id="" class="modal-body" >
            <section class="row">
              <section class="col-md-9 no_pad">
                <div id="inquiry__form">
                <%@include file="contactForm.jsp" %>
                    </div>
              </section>
              <section class="col-md-3 no_pad">
                <section class="part-text" style="margin-top: 5em;"> <img src="images/img_3.svg"> </section>
              </section>
            </section>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script> 
<script src="js/wow.js"></script> 
<script>
$(window).load(function(){
   setTimeout(function(){
       $('#myNews').modal('show');
   }, 4000);
});
</script> 
<script>
var wow = new WOW(
  {
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       true,       // trigger animations on mobile devices (default is true)
    live:         true,       // act on asynchronously loaded content (default is true)
    callback:     function(box) {
      // the callback is fired every time an animation is started
      // the argument that is passed in is the DOM node being animated
    },
    scrollContainer: null,    // optional scroll container selector, otherwise use window,
    resetAnimation: true,     // reset animation on end (default is true)
  }
);
wow.init();
  </script> 
<script src="js/bxslider.js"></script> 
<script src="js/TweenMax.min.js"></script> 

<script src="dist/cursor.js"></script> 
<script>
  var cursorx = new cursor({
    type: 1,
    color: '#FF7F66',
	
  })


  function mouseenter () {
    cursorx.hidden()
  }
  function mouseleave () {
    cursorx.hidden(false)
  }
  // function clickx() {
  //   // cursorx.color('rgba(100,0,100)')
  //   cursorx.hidden()
  // }
  // function clickx2() {
  //   // cursorx.color('rgba(100,0,100)')
  //   cursorx.hidden(false)
  // }

  var cursor2 = new cursor({
    el: '.caja',
    color: 'rgba(0,0,255)',
    type: 4,
  })

  // var cursor2 = new cursor({
  //   type: 2,
  //   removeDefaultCursor: false,
  // })
  
</script> 
 
<script src="js/form-validator.min.js"></script> 
<script src="js/contact-form-script.min.js"></script>

<script>

let animation7 = bodymovin.loadAnimation({
        container: document.getElementById('animation_orm'),
        renderer: 'svg',
        loop: true,
        autoplay: true,
        path: 'js/animated/animate_orm.json'
    });

    
let animation2 = bodymovin.loadAnimation({
        container: document.getElementById('animate2'),
        renderer: 'svg',
        loop: true,
        autoplay: false,
        path: 'js/animated/animated2.json'
    });

    let btn = document.getElementById('btn');

    btn.addEventListener('mouseenter', ()=>{
        animation2.play();
    });
    btn.addEventListener('mouseleave', ()=>{
        animation2.stop();
    });



    </script>
   
</body>
  	<style>
      .submt6 {
    background-color: #ff7f66;
    padding: 20px;
    color: #fff;
    border-radius: 50px;
    padding: 15px 27px;
}
.no3 {
    padding-bottom: 10px;
}
.bgc5 {
    background-color: #000;
    margin-top: 60px;
}
.bgcol {
    background-color: #ececec;
    text-align: center;
    margin-top: 40px;
    padding-top: 40px;
    padding-bottom: 40px;
}
  	.bk-img {
    background-color: #000;
    background-image: url("./img/cnt12.jpg");
    background-size: cover;
    height: 335px;
    background-attachment: fixed;
}
.bTBD {
    background-color: black;
    border: 1px solid;
    border-radius: 50px;
    padding: 16px 34px;
    font-size: 20px;
    color: #fff;
}
.mt-27 {
    margin-top: 14px;
}
.offset-2 {
    margin-left: 225px;
}
.mt-20 {
    margin-bottom: 40px;
}
.cont-nav {
    margin: 0px;
    padding: 0px;
}
.cont-nav a {
    font-size: 20px;
    color: #000;
}
.our-rate1 {
    width: 20%;
}
.cont-nav li {
    list-style: none;
    display: inline-block;
    padding: 25px 40px 0px 0px;
    margin-bottom: 30px;
}

.email-list {
    background-color: #f1eded;
    padding-top: 95px;
    padding-bottom: 56px;
    margin-bottom: 0px;
    padding-left: 30px;
}
.bgc5 {
    background-color: #000;
    margin-top: 0px;
}
.social-media-list {
    background-color: #f1eded;
    padding-left: 26px;
    height: 200px;
    padding-bottom: 0px;
    margin-bottom: 0px;
}
.email-list li {
    list-style: none;
   font-size: 16px;
    line-height: 26px;
}
.content-c {
    color: #fff;
    font-size: 14px;
}
.hp {
    color: #fff;
    text-transform: uppercase;
    padding-top: 4em;
}
.social-media-list li {
    display: inline-block;
    padding: 10px 11px;
    background-color: #000;
    border-radius: 50px;
    margin-bottom: 24px;
}
.social-media-list i {
    color: #fff;
    font-size: 20px;
    padding: 7px;
    background-color: #000;
}
.fa-instagram:before {
    content: "\f16d";
    background-color: #000;
    padding: 5px 0px;
    position: relative;
    top: 0px;
}
.page-header {
    padding-bottom: 9px;
    margin: 32px 0px 0px;
    border-bottom: 0px solid #eee;
    font-size: 30px;
    font-weight: bold;
}
.color-1 {
    background-color: #d2d2d2;
}
.no1{
padding-bottom:10px;
}

#myfile {
    width: 56%;
    float: right;
}
.submt6:hover {
    color: #fff;
    text-decoration: none;
}
.footer1 {
    background-color: #0e0d0d;
    text-align: center;
    color: #fff;
    padding-top: 30px;
    padding-bottom: 30px;
}
.mt-20 {
    margin-top: 60px;
}
.card-r {
    text-align: center;
    font-size: 30px;
    font-weight: bold;
}
.drag {
    display: block;
    width: 50%;
    border: 1px solid;
    border-style: dashed;
    padding: 20px;
    margin-bottom: 0px;
}
.fa.fa-long-arrow-right {
    font-size: 35px;
}
.fa.fa-facebook {
    width: 33px;
    text-align: center;
}
.nav-tabs>li {
    float: none;
    margin-bottom: -1px;
}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #fbfafa;
    cursor: default;
    background-color: #333;
    border: 1px solid #333;
    border-bottom-color: transparent;
}
.nav>li>a:focus, .nav>li>a:hover {
    text-decoration: none;
    background-color: #333;
}
.float-label-control { position: relative; margin-bottom: 1.5em; }
    .float-label-control ::-webkit-input-placeholder { color: #989898; }
    .float-label-control :-moz-placeholder { color: #989898; }
    .float-label-control ::-moz-placeholder { color: #989898; }
    .float-label-control :-ms-input-placeholder { color: #989898; }
    .float-label-control input:-webkit-autofill,
    .float-label-control textarea:-webkit-autofill { background-color: transparent !important; -webkit-box-shadow: 0 0 0 1000px white inset !important; -moz-box-shadow: 0 0 0 1000px white inset !important; box-shadow: 0 0 0 1000px white inset !important; }
    .float-label-control input, .float-label-control textarea, .float-label-control label { font-size: 1.3em; box-shadow: none; -webkit-box-shadow: none; }
        .float-label-control input:focus,
        .float-label-control textarea:focus { box-shadow: none; -webkit-box-shadow: none; border-bottom-width: 2px; padding-bottom: 0; }
        .float-label-control textarea:focus { padding-bottom: 4px; }
    .float-label-control input, .float-label-control textarea { display: block; width: 100%; padding: 0.1em 0em 1px 0em; border: none; border-radius: 0px; border-bottom: 1px solid #aaa; outline: none; margin: 0px; background: none; }
    .float-label-control textarea { padding: 0.1em 0em 5px 0em; }
    .float-label-control label { position: absolute; font-weight: normal; top: -1.0em; left: 0.08em; color: #aaaaaa; z-index: -1; font-size: 0.85em; -moz-animation: float-labels 300ms none ease-out; -webkit-animation: float-labels 300ms none ease-out; -o-animation: float-labels 300ms none ease-out; -ms-animation: float-labels 300ms none ease-out; -khtml-animation: float-labels 300ms none ease-out; animation: float-labels 300ms none ease-out; /* There is a bug sometimes pausing the animation. This avoids that.*/ animation-play-state: running !important; -webkit-animation-play-state: running !important; }
    .float-label-control input.empty + label,
    .float-label-control textarea.empty + label { top: 0.1em; font-size: 1.5em; animation: none; -webkit-animation: none; }
    .float-label-control input:not(.empty) + label,
    .float-label-control textarea:not(.empty) + label { z-index: 1; }
    .float-label-control input:not(.empty):focus + label,
    .float-label-control textarea:not(.empty):focus + label { color: #aaaaaa; }
    .float-label-control.label-bottom label { -moz-animation: float-labels-bottom 300ms none ease-out; -webkit-animation: float-labels-bottom 300ms none ease-out; -o-animation: float-labels-bottom 300ms none ease-out; -ms-animation: float-labels-bottom 300ms none ease-out; -khtml-animation: float-labels-bottom 300ms none ease-out; animation: float-labels-bottom 300ms none ease-out; }
    .float-label-control.label-bottom input:not(.empty) + label,
    .float-label-control.label-bottom textarea:not(.empty) + label { top: 3em; }


@keyframes float-labels {
    0% { opacity: 1; color: #aaa; top: 0.1em; font-size: 1.5em; }
    20% { font-size: 1.5em; opacity: 0; }
    30% { top: 0.1em; }
    50% { opacity: 0; font-size: 0.85em; }
    100% { top: -1em; opacity: 1; }
}

@-webkit-keyframes float-labels {
    0% { opacity: 1; color: #aaa; top: 0.1em; font-size: 1.5em; }
    20% { font-size: 1.5em; opacity: 0; }
    30% { top: 0.1em; }
    50% { opacity: 0; font-size: 0.85em; }
    100% { top: -1em; opacity: 1; }
}

@keyframes float-labels-bottom {
    0% { opacity: 1; color: #aaa; top: 0.1em; font-size: 1.5em; }
    20% { font-size: 1.5em; opacity: 0; }
    30% { top: 0.1em; }
    50% { opacity: 0; font-size: 0.85em; }
    100% { top: 3em; opacity: 1; }
}

@-webkit-keyframes float-labels-bottom {
    0% { opacity: 1; color: #aaa; top: 0.1em; font-size: 1.5em; }
    20% { font-size: 1.5em; opacity: 0; }
    30% { top: 0.1em; }
    50% { opacity: 0; font-size: 0.85em; }
    100% { top: 3em; opacity: 1; }
}
.mt-20 {
    margin-bottom: 40px;
}



.top-bar {
    background-color: #f1f1f1;
}
.page404 {
    text-align: center;
    font-size: 60px;
    font-weight: bold;
    background-color: #fff;
    width: 68%;
    margin: 110px auto;
    padding: 54px;
    border-radius: 10px;
    box-shadow: 0px 3px 3px 0px #e8e6e6;
}
.go-home {
    display: block;
    text-align: center;
}
.go-home a {
    background-color: #ff7f66;
    padding: 15px;
    font-size: 22px;
    color: #fff;
    position: relative;
    bottom: 62px;
    border-radius: 7px;
}
.foot-social ul li a {
    color: #c8c7c7;
}
.footer-links {
    float: left;
    width: 100%;
    padding-top: 20px;
    border-top: 0px solid #3a3a3a;
    color: #ffffff;
    font-size: 14px;
    font-weight: bold;
    padding-bottom: 10px;
    /* clear: both; */
    background-color: #242323;
}
.no1 a {
    font-size: 23px;
    font-weight: bold;
    color: #000;
}
.no2 {
    font-size: 20px;
    font-weight: 400;
    color: #888888;
    padding-bottom: 5px;
}
.validation_errors{
color:red;
}
form#con_form input {
    color: #000;
}
  	</style>
  	<script>
  /* Float Label Pattern Plugin for Bootstrap 3.1.0 by Travis Wilson
**************************************************/

(function ($) {
    $.fn.floatLabels = function (options) {

        // Settings
        var self = this;
        var settings = $.extend({}, options);


        // Event Handlers
        function registerEventHandlers() {
            self.on('input keyup change', 'input, textarea', function () {
                actions.swapLabels(this);
            });
        }


        // Actions
        var actions = {
            initialize: function() {
                self.each(function () {
                    var $this = $(this);
                    var $label = $this.children('label');
                    var $field = $this.find('input,textarea').first();

                    if ($this.children().first().is('label')) {
                        $this.children().first().remove();
                        $this.append($label);
                    }

                    var placeholderText = ($field.attr('placeholder') && $field.attr('placeholder') != $label.text()) ? $field.attr('placeholder') : $label.text();

                    $label.data('placeholder-text', placeholderText);
                    $label.data('original-text', $label.text());

                    if ($field.val() == '') {
                        $field.addClass('empty')
                    }
                });
            },
            swapLabels: function (field) {
                var $field = $(field);
                var $label = $(field).siblings('label').first();
                var isEmpty = Boolean($field.val());

                if (isEmpty) {
                    $field.removeClass('empty');
                    $label.text($label.data('original-text'));
                }
                else {
                    $field.addClass('empty');
                    $label.text($label.data('placeholder-text'));
                }
            }
        }


        // Initialization
        function init() {
            registerEventHandlers();

            actions.initialize();
            self.each(function () {
                actions.swapLabels($(this).find('input,textarea').first());
            });
        }
        init();


        return this;
    };

    $(function () {
        $('.float-label-control').floatLabels();
    });
})(jQuery);


</script>
<script>
function changeTypeValue(type_value){
	//alert('working==='+type_value);
	document.getElementById('type').value=type_value;
	//alert('type_value==='+document.getElementById('type').value);
	if(type_value=='general_inquiries'){
		//alert('general_inquiries==='+type_value);
		
		document.getElementById('time_slot_label_div').style.display='none';
		document.getElementById('time_slot_one_div').style.display='none';
		document.getElementById('time_slot_two_div').style.display='none';
		document.getElementById('time_slot_three_div').style.display='none';
		document.getElementById('services_div').style.display='none';
		document.getElementById('requirement_div').style.display='none';
		document.getElementById('post').style.display='none';
		document.getElementById('file_span').style.display='none';
		
		document.getElementById('con_form').removeAttribute('enctype');
		document.getElementById('con_form').setAttribute('action', 'contact_normal_submission.jsp');
		
		document.getElementById('company_website_div').style.display='block';
		document.getElementById('drop_a_line_div').style.display='block';
		
	}else if(type_value=='callback'){
		//alert('callback==='+type_value);
		document.getElementById('company_website_div').style.display='none';
		document.getElementById('drop_a_line_div').style.display='none';
		document.getElementById('services_div').style.display='none';
		document.getElementById('requirement_div').style.display='none';
		document.getElementById('post').style.display='none';
		document.getElementById('file_span').style.display='none';
		
		document.getElementById('con_form').removeAttribute('enctype');
		document.getElementById('con_form').setAttribute('action', 'contact_normal_submission.jsp');
		
		document.getElementById('time_slot_label_div').style.display='block';
		document.getElementById('time_slot_one_div').style.display='block';
		document.getElementById('time_slot_two_div').style.display='block';
		document.getElementById('time_slot_three_div').style.display='block';
	}else if(type_value=='quote'){
		//alert('quote==='+type_value);
		document.getElementById('company_website_div').style.display='none';
		document.getElementById('drop_a_line_div').style.display='none';
		document.getElementById('time_slot_label_div').style.display='none';
		document.getElementById('time_slot_one_div').style.display='none';
		document.getElementById('time_slot_two_div').style.display='none';
		document.getElementById('time_slot_three_div').style.display='none';
		document.getElementById('post').style.display='none';
		document.getElementById('file_span').style.display='none';
		
		document.getElementById('con_form').removeAttribute('enctype');
		document.getElementById('con_form').setAttribute('action', 'contact_normal_submission.jsp');
		
		document.getElementById('services_div').style.display='block';
		document.getElementById('requirement_div').style.display='block';
	}else if(type_value=='careers'){
		//alert('careers==='+type_value);
		document.getElementById('company_website_div').style.display='none';
		document.getElementById('drop_a_line_div').style.display='none';
		document.getElementById('time_slot_label_div').style.display='none';
		document.getElementById('time_slot_one_div').style.display='none';
		document.getElementById('time_slot_two_div').style.display='none';
		document.getElementById('time_slot_three_div').style.display='none';
		document.getElementById('services_div').style.display='none';
		document.getElementById('requirement_div').style.display='none';
		
		document.getElementById('con_form').setAttribute('enctype', 'multipart/form-data');
		document.getElementById('con_form').setAttribute('action', 'contact_multipart_submission.jsp');
		
		document.getElementById('post').style.display='block';
		document.getElementById('file_span').style.display='block';
		
	}
}
</script>
       <script type="text/javascript">
    function checkEmailValidity(){
    	//alert("working_email function");
    	var email=document.getElementById('con_email').value;
    	//alert(email);
      	var email_filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
		  {
      		//alert("xhjsxvhx");
      	  document.getElementById('email_error').style.display='none';
		  document.getElementById('con_submit').style.display='block';
		  }else{
			 //alert("xhjsxvhx222222222222");
			  document.getElementById('con_submit').style.display='none';
			  document.getElementById('email_error').style.display='block';
		  }

    }
    function checkPhoneValidity(){
    	var phn=document.getElementById('con_phone').value;
    	var phoneno = /^\d{10}$/;      	
    	if (phn.match(phoneno))
		  {
    		 document.getElementById('phn_error').style.display='none';
   		  document.getElementById('con_submit').style.display='block';
   		  
		  }else{
			  document.getElementById('con_submit').style.display='none';
			  document.getElementById('phn_error').style.display='block';
		  
		  }

    }
    </script>
</html>