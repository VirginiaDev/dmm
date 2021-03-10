<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Design Agency in New Zealand | Web Development Company in NZ</title>
<meta name="description" content="Best Website Design & Development services in Australia & New Zealand. Quality Web Design, Web Development & App Development Services contact Virtuoso Netsoft.">

 <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript" src="js/sweetalert.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="dist/cursor.css">
<link rel="stylesheet" href="css/nav-style.css">
<link rel="stylesheet" href="css/style.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<script src="js/player/lottie.js"></script>
</head>

<body class="has-overflow-hidden allowHover" id="homepage" style="">

<div id="site-wrapper">
  <header class="bg-pink">
	<%@include file="sidebar.jsp" %>
  </header>
  
<div id="barba-wrapper" aria-live="polite">



 <!-- ======= Hero Section ======= -->
  <section  class="content-bg2">
    <div class="container">
      <h1 class="content-tsb2"> Website Design & Development </h1>
      <p class="cnt_st2">Let your first digital impression be unique with the best web designing and development agency.</p></h1>
      <form action="forms/notify.php" method="post" role="form" class="php-email-form">
        <button  class="get2" type="submit" id="top-padd" ><a href="https://dmm.virtuosonetsoft.com/contact">GET STARTED</a></button>
      </form>
    </div>
  </section>

  
  
     <!-- ======= Sec-1 ======= -->
    <section class="step-04 pt-0">
      <div class="container-fluid">
      	 <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <img src="assets/img/web-design.jpg" class="img-fluid" alt="web-design">
          </div> 
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pt-80">
            <h2 class="web-d"><b>Have the best online presence helps you be a step ahead of competitors in today's era.</b></h2>

            <p class="content-mark">What is web design? Why Web design and development is important? How will it help my business? Why the website is not getting enough traffic? Will my sales and revenue increase? How will I find the best Website Development Service company? These are the few questions that we generally come across from the client's side. We know these questions can be very overwhelming to you sometimes. The answer to your questions in a sentence is "your poorly designed website, which is not up-to-the-mark to convert a browser into a buyer."</p>

           
			   <!-- DISCOVER MORE MODEL START M-1 -->
            
			  <button type="button" class="btn btn-info btn-lg1" data-toggle="modal" data-target="#myModal1">DISCOVER MORE</button>

			  <!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog" id="model-cnt">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					<h1 class="get-digital">Get your digital journey started with VNS</h1>
					  <button type="button" class="close" data-dismiss="modal">&times;</button>  
					</div>
					<div class="modal-body">
					  <div class="row">
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">First Name</label>
							<input type="First Name" class="form-control" id="firstName1" aria-describedby="emailHelp" placeholder="First Name">
							<!--<small id="emailHelp" class="form-text text-muted">We'll never share your First Name with anyone else.</small>-->
						  </div>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Last Name</label>
							<input type="Last Name" class="form-control" id="lastName1" aria-describedby="emailHelp" placeholder="Last Name">
						  </div>
						</div>  
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Email address</label>
							<input type="email" class="form-control" id="emailAddress1" aria-describedby="emailHelp" placeholder="Enter email">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						   <div class="form-group fn">
							<label for="exampleInputEmail1">Enter you Phone No</label>
							<input type="text" maxLength=10 class="form-control" id="phoneNo1" aria-describedby="emailHelp" placeholder="Enter your phone">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						   <div class="form-group htb">
							<label for="exampleInputEmail1">Message</label>
							<textarea id="message1" rows="4" cols="55" name="comment" form="usrform">Enter text here...</textarea>
							<input type="hidden" id="pageName1" value="content_strategy">
							<input type="hidden" id="title1" value="What_is_Content_Marketing_in_Digital_Marketing">
						  </div>
						  </div>
						 
						   <div class="col-sm-12 col-md-12 col-xs-12 pl-2">
						  <button id="send-btn-01" onclick="discoverMoreSubmission(1)" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="btn btn-primary">Submit</button>
						  </div>
						    <div id="thankyoudiv1" style="display:none">
 							 <label style="color:red">Thank you please check your email..we have sent a confirmation email</label>
						 </div>
						 <div class="popup-content" id="loaderDisplay" style="display:none">
  							<span class="loader">
 								 <span class="loader-inner"></span>
							</span>
							<h1>Processing...</h1>
 					 	</div>
						</div>
					</div>
					<!--<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				</div>
			  </div>
			  <!-- DISCOVER MORE MODEL END M-1 -->
			  
			  
			</div>
			 
          </div>
      </div>
    </section>
     <!-- ======= Sec-1 End ======= -->
		
	<!-- ======= Sec-2 ======= -->
    <section  class="about pt-10">
      <div class="container-fluid">

        <div class="row">
         
          <div class="col-lg-6 pt-4 pt-lg-0 pt-0">
            <h3 class="web-content">Virtuoso Netsoft is the most Innovative Website Development Company in the world.</h3>
            <p class="content-m">Virtuoso Netsoft is the first choice of most companies providing the best Website Design & Development services in India, Australia, New Zealand, and all over the world. VNS has served more than 100+ organizations to provide an online platform to the organizations to get recognized and increase their traffic and reach the potential audience to accelerate their business. Virtuoso Netsoft is known as the web development company Sydney and Melbourn with the most economical quote for all kinds of organization. Our website design and development strategies are defined as per the requirement of the project that makes it easy for the client to connect with the step of action we take. </p>
            
             <!-- DISCOVER MORE MODEL START M-2 -->
            
			  <button type="button" class="btn btn-info btn-lg1" data-toggle="modal" data-target="#myModal1">DISCOVER MORE</button>

			  <!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog" id="model-cnt">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					<h1 class="get-digital">Get your digital journey started with VNS</h1>
					  <button type="button" class="close" data-dismiss="modal">&times;</button>  
					</div>
					<div class="modal-body">
					  <div class="row">
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">First Name</label>
							<input type="First Name" class="form-control" id="firstName1" aria-describedby="emailHelp" placeholder="First Name">
							<!--<small id="emailHelp" class="form-text text-muted">We'll never share your First Name with anyone else.</small>-->
						  </div>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Last Name</label>
							<input type="Last Name" class="form-control" id="lastName1" aria-describedby="emailHelp" placeholder="Last Name">
						  </div>
						</div>  
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Email address</label>
							<input type="email" class="form-control" id="emailAddress1" aria-describedby="emailHelp" placeholder="Enter email">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						   <div class="form-group fn">
							<label for="exampleInputEmail1">Enter you Phone No</label>
							<input type="text" maxLength=10 class="form-control" id="phoneNo1" aria-describedby="emailHelp" placeholder="Enter your phone">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						   <div class="form-group htb">
							<label for="exampleInputEmail1">Message</label>
							<textarea id="message1" rows="4" cols="55" name="comment" form="usrform">Enter text here...</textarea>
							<input type="hidden" id="pageName1" value="content_strategy">
							<input type="hidden" id="title1" value="What_is_Content_Marketing_in_Digital_Marketing">
						  </div>
						  </div>
						 
						   <div class="col-sm-12 col-md-12 col-xs-12 pl-2">
						  <button id="send-btn-01" onclick="discoverMoreSubmission(1)" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="btn btn-primary">Submit</button>
						  </div>
						    <div id="thankyoudiv1" style="display:none">
 							 <label style="color:red">Thank you please check your email..we have sent a confirmation email</label>
						 </div>
						 <div class="popup-content" id="loaderDisplay" style="display:none">
  							<span class="loader">
 								 <span class="loader-inner"></span>
							</span>
							<h1>Processing...</h1>
 					 	</div>
						</div>
					</div>
					<!--<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				</div>
			  </div>
			  <!-- DISCOVER MORE MODEL END M-2 -->
			  
			  
          </div>
		  
		   <div class="col-lg-6">
            <img src="assets/img/design-devices.jpg" class="img-fluid" alt="design-devices">
          </div>
        </div>

      </div>
    </section>
    <!-- ======= Sec-2 End ======= -->
  






    <!-- ======= Sec-3 ======= -->
    <section id="about" class="step-2">
      <div class="container-fluid">

        <div class="row">
         <div class="col-lg-6">
            <img src="assets/img/web-development.jpg" class="img-fluid" alt="web-development">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3 class="smm-title02"><b>We majorly expert in following types of website development services:</b></h3>
            
            <ul class="keyword-list">
              <li><i class="fa fa-check" aria-hidden="true"></i> <b>Web Development</b></li>
              <li><i class="fa fa-check" aria-hidden="true"></i> <b>Enterprise Websites</b> </li>
			  <li><i class="fa fa-check" aria-hidden="true"></i> <b>E-commerce Websites</b> </li>
			  <li><i class="fa fa-check" aria-hidden="true"></i> <b>WordPress Website</b> </li>
			  <li><i class="fa fa-check" aria-hidden="true"></i> <b>Shopify Websites</b> </li>
			   <li><i class="fa fa-check" aria-hidden="true"></i> <b>Landing Pages</b> </li>
			   <li><i class="fa fa-check" aria-hidden="true"></i> <b>Mobile App Development</b> </li>
            </ul>
     
			   <!-- DISCOVER MORE MODEL START M-3 -->
            
			  <button type="button" class="btn btn-info btn-lg1" data-toggle="modal" data-target="#myModal1">DISCOVER MORE</button>

			  <!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog" id="model-cnt">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					<h1 class="get-digital">Get your digital journey started with VNS</h1>
					  <button type="button" class="close" data-dismiss="modal">&times;</button>  
					</div>
					<div class="modal-body">
					  <div class="row">
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">First Name</label>
							<input type="First Name" class="form-control" id="firstName1" aria-describedby="emailHelp" placeholder="First Name">
							<!--<small id="emailHelp" class="form-text text-muted">We'll never share your First Name with anyone else.</small>-->
						  </div>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Last Name</label>
							<input type="Last Name" class="form-control" id="lastName1" aria-describedby="emailHelp" placeholder="Last Name">
						  </div>
						</div>  
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Email address</label>
							<input type="email" class="form-control" id="emailAddress1" aria-describedby="emailHelp" placeholder="Enter email">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						   <div class="form-group fn">
							<label for="exampleInputEmail1">Enter you Phone No</label>
							<input type="text" maxLength=10 class="form-control" id="phoneNo1" aria-describedby="emailHelp" placeholder="Enter your phone">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						   <div class="form-group htb">
							<label for="exampleInputEmail1">Message</label>
							<textarea id="message1" rows="4" cols="55" name="comment" form="usrform">Enter text here...</textarea>
							<input type="hidden" id="pageName1" value="content_strategy">
							<input type="hidden" id="title1" value="What_is_Content_Marketing_in_Digital_Marketing">
						  </div>
						  </div>
						 
						   <div class="col-sm-12 col-md-12 col-xs-12 pl-2">
						  <button id="send-btn-01" onclick="discoverMoreSubmission(1)" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="btn btn-primary">Submit</button>
						  </div>
						    <div id="thankyoudiv1" style="display:none">
 							 <label style="color:red">Thank you please check your email..we have sent a confirmation email</label>
						 </div>
						 <div class="popup-content" id="loaderDisplay" style="display:none">
  							<span class="loader">
 								 <span class="loader-inner"></span>
							</span>
							<h1>Processing...</h1>
 					 	</div>
						</div>
					</div>
					<!--<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				</div>
			  </div>
			  <!-- DISCOVER MORE MODEL END M-3 -->
				
				
			  </div>
          </div>
		  
		   
        </div>

      </div>
    </section>
    <!-- ======= Sec-3 End ======= -->

    <!-- ======= Sec-4 ======= -->
    <section id="about" class="step-04">
      <div class="container-fluid">

        <div class="row">
        
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3 class="smm-title02"><b>The step-by-step process we follow at VNS for our website design and development services:</b></h3>
            <ul class="keyword-list">
              <li><i class="fa fa-check" aria-hidden="true"></i> <b>Identifying Goals</b></li>
              <li><i class="fa fa-check" aria-hidden="true"></i> <b>Identifying the scope of the project</b> </li>
			  <li><i class="fa fa-check" aria-hidden="true"></i> <b>Creating project blueprint</b> </li>
			  <li><i class="fa fa-check" aria-hidden="true"></i> <b>Content Creation and Designing (helps in SEO as well)</b> </li>
			    <li><i class="fa fa-check" aria-hidden="true"></i> <b>Working on the Visual Design</b> </li>
			   <li><i class="fa fa-check" aria-hidden="true"></i> <b>Testing</b> </li>
			   <li><i class="fa fa-check" aria-hidden="true"></i> <b>Lastly! Launch</b></li> 
            </ul>
     
			  <!-- DISCOVER MORE MODEL START M-4 -->
            
			  <button type="button" class="btn btn-info btn-lg1" data-toggle="modal" data-target="#myModal1">DISCOVER MORE</button>

			  <!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog" id="model-cnt">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					<h1 class="get-digital">Get your digital journey started with VNS</h1>
					  <button type="button" class="close" data-dismiss="modal">&times;</button>  
					</div>
					<div class="modal-body">
					  <div class="row">
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">First Name</label>
							<input type="First Name" class="form-control" id="firstName1" aria-describedby="emailHelp" placeholder="First Name">
							<!--<small id="emailHelp" class="form-text text-muted">We'll never share your First Name with anyone else.</small>-->
						  </div>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Last Name</label>
							<input type="Last Name" class="form-control" id="lastName1" aria-describedby="emailHelp" placeholder="Last Name">
						  </div>
						</div>  
						<div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						  <div class="form-group fn">
							<label for="exampleInputEmail1">Email address</label>
							<input type="email" class="form-control" id="emailAddress1" aria-describedby="emailHelp" placeholder="Enter email">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pr-0">
						   <div class="form-group fn">
							<label for="exampleInputEmail1">Enter you Phone No</label>
							<input type="text" maxLength=10 class="form-control" id="phoneNo1" aria-describedby="emailHelp" placeholder="Enter your phone">
						  </div>
						  </div>
						  <div class="col-sm-6 col-md-6 col-xs-12 pl-6">
						   <div class="form-group htb">
							<label for="exampleInputEmail1">Message</label>
							<textarea id="message1" rows="4" cols="55" name="comment" form="usrform">Enter text here...</textarea>
							<input type="hidden" id="pageName1" value="content_strategy">
							<input type="hidden" id="title1" value="What_is_Content_Marketing_in_Digital_Marketing">
						  </div>
						  </div>
						 
						   <div class="col-sm-12 col-md-12 col-xs-12 pl-2">
						  <button id="send-btn-01" onclick="discoverMoreSubmission(1)" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing" type="button" class="btn btn-primary">Submit</button>
						  </div>
						    <div id="thankyoudiv1" style="display:none">
 							 <label style="color:red">Thank you please check your email..we have sent a confirmation email</label>
						 </div>
						 <div class="popup-content" id="loaderDisplay" style="display:none">
  							<span class="loader">
 								 <span class="loader-inner"></span>
							</span>
							<h1>Processing...</h1>
 					 	</div>
						</div>
					</div>
					<!--<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				</div>
			  </div>
			  <!-- DISCOVER MORE MODEL END M-4 -->
			  </div>
          
		   <div class="col-lg-6 col-sm-6 col-md-6">
            <img src="assets/img/ux-designer.jpg" class="img-fluid" alt="ux-designer">
          </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======= Sec-4 End ======= -->
         
         <%@include file="footer.jsp" %>
		
    </div>
    	

