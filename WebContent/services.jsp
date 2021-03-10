<%@page import="beans.homepage_photos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ApiController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="en">

	<head>
		<!-- Google Tag Manager -->
		<script>
			(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
			new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
			j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
			'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
			})(window,document,'script','dataLayer','GTM-M2WQNDK');
		</script>
		<!-- End Google Tag Manager -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
			<!--  <title>VNS-DMM</title>-->
		<title>Services| Best Digital Marketing and Web & App Development Services</title>
		
		<meta name="description" content="VNS provides a wide variety of services like Digital Marketing, Website Development, Mobile app development services, SMM, PPC, SMO, and creative services with the help of skilled and experienced experts worldwide.">
	    <meta name="keywords" content="digital marketing experts in australia, digital marketing agency melbourn, digital marketing agency sydney,digital marketing agency Auckland, list of digital marketing services agency in australia, digital marketing pakages in autralia, digital agency, top digital agency in New Zealand, digital marketing package nz, digital marketing pakages in newzealand, digital marketing services, top digital agency in new zealand, top digital agency in Australia">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="dist/cursor.css">
		<link rel="stylesheet" href="css/nav-style.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		<script src="js/player/lottie.js"></script>
		<style>
			#services_option{
			color:#cecea9;
			}
			li#noneselected {
			    width: 91.5%;
			}
			p.validation_errors {
			    color: red;
			}
		</style>
	</head>

	<body class="has-overflow-hidden allowHover" id="homepage" style="">
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M2WQNDK" height="0" width="0" style="display:none;visibility:hidden"></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->
		<div id="site-wrapper">
			<header>
				<%@include file="sidebar.jsp" %>	
			</header>
			
			<main role="main">
				<div id="barba-wrapper" aria-live="polite">
					<div class="barba-container">
						<div class="homepage">
							<div class="container">
								<div class="main-area">
									<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<section class="digital-title wow fadeInLeft">
												<h1 style="font-size: 55px;"><span class="orange">What we do</span></h1>
												<p>We build better businesses by creating joyful digital ideas, products and experiences that connect the hearts of brands to the hearts of their consumers.</p>
											</section>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div id="animation_services" class="s-img"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<section class="description-area pd-top">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<div class="desc-img wow fadeInRight">
										<img src="images/s2.png" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="desc-title wow fadeInLeft">
										<h1>Branding & Identity</h1>
										<p>We fuel the growth of purpose driven brands through strategy activation, design empowerment, and market adoption. From cultivating new ideas to connecting the dots for customers or users, these are our core principles</p>
										<div class="service-list">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Brand Strategy & Experience</li>
														<li>Guidelines & Systems</li>
														<li>Trends & Insights</li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Content Strategy</li>
														<li>Go-To-Market Strategy</li>
														<li>Identity Design</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="p-right wow fadeInRight" style="visibility: visible; 
										animation-name: fadeInRight;">
										       <a href="brandingandidentity"  class="carrow cta">
										Know More
										<span></span>
										</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					
					<section class="description-area pd-top">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-title wow fadeInLeft">
										<h1>Digital Marketing</h1>
										<p>VNS DMM plays a vital role in this area of marketing in assisting customers. Venturing out in the corporate reality where millions of businesses already have a solid brand name, a huge clientele, and all vying for the same eyeball, it then becomes a tremendous challenge to reach on top. Be it business expansion, reaching out to more clients, or social media management, we offer affordable SEO services that are precisely tailored as per your requirements.</p>
										<div class="service-list">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Business Generation</li>
														<li>Tracking and Analytics</li>
														<li>SEO</li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>SMM</li>
														<li>SEM</li>
														<li>Digital Campaign</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="p-right wow fadeInRight" style="visibility: visible; 
										animation-name: fadeInRight;">
                                         <a href="digitalmarketing"  class="carrow cta">
                                       Know More
                                       <span></span>
                                       </a>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-img wow fadeInRight">
										<div class="sthree">
											<img src="images/s3.png" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					<section class="description-area pd-top">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-img wow fadeInRight">
										<img src="images/s4.png" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="desc-title wow fadeInLeft">
										<h1>Web and App Development</h1>
										<p>We carefully engineer our client’s website and apps through reliable technologies to deliver an astronomical innovation. Our experience in building enterprise apps helps organizations build websites and mobile applications that are robust, secure, and adaptable for windows, IOS and android users</p>
										<div class="service-list">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Website and App development</li>
														<li>UI and UX Design</li>
														<li>SEO Strategies</li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Prototyping</li>
														<li>On page improvements</li>
														<li>Off page improvements</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="p-right wow fadeInRight" 
										style="visibility: visible; animation-name: fadeInRight;">
										<a href="webanddevelopment"  class="carrow cta">
										Know More
										<span></span>
										</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					<section class="description-area m-bt">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-title wow fadeInLeft">
										<h1>Online Reputation Management</h1>
										<p>Everybody desires a good reputation and VNS DMM brings their clients in the best books online. Our smart geeks will put your best foot forward while creating a balance. We will assist you to push damaging content further down in the results and rank your appealing content higher in the searches.</p>
										<div class="service-list">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Content formation</li>
														<li>ORM services</li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="dashed">
														<li>Brand reputation management</li>
														<li>Corporate reputation management</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="p-right wow fadeInRight" 
										style="visibility: visible; animation-name: fadeInRight;">