</div>
<style>

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #f76c51;
    cursor: default;
    background-color: #fff0;
    border: 1px solid #ddd0;
    border-bottom-color: transparent;
}

.budget-list li {
    line-height: 30px;
    padding-left: 6px;
}
.fa-check:before {
    content: "\f00c";
    color: #f76c51;
    position: relative;
    right: 8px;
}
.btn.btn-info.btn-lg1 {
    margin-bottom: 40px;
}
#send-btn-01 {
    background-color: #000;
    margin-top: 20px;
    margin-left: 0px;
}
.btn-info {
    color: #fff;
    background-color: #f76c51;
    border-color: #f76c51;
}
.btn-info:hover {
    color: #fff;
    background-color: #f76c51;
    border-color: #f76c51;
}
.bx-check-double:before {
    content: "\ea14";
    color: #ff7e66;
}
.keyword-list li {
    font-size: 16px;
    font-weight: 400;
    line-height: 30px;
}
.pl-6 {
    padding-left: 0px;
}
.pr-0 {
    padding-right: 0px;
}
.fn {
    width: 100%;
}

.modal-content .modal-header .close {
    position: relative;
    left: 18px;
    bottom: 0px;
    top: -70px;
    bottom: 0px;
}
.modal-content .modal-header .close {
    color: #0d0c0c !important;
}


.get-digital {
    font-size: 30px;
    padding: 0px;
    width: 100%;
    margin: 0px;
    font-weight: 700;
    text-transform: capitalize;
    height: 0px;
    margin-bottom: 35px;
}


.modal-content {
    background-color: #fff !important;
    /* margin-left: -1px !important; */
}
#model-cnt {
    position: relative;
    margin: 0px;
}
.modal-content {
    position: relative;
    background-color: transparent;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: none;
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    color: #080808;
    padding: 2em 1em;
}
.ml-0 {
    margin-left: 33px;
    margin-right: 0px;
}
.menu ul li:first-child {
    margin-top: 0em;
    border: 0;
    box-shadow: none;
}
.nav-tabs>li {
    float: none;
   
}	

	
			.logo {
            padding-top: 0px !important;
}
			.popup-btn {
				position: fixed!important;
				top: 46%;
				left: 92%;
				transform: translate(-50%, -50%);
				transform: rotate(-90deg);
				width: 230px;
			}
			#sendbtn {
    width: 135px;
}
			
			.main-btn-rect,
			.main-btn-circle {
				position: relative;
				margin: 0;
				font-family: 'Roboto', sans-serif;
				color: #FFFFF0;
				background-color: rgb(252, 79, 79);
				text-transform: uppercase;
				font-size: 20px;
				letter-spacing: 1px;
				outline: none;
				cursor: pointer;
				z-index: 100;
			}
			
			.main-btn-rect {
		    padding: 12px 0px;
		    line-height: 20px;
		    border-radius: 5px;
		    border: 0px solid;
		    width: 172px;
		}
			
			.main-btn-rect:before,
			.main-btn-rect:after {
				position: absolute;
				content: '';
				top: 0;
				width: 0%;
				height: 100%;
				background-color: rgba(255, 255, 240, 0.2);
				-webkit-transition: width 0.3s;
				-o-transition: width 0.3s;
				transition: width 0.3s;
			}
			
			.main-btn-rect:before {
				left: 0;
			}
			
			.main-btn-rect:after {
				right: 0;
			}
			
			.main-btn-rect:hover:before,
			.main-btn-rect:hover:after {
				width: 50%;
			}
			
			.main-btn-circle {
				height: 40px;
				width: 40px;
				-webkit-border-radius: 50%;
				border-radius: 100%;
				line-height: 40px;
				-webkit-transition: box-shadow 0.3s;
				-o-transition: box-shadow 0.3s;
				transition: box-shadow 0.3s;
			}
			
			.main-btn-circle:hover {
				-webkit-box-shadow: inset 2px 1px 0px 20px rgba(255, 255, 240, 0.2);
				-moz-box-shadow: inset 2px 1px 0px 20px rgba(255, 255, 240, 0.2);
				box-shadow: inset 2px 1px 0px 20px rgba(255, 255, 240, 0.2);
			}
			
			.popup {
				position: fixed;
				top: 103%;
				/*width: 100%;
				height: 100%;*/
				z-index: 10001;
				right:206px;
				    bottom: -31px;
				
			}
			
			.modal-header .close {
				color: #fff !important;
			}
			
			.popup.active {
				top: 0;
				/*background-color: rgba(3, 3, 3, 0.98); */
				transition: background-color .6s, opacity .6s;
			}
			
			
			.main-btn-rect,
			.main-btn-circle {
				font-size: 16px;
			}
			
			
			.popup .main-btn-rect {
    padding: 10px 18px;
    margin-left: 14px;
    margin-bottom: 16px;
    font-size: 14px;
    margin-top: 0px;
}
		.min-h #qe_message {
		    height: 52px;
		}
		
					
			.flex-row #send {
				background-color: #f35255;
				width: 100%;
				font-size: 15px;
				margin-bottom: 50px;
			}
			
			.popup .popup-content {
				position: absolute;
				top: 50%;
				left: 85%;
				max-height: 568px;
				min-width: 320px;
				margin-top: 150px;
				padding: 0px;
				background-color: #0000008c;
				color: #070000;
				-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
				box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
				-ms-transform: translateX(-50%) translateY(-50%);
				transform: translateX(-50%) translateY(-50%);
				-webkit-transform: translateX(-50%) translateY(-50%);
				-moz-transform: translateX(-50%) translateY(-50%);
				-o-transform: translateX(-50%) translateY(-50%);
				transition: margin .6s;
				-webkit-transition: margin .6s;
				-moz-transition: margin .6s;
				-o-transition: margin .6s;
			}
			
			.popup.active .popup-content {
				margin-top: 0px;
				/*background-color: rgba(0, 0, 0, 0.6) !important;*/
                border-radius: 5px !important;
			}
			
			.popup-content h6 {
				display: table;
				font-size: 25px;
				text-align: center;
				/* margin: 8px auto; */
				font-family: 'Roboto', sans-serif;
				text-transform: uppercase;
				font-weight: 100;
				color: #fff;
				margin-left: 17px;
				margin-top: 22px;
				
			}
			
			.form-group {
				position: relative;
				width: 90%;
				margin: 0px auto;
			}
			
			form#send input,
			form#send textarea {
				position: relative;
				margin-bottom: 11px;
				width: 100%;
				height: 27px;
				font-family: 'RobotoLight', sans-serif;
				text-indent: 5px;
				background-color: white;
				outline: 0;
				border: none;
				border-bottom: 0px solid #070000;
				-webkit-transition: border 0.6s;
				-o-transition: border 0.6s;
				transition: border 0.6s;
				border-radius: 3px;
				font-size: 14px;
				 color: #000;
			}
			.send-form {
    margin-top: 20px;
}
			
			form#send input:focus,
			form#send textarea:focus {
				border-bottom: 1px solid rgb(63, 173, 168);
			}
			
			form#send label {
				position: absolute;
				top: 0;
				line-height: 28px;
				-webkit-transition: color .5s;
				-o-transition: color .5s;
				transition: color .5s;
			}
			
			form#send input:focus + label,
			form#send textarea:focus + label {
				color: rgb(63, 173, 168);
			}
			
			form#send .txt {
				line-height: 22px;
				left: 2px;
			}
			
			#send .main-btn-rect {
				position: relative;
				display: block;
				padding: 9px 17px;
				margin-left: 17px;
				font-size: 14px;
				float: left;
				margin-bottom: 16px;
			}
			
			form#send .main-btn-rect i {
				margin-right: 5px;
			}
			
		
			.popup .fade-out {
	    position: absolute;
	    top: 4px;
	    right: 15px;
	    text-align: center;
	    font-size: 18px;
	    border-radius: 0px;
	    margin-top: 11px;
	}
				
				.share-wrap {
					position: absolute;
					display: inline-table;
					top: 67%;
					left: 50%;
					transform: translate(-50%, -50%);
					padding: 15px;
					text-align: center;
				}
				
				.fade.in {
					opacity: 1;
					background-color: #ff000000 !important;
					background: darkgray;
					
				}
				
				.share-btn {
				color: #FFFFF0;
				padding: 7px 25px;
				text-decoration: none;
				cursor: pointer;
				font-weight: 100;
				font-size: 14px;
				font-family: 'Lobster', sans-serif;
				background-color: rgba(63, 173, 168, .8);
				text-transform: uppercase;
				border-radius: 5px;
				transition: background-color .5s;
				-webkit-transition: background-color .5s;
				-moz-transition: background-color .5s;
				-o-transition: background-color .5s;
			}
			
			.share-btn:hover {
				color: #FFFFF0;
				text-decoration: none;
				background-color: rgba(63, 173, 168, 1.0);
			}
			
			.close {
				background: #ffffff;
				color: #FFFFFF !important;
				line-height: 60px;
				position: absolute;
				right: 2px;
				text-align: center;
				top: -9px;
				width: 60px;
				text-decoration: none;
				font-weight: normal;
				-webkit-border-radius: 12px;
				-moz-border-radius: 12px;
				border-radius: 50% !important;
				-moz-box-shadow: 1px 1px 3px #000;
				-webkit-box-shadow: 1px 1px 3px #000;
				box-shadow: 0px 0px 0px #000;
				border: 0px solid #fff !important;
				opacity: 9;
				font-size: 2em;
			}
			
			.close:hover {
				background: #f76c5100;
			}
			
			.col-cn .form-group {
				position: relative;
				width: 100%;
				margin: 0px auto;
			}
			
			.chat-area {
				flex-grow: 1;
				overflow: auto;
				border-radius: 8px;
				padding: 16px;
				display: flex;
				flex-direction: column;
				height: 350px;
			}
			
			