<a href="orm"  class="carrow cta">
Know More
<span></span>
</a>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-img wow fadeInRight">
										<img src="images/s5.png" />
									</div>
								</div>
							</div>
						</div>
					</section>
					
					
					<section class="description-area m-bt" style="background:#EDEBEA;">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="desc-title wow fadeInLeft">
										<h1>How we work together</h1>
										<div class="desc-img wow fadeInRight">
											<img src="images/s6.png" />
										</div>
									</div>
								</div>
								<section class="col-md-5 col-sm-5 col-xs-12">
									<div class="numbering">
										<div class="stroke-title">
											<h1>01</h1>
											<h2>Design-focused, first and foremost.</h2>
											<p>As a team, we’re design-focused across every touchpoint or interaction. Everything we do and dream up has a solid design impact. We get up and go in the morning, supercharged to make a difference with design as a top-of-mind solution.</p>
										</div>
										<div class="stroke-title">
											<h1>02</h1>
											<h2>Vendor no more – we’re part of your Team.</h2>
											<p>Some brands and businesses need a vendor. Well, that’s just not us. We’ve crossed it out from our virtual dictionaries. It’s dead to us. Instead, we’re a partner, enabler, and true collaborator. We’re a team extension and built around unification.</p>
										</div>
										<div class="stroke-title">
											<h1>03</h1>
											<h2>Design-focused, first and foremost.</h2>
											<p>As a team, we’re design-focused across every touchpoint or interaction. Everything we do and dream up has a solid design impact. We get up and go in the morning, supercharged to make a difference with design as a top-of-mind solution.</p>
										</div>
									</div>
								</section>
							</div>
						</div>
					</section>
					
					<section class="review">
						<section class="container">
							<section class="get-call  wow fadeInDown">
								<section class="contact-set">
									<section class="row">
										<section class="col-md-6 col-xs-12">
											<section class="set-img">
												<img src="images/audit.jpg" />
											</section>
										</section>
										<section class="col-md-5 col-xs-12 wd-2">
											<section class="get-text">
												<input type="hidden" id="option" value="services">
												<%@include file="free_audit_form.jsp"%>
												</div>
												</div>
												</div>
											</section>
										</section>
									</section>
								</section>
								<div class="container">
								<section class="row">
									<section class="col-md-1 col-xs-4 no_pad">
										<section class="get-img">
											<img src="images/phone.PNG" />
										</section>
									</section>
									<section class="col-md-6 col-xs-8">
										<section class="get-text">
											<h2 class="grey">Get free Audit for your brand</h2>
										</section>
									</section>
									<section class="col-md-5 col-xs-12">
										<section class="get-text">
											<h2>Call :<span class="red"> +91-8288815694</span></h2>
										</section>
									</section>
								</section>
								</div>
							</section>
							
							
							<section class="connect wow fadeInDown">
							<div class="container">
								<div class="row ml-20">
									<div class="connect-icon wow fadeInUp">
										<img src="images/connect_img.svg" />
									</div>
									<h1>Connect with us on our social media</h1>
									<div class="connect-content wow fadeInDown">
									<%
									ApiController apiController2=new ApiController();
									ArrayList<homepage_photos> hmp=apiController2.fetchHomepagePhotos();
									for(int i=0;i<hmp.size();i++){
									
									%>
										<div class="col-md-4 col-sm-4 col-xs-12">
											<div class="connect-img">
												<img src="<%=hmp.get(i).getFilename()%>" class="image" />
												<div class="overlay">
														<a href="<%=hmp.get(i).getLinks()%>" class="icon" title="User Profile"> <i class="fa fa-link"></i> </a>
												
												</div>
											</div>
										</div>
										<%} %>
									
									</div>
								</div>
								</div>
							</section>
						</section>
					</section>
					<section class="footer  wow fadeInDown">
						<div class="container">
							<div class="partnership  wow fadeInDown" id="btn">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="part-text">
											<div id="animate2"></div>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="part-right">
											<h1 class="red">Let's get started </h1>
											<p>Your Idea to Reality</p>
											<div class="p-right"> <a href="https://dmm.virtuosonetsoft.com/contact" class="carrow cta" data-toggle="modal" data-target="#myModal"> START A PARTNERSHIP <span></span> </a> 
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="footer-area">
								<div class="row">
									<div class="col-md-7 col-sm-7 col-xs-12">
										<div class="foot-text">
											<img src="images/logo.svg" class="f-img"> <span style="margin-bottom: 2em;">We boost your business from nowhere to everywhere .</span>
											<p class="orange">We are the architects of influential digital media marketing strategies
												<br>which give us a legitimate way to connect with potential customers online.</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-7 col-xs-12">
										<div class="foot-text">
											<p> <span>ADDRESS:</span> Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101</p>
											<p> <span> MAIL US:</span>rishabh@virtuosonetsoft.in
											<p><span>CALL US:</span> +91-8288815694</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2 col-xs-12">
										<div class="foot-text">
											<ul>
												<li class="set">QUICK LINKS:</li>
												<li><a href="portfolio">Our Works</a>
												</li>
												<li><a href="services">Our Services</a>
												</li>
												<li><a href="#" data-toggle="modal" data-target="#myModal"> Contact Us</a>
												</li>
												<li><a href="aboutus">About Us</a>
												</li>
												<li><a href="http://blog.virtuosonetsoft.com/">Blog</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					
					<section class="footer-links">
						<section class="row">
							<section class="col-md-6 col-xs-12">
								<section class="foot-info">
									<p>Privacy Policy | Terms & Conditions</p>
								</section>
							</section>
							<section class="col-md-6 col-xs-12">
								<section class="foot-social">
									<ul>
										<li>FOLLOW US:</li>
										<li><a href="https://www.facebook.com/VirtuosoNetsoft.VNS">FACEBOOK</a>
										</li>
										<li><a href="https://twitter.com/VNS_Virtuoso">TWITTER</a>
										</li>
										<li><a href="https://www.instagram.com/virtuosonetsoft/">INSTAGRAM</a>
										</li>
										<li><a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/">LINKEDIN</a>
										</li>
									</ul>
								</section>
								
							</section>
						</section>
					</section>
					<section class="bgcon">
						 <div class="container">
						    <div class="row">
						        <div class="col-md-12 col-xs-12">
						        <h4 class="netsoft">©2011-2020 All Rights Reserved. Virtuoso Netsoft</h4>
						  </div>
						    </div>
						 </div>
						 
						</section>
				</div>
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<div class="digital-title">
									<h1>
            <span class="orange">Hello,</span> Lets Talk about </br>
            the details.
            </h1>
								</div>
							</div>
							<div id="" class="modal-body">
								<section class="row">
									<section class="col-md-9 no_pad">
										<div id="inquiry__form">
											<%@include file="contactForm.jsp" %>
										</div>
							</div>
						</div>
						</section>
						<section class="col-md-3 no_pad">
							<section class="part-text" style="margin-top: 5em;">
								<img src="images/img_3.svg">
							</section>
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
			let animation4 = bodymovin.loadAnimation({
		        container: document.getElementById('animation_services'),
		        renderer: 'svg',
		        loop: true,
		        autoplay: true,
		        path: 'js/animated/animate_services.json'
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
		<script type="text/javascript">
			function checkEmailValidity(){
			    	
			    	var email=document.getElementById('fa_email').value;
			    	//alert(email);
			      	var email_filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			      	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
					  {
			      	//	alert("xhjsxvhx");
			      	  document.getElementById('email_error').style.display='none';
					  document.getElementById('fa_submit_button').style.display='block';
					  }else{
						//  alert("xhjsxvhx222222222222");
						  document.getElementById('fa_submit_button').style.display='none';
						  document.getElementById('email_error').style.display='block';
					  }
			
			    }
			    function checkPhoneValidity(){
			    	var phn=document.getElementById('fa_phn').value;
			    	var phoneno = /^\d{10}$/;      	
			    	if (phn.match(phoneno))
					  {
			    		 document.getElementById('phn_error').style.display='none';
			   		  document.getElementById('fa_submit_button').style.display='block';
			   		  
					  }else{
						  document.getElementById('fa_submit_button').style.display='none';
						  document.getElementById('phn_error').style.display='block';
					  
					  }
			
			    }
		</script>
	</body>

	</html>