.modal-dialog {
    position: relative;
    left: 439px;
    top: 72px;
    width: 34%;
}
.col-cm {
    font-size: 17px;
    padding-left: 0px;
}
			
			.title_top {
				color: #8e8e8e;
				font-size: 18px;
				text-align: center;
				font-weight: bold;
				margin-bottom: 8px;
				margin-top: 10px;
			}
			
			@media only screen and (max-width: 768px) {
				h1 {
					font-size: 25px;
				}
				h2 {
					font-size: 14px;
				}
				form#send .main-btn-rect {
					padding: 7px 60px;
					font-size: 14px;
				}
				.popup-btn {
					padding: 7px 60px;
					font-size: 14px;
				}
			}
			/*PRELOADING------------ */
			
			.no_pad .form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 0px;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    border-right: 0px;
    border-top: 0px;
    border-left: 0px;
}

		

#overlayer {
  width:100%;
  height:100%;  
  position:absolute;
  z-index:1;
  background:#4a4a4a;
}
.loader {
  display: inline-block;
  width: 30px;
  height: 30px;
  position: absolute;
  z-index:3;
  border: 4px solid #Fff;
  top: 50%;
  animation: loader 2s infinite ease;
}

.loader-inner {
  vertical-align: top;
  display: inline-block;
  width: 100%;
  background-color: #fff;
  animation: loader-inner 2s infinite ease-in;
}
.py-md-4 input {
    color: #000;
}

@keyframes loader {
  0% {
    transform: rotate(0deg);
  }
  
  25% {
    transform: rotate(180deg);
  }
  
  50% {
    transform: rotate(180deg);
  }
  
  75% {
    transform: rotate(360deg);
  }
  
  100% {
    transform: rotate(360deg);
  }
}

@keyframes loader-inner {
  0% {
    height: 0%;
  }
  
  25% {
    height: 0%;
  }
  
  50% {
    height: 100%;
  }
  
  75% {
    height: 100%;
  }
  
  100% {
    height: 0%;
  }
}
@media screen and (min-width: 320px) and (max-width:991px) {
.modal-dialog {
    position: relative;
    left: 5px;
    top: 5%;
    width: 85%;
}


.main-card {
    background: white;
    color: white;
    width: 100%;
    height: calc(100% - 32px);
    margin: 16px auto;
    border-radius: 8px;
    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    display: flex;
    flex-direction: column;
    overflow: hidden;
}
.vns {
    width: 37%;
    float: left;
    padding-right: 0px;
}
.hi {
    float: left;
    width: 38%;
    padding-left: 7px;
}
.modal-header .close {
    position: relative;
    left: 174px;
    bottom: 0px;
    top: -45px;
    color: #fff;
}
.col_3 {
    clear: both;
    height: 0px;
}
.wdh input {
    width: 100%;
}
.flex-row #chatform_send {
    background-color: #f35255;
    width: 100%;
    font-size: 15px;
    margin-bottom: 50px;
}
.col-cn {
    margin: 0 auto;
     padding-right: 0px;
    padding-left: 0px;
}

}

</style>
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
    <script>
    function freeAudit(){
    	
    	var email=document.getElementById('email').value;
    	var email_filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    	
    	var name=document.getElementById('name').value;
    	var phn=document.getElementById('phn').value;
    	var msg=document.getElementById('msg').value;
    	var source_page='orm';
    	 var phoneno = /^\d{10}$/;
    	
    	
    	if(email.length==0 || name.length==0 || phn.length==0 || msg.length==0){
        	alert("please fill all the feilds");
	    	
    	}
    	
    	else{
    		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) && phn.match(phoneno))
    		  {
    		   
    			$(document).ready(function() {
                    
                    
                    $.ajax({
                    url: "save_free_audit_details.jsp",
                    type: "post",
                    data: {
                    name:name,
                    email:email,
                    phn:phn,
                    msg:msg,
                    source_page:source_page,
                   
                  
                    success : function(data){
                   // alert(data);
                    	
                    	document.getElementById("free_audit_details").reset();

                    }
                    }
                    });
                    
                    });
    		  }else{
    			  alert("please enter a valid email or phone number");
    		  }
    	
    	}
    	
    	
    }
    </script>
    
</body>
</html>