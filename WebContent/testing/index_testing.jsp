<%@page import="dao.ApiController"%>
<%@page import="beans.homepage_photos"%>
<%@page import="java.util.ArrayList"%>
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

	<body class="has-overflow-hidden allowHover" id="homepage" style="background-color: #222226;font-family: 'Poppins', sans-serif;">
		<div id="site-wrapper">
			<header>
						<section class="container-fluid">
				<section class="row">
					<nav class="menu" role="navigation">
						<section class="col-md-5 no_pad">
							<section class="left-menu">
								<div class="tab-content">
									<div id="Work" class="tab-pane fade in active"> <img src="images/work_thumb.png" /> </div>
									<div id="Services" class="tab-pane fade"> <img src="images/service_thumb.png" /> </div>
									<div id="About" class="tab-pane fade"> <img src="images/aboutus_thumb.png" /> </div>
								</div>
							</section>
						</section>
						<section class="col-md-1"> </section>
						<section class="col-md-5">
							<section class="right-menu wow fadeInRight">
								<ul class="nav nav-tabs">
									<li class="active"> <a data-target="#Work" target="_blank" data-hover="tab" href="portfolio"><span class="dotted animated"></span>Work</a> </li>
									<li> <a data-target="#Services" target="_blank" data-hover="tab" href="services"><span class="dotted"></span>Services</a> </li>
									<li> <a data-target="#About" target="_blank" data-hover="tab" href="aboutus"><span class="dotted"></span>About</a> </li>
									<li class="contact btn-5"> <a class="arrow view-all reveal--up revealed" href="#" data-toggle="modal" data-target="#myModal" data-reveal="up">Contact<span></span> </a> </li>
								</ul>
								<section class="ad_info">
									<div class="menu-social-icons">
										<ul class="social-icons">
											<li>
												<a href="" class="social-icon"> <i class="fa fa-linkedin"></i></a>
											</li>
											<li>
												<a href="" class="social-icon"> <i class="fa fa-twitter"></i></a>
											</li>
											<li>
												<a href="" class="social-icon"> <i class="fa fa-facebook"></i></a>
											</li>
											<li>
												<a href="" class="social-icon"> <i class="fa fa-youtube"></i></a>
											</li>
										</ul>
									</div>
									<section class="row">
										<section class="col-md-6 col-xs-12">
											<section class="sett"> <span class="orange">ADDRESS:</span>
												<p>Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101</p>
											</section>
										</section>
										<section class="col-md-6 col-xs-12">
											<section class="sett"> <span class="orange">CALL US: </span>
												<p>+91-8288815694</p>
											</section>
										</section>
										<section class="col-md-12  col-xs-12">
											<section class="sett"> <span class="orange">MAIL US: </span>
												<p>Info@virtuosonetsoft.com</p>
											</section>
										</section>
									</section>
								</section>
								<canvas id="canvas" width="1536" height="674" style="opacity:0;"></canvas>
								<div class="bg" style="background-image: url(/static/img/texture.18018906d866.jpg);"></div>
							</section>
						</section>
						<section class="col-md-1"> </section>
					</nav>
				</section>
			</section>
				<a href="#" id="bordered" class="nav-toggle"> <span></span>
					<div class="vertical-text">Menu</div>
				</a>
				
					<div class="logo">
						<h1 style="margin-bottom:0px;"> <a href="index"> <img src="images/logo.svg"> </a> </h1> </div>
				
			</header>
			<main role="main">
				<div id="barba-wrapper" aria-live="polite">
					<div class="barba-container">
						<div class="homepage">
							<div class="main-area">
								<div class="row">
									<div class="col-md-6">
										<div class="digital-title wow fadeInLeft">
											<h1>
										        <span class="orange">Digital Marketing </span>is a tool,<br>
										        <span class="orange">Creativity</span> is a Mindset.
										    </h1>
											<p>With the fusion of digital tools and creativity
												<br> we solve your problems.</p> <a href="services.jsp" target="_blank" class="carrow cta"> Know More <span></span> </a> </div>
									</div>
									<div class="col-md-6">
										<div class="component wow fadeInRight">
											<div id="animate1"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<section class="portfolio-area">
							
								<div class="row  wow fadeInDown">
									<div class="col-md-6 col-xs-12 no_pad">
										<div class="p-info">
											<p>We are virtuoso in webpage and app developments. And concepts of SMM, SEO, ORM, UI, UX, tracking and content marketing are a fuel to these creations.</p>
										</div>
									</div>
									<div class="col-md-3 col-xs-12 no_pad">
										<a href="portfolio" target="_blank">
											<div class="portfolio-img port"> <img src="images/a1.png" />
												<div class="box-content">
													<h3 class="title">Helto&nbsp;-</h3> <span class="post">Evolving Healthcare System</span> <span class="post">Branding & Identity</span> </div>
											</div>
										</a>
									</div>
									<div class="col-md-3 col-xs-12 no_pad">
										<a href="portfolio" target="_blank">
											<div class="portfolio-img port"> <img src="images/a5.png" />
												<div class="box-content">
													<h3 class="title">Helto&nbsp;-</h3> <span class="post">Evolving Healthcare System</span> <span class="post">Branding & Identity</span> </div>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-xs-12 no_pad">
										<a href="portfolio" target="_blank">
											<div class="portfolio-img port"> <img src="images/sms-1.jpg" />
												<div class="box-content">
													<h3 class="title">Helto&nbsp;-</h3> <span class="post">Evolving Healthcare System</span> <span class="post">Branding & Identity</span> </div>
											</div>
										</a>
									</div>
									<div class="col-md-3 col-xs-12 no_pad">
										<a href="portfolio" target="_blank">
											<div class="portfolio-img port"> <img src="images/a3.png" />
												<div class="box-content">
													<h3 class="title">Helto&nbsp;-</h3> <span class="post">Evolving Healthcare System</span> <span class="post">Branding & Identity</span> </div>
											</div>
										</a>
									</div>
									<div class="col-md-5 col-xs-12 no_pad">
										<a href="portfolio" target="_blank">
											<div class="portfolio-img port"> <img src="images/tng-1.jpg" />
												<div class="box-content">
													<h3 class="title">Helto&nbsp;-</h3> <span class="post">Evolving Healthcare System</span> <span class="post">Branding & Identity</span> </div>
											</div>
										</a>
									</div>
								</div>
								<div class="viewall">
									<div class="row">
										<div class="col-md-6 no_pad">
											<div class="p-left wow fadeInLeft">
												<p>We seek to contribute to our clients� success. Here is the fruit of our work in action.</p>
											</div>
										</div>
										<div class="col-md-6 no_pad">
											<div class="p-right wow fadeInRight"> <a href="portfolio" class="carrow cta"> View all work <span></span> 
                </a> </div>
										</div>
									</div>
								</div>
							
						</section>
						<section class="journey">
							<div class="container-fluid">
								<div class="col-md-8 col-xs-12">
										<div class="j-left wow fadeInLeft">
											<h1>What will make you <br>
                                            <strong>work with us?</strong></h1>
											<p>With years of experience in assisting our clients with digital expansion, when we integrated thoughts with creativity that gave us remarkable innovations. Virtuoso Netsoft Digital Market Agency as a IT service corporation has always invited new ideas and believed in the journey of transformation, which has proved to be an edge for us and our clientele. After working on more than 120+ projects across the globe successfully, we are now more assertive on our key to victories that has always been rigorous research work, innovative analysis, and smooth open communication. If you endeavor to wear a crown on digital aspects Virtuoso Netsoft is the right realm for you.</p>
											<div class="feature">
												<div class="row">
													<div class="col-md-4 col-xs-12 no_pad">
														<div class="feat-set">
															<div class="row">
																<div class="col-xs-4 no_pad">
																	<div class="feat-icon"> <img src="images/MaskGroup2.svg" /> </div>
																</div>
																<div class="col-xs-8">
																	<div class="feat-text">
																		<p>In-depth
																			<br> Research</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-xs-12 no_pad">
														<div class="feat-set">
															<div class="row">
																<div class="col-xs-4 no_pad">
																	<div class="feat-icon"> <img src="images/MaskGroup3.svg" /> </div>
																</div>
																<div class="col-xs-8">
																	<div class="feat-text">
																		<p>Exclusive
																			<br> Approach</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-xs-12 no_pad">
														<div class="feat-set">
															<div class="row">
																<div class="col-xs-4 no_pad">
																	<div class="feat-icon"> <img src="images/MaskGroup4.svg" /> </div>
																</div>
																<div class="col-xs-8">
																	<div class="feat-text">
																		<p>Customized
																			<br> Solutions</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-12">
										<div class="j-img wow fadeInRight"> <img src="images/img_2.svg" /> </div>
									</div>
								
								<div class="experience">
									<div class="row">
										<div class="col-sm-3 col-xs-12">
											<div class="exp-set wow fadeInLeft">
												<div class="row">
													<div class="col-xs-3 no_pad">
														<div class="exp-icon"> <img src="images/MaskGroup5.svg" /> </div>
													</div>
													<div class="col-xs-9">
														<div class="exp-text">
															<p><span class="red">10+</span>
																<br> Years of Experiences </p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="exp-set wow fadeInLeft">
												<div class="row">
													<div class="col-xs-3 no_pad">
														<div class="exp-icon"> <img src="images/MaskGroup6.svg" /> </div>
													</div>
													<div class="col-xs-9">
														<div class="exp-text">
															<p><span class="red">4+</span>
																<br> Countries Served</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="exp-set wow fadeInRight">
												<div class="row">
													<div class="col-xs-3 no_pad">
														<div class="exp-icon"> <img src="images/MaskGroup8.svg" /> </div>
													</div>
													<div class="col-xs-9">
														<div class="exp-text">
															<p><span class="red">150+</span>
																<br> Employees</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="exp-set wow fadeInRight">
												<div class="row">
													<div class="col-xs-3 no_pad">
														<section class="exp-icon"> <img src="images/MaskGroup7.svg" /> </section>
													</div>
													<div class="col-xs-9">
														<div class="exp-text">
															<p><span class="red">100+</span>
																<br> Projects delivered</p>
														</div>
													</div>
												</div>
											</div>
										</div>
						</div>
						</div>
						</div>
						</section>
						<section class="specialize">
							<section class="container-fluid">
								
									<section class="col-md-7 col-xs-12">
										<section class="s-left wow fadeInLeft"> <span>WE SPECIALIZE IN</span>
											<section class="capabilities__list"> <a href="brandingandidentity" target="_blank" data-target="#Branding" data-toggle="collapse" data-capability="1" data-reveal="up"> Branding and Identity <span></span></a> <a href="digitalmarketing" data-target="#Digital" data-toggle="collapse" data-capability="2" data-reveal="up"> Digital Marketing <span></span></a> <a href="webanddevelopment.jsp" data-target="#Web" data-toggle="collapse" data-capability="3" data-reveal="up"> Web and App Development <span></span></a> <a href="orm" data-target="#Online" data-toggle="collapse" data-capability="4" data-reveal="up"> Online Reputation Management <span></span></a> </section>
										</section>
									</section>
									<section class="col-md-5 col-xs-12">
										<section class="s-img wow fadeInRight">
											<div class="tab-content">
												<div id="Branding" class="tab-pane active"> <img src="images/illust_1.svg" />
													<p>Embellishing your brand with refreshingly creative styling is our way to visualize your professionalism</p>
												</div>
												<div id="Digital" class="tab-pane"> <img src="images/illust_1.svg" />
													<p>It�s easy to setup a business but promotion of a trade is not a piece of cake, thatÃ¢ÂÂs why VNSDMM is offering you complete Digital Media Marketing Services to make your brand reachable to potential clients.</p>
												</div>
												<div id="Web" class="tab-pane"> <img src="images/illust_1.svg" />
													<p>Embellishing your brand with refreshingly creative styling is our way to visualize your professionalism</p>
												</div>
												<div id="Online" class="tab-pane"> <img src="images/illust_1.svg" />
													<p>Embellishing your brand with refreshingly creative styling is our way to visualize your professionalism</p>
												</div>
											</div>
										</section>
									</section>
								
							</section>
						</section>
						<section class="review">
							
								<section class="row wow fadeInLeft">
									<section class="col-md-8 col-xs-12">
										<h1>Client's Review</h1>
										<p>See what our clients says about us.</p>
									</section>
									<section class="col-md-4 col-xs-12"> </section>
								</section>
								<section class="testimonial wow fadeInDown">
									<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
										<!-- Wrapper for slides -->
										<div class="carousel-inner">
											<div class="item active">
												<div class="row" style="padding: 20px">
													<div class="row">
														<div class="col-md-4"> <img src="images/ss.png" class="img-responsive"> </div>
														<div class="col-md-8">
															<h4>"We partnered with RNO1 to transform our branding from what it was during our first few months as a company, to what it is today (Seed to Series A). They were able to articulate our brand requirements into a perfect vision."</h4>
															<p>Mr. Tripathi | <span class="grey">Manager</span></p>
															</p>
														</div>
													</div>
												</div>
											</div>
											<div class="item">
												<div class="row" style="padding: 20px">
													<div class="row">
														<div class="col-md-4"> <img src="images/ss.png" class="img-responsive"> </div>
														<div class="col-md-8">
															<h4>"We partnered with RNO1 to transform our branding from what it was during our first few months as a company, to what it is today (Seed to Series A). They were able to articulate our brand requirements into a perfect vision."</h4>
															<p> Mr. Tripathi | <span class="grey">Manager</span></p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="controls testimonial_control pull-right">
										<a class="left fa fa-long-arrow-left testimonial_btn" href="#carousel-example-generic" data-slide="prev"></a>
										<a class="right fa fa-long-arrow-right testimonial_btn" href="#carousel-example-generic" data-slide="next"></a>
									</div>
								</section>
								<section class="get-call  wow fadeInDown">
									<section class="contact-set">
										<section class="col-md-6 col-xs-12">
												<section class="set-img"> <img src="images/audit.png" /> </section>
											</section>
											<section class="col-md-6 col-xs-12">
												<section class="get-text">
													<h1 style="color:#323234;">Get a Free Audit</h1>
													<div class="row">
														<div class="col-md-12 no_pad">
															<div class="form-group">
																<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="" data-error="Please enter your name"> </div>
														</div>
														<div class="col-md-12 no_pad">
															<div class="form-group">
																<input type="text" placeholder="Email" id="email" class="form-control" name="email" required="" data-error="Please enter your email"> </div>
														</div>
														<div class="col-md-12 no_pad">
															<div class="form-group">
																<input type="text" placeholder="Phone Number" id="phn" class="form-control" name="phn" required="" data-error="Please enter your Phone Number"> </div>
														</div>
														<div class="col-md-12 no_pad" style="width:100%;">
															<div class="submit-button text-left">
																<div class="form-group">
																	<button class="contact btn-5"> <a class="arrow view-all reveal--up revealed" href="#" data-reveal="up">Send Now<span></span> </a> </button>
																	<div id="msgSubmit" class="h3 text-center hidden"></div>
																	<div class="clearfix"></div>
																</div>
															</div>
														</div>
													</div>
												</section>
											</section>
										
									</section>
									<section class="row">
										<section class="col-md-1 col-xs-4 no_pad">
											<section class="get-img"> <img src="images/phone.PNG" /> </section>
										</section>
										<section class="col-md-6 col-xs-8">
											<section class="get-text">
												<h2 class="grey">Get free Audit for your brand</h2> </section>
										</section>
										<section class="col-md-5 col-xs-12">
											<section class="get-text">
												<h2>Call :<span class="red"> +91-8288815694</span></h2> </section>
										</section>
									</section>
								</section>
								<section class="connect wow fadeInDown">
									<section class="row">
										<section class="connect-icon wow fadeInUp"> <img src="images/connect_img.svg" /> </section>
										<h1>Connect with us on our social media</h1>
										<section class="connect-content wow fadeInDown">
										<%
										ApiController apiController2=new ApiController();
										ArrayList<homepage_photos> hmp=apiController2.fetchHomepagePhotos();
										for(int i=0;i<hmp.size();i++){
										%>
											<section class="col-md-4 col-xs-12">
												<section class="connect-img"> <img src="<%=hmp.get(i).getFilename()%>" class="image" />
													<div class="overlay">
														<a href="<%=hmp.get(i).getLinks()%>" class="icon" title="User Profile"> <i class="fa fa-link"></i> </a>
													</div>
												</section>
											</section>
											<%} %>
										
										</section>
									</section>
								</section>
							
						</section>
						
						
						<section class="footer  wow fadeInDown">
						
								<section class="partnership  wow fadeInDown" id="btn">
									<section class="row">
										<section class="col-md-6">
											<section class="part-text">
												<div id="animate2"></div>
											</section>
										</section>
										<section class="col-md-6">
											<section class="part-right">
												<h1 class="red">Let's get started </h1>
												<p>Your Idea to Reality</p>
												<section class="p-right"> <a href="#" class="carrow cta" data-toggle="modal" data-target="#myModal"> START A PARTNERSHIP <span></span> </a> </section>
											</section>
										</section>
									</section>
								</section>
							
							<section class="container-fluid">
								<section class="footer-area">
									<section class="row">
										<section class="col-md-7 col-xs-12">
											<section class="foot-text"> <img src="images/logo.svg" class="f-img"> <span style="margin-bottom: 2em;">We boost your business from nowhere to everywhere .</span>
												<p class="orange">We are the architects of influential digital media marketing strategies
													<br> which give us a legitimate way to connect with potential customers online.</p>
											</section>
										</section>
										<section class="col-md-3 col-xs-12">
											<section class="foot-text">
												<p> <span>ADDRESS:</span> Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101 </p>
												<p> <span> MAIL US:</span> +91-8288815694</p>
												<p><span>CALL US:</span> +91-8288815694</p>
											</section>
										</section>
										<section class="col-md-2 col-xs-12">
											<section class="foot-text">
												<ul>
													<li class="set">QUICK LINKS:</li>
													<li><a href="portfolio">Our Works</a></li>
													<li><a href="services.jsp">Our Services</a></li>
													<li><a href="#" data-toggle="modal" data-target="#myModal"> Contact Us</a></li>
													<li><a href="aboutus">About Us</a></li>
												</ul>
											</section>
										</section>
									</section>
								</section>
							</section>
						</section>
						<section class="footer-links">
							<div id="chat">
								<%@include file="chatBox.jsp" %>
							</div>
							<section class="row">
								<section class="col-md-6 col-xs-12">
									<section class="foot-info">
										<p><a href="https://www.virtuosonetsoft.com/terms_conditions.php">Privacy 
										Policy | Terms & Conditions</a></p>
									</section>
								</section>
								<section class="col-md-6 col-xs-12">
									<section class="foot-social">
										<ul>
											<li>FOLLOW US:</li>
											<li><a href="https://www.facebook.com/VirtuosoNetsoft.VNS">FACEBOOK</a></li>
											<li><a href="https://twitter.com/VNS_Virtuoso">TWITTER</a></li>
											<li><a href="https://www.instagram.com/virtuosonetsoft/">INSTAGRAM</a></li>
											<li><a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/">LINKEDIN</a></li>
										</ul>
									</section>
								</section>
							</section>
						</section>
						</div>
						<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog" id="main-model">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button id="colbtn" type="button" class="close" data-dismiss="modal">&times;</button>
										<section class="digital-title">
											<h1>
                                        <span style="color:#FF7F66;">Hello,</span> Lets Talk about </br>the details.
                                        </h1> </section>
									</div>
									<div id="" class="modal-body">
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
			<!-- QUICK INQUERY FORM -->


<button type="button" class="main-btn-rect popup-btn" data-popup="popup-reg">QUICK ENQUIRY</button>
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

			<script>
			$(document).ready(function() {
				$('.popup-btn').click(function() {
					var popupBlock = $('#' + $(this).data('popup'));
					popupBlock.addClass('active').find('.fade-out').click(function() {
						popupBlock.css('opacity', '0').find('.popup-content').css('margin-top', '350px');
						setTimeout(function() {
							$('.popup').removeClass('active');
							popupBlock.css('opacity', '').find('.popup-content').css('margin-top', '');
						}, 600);
					});
				});
			});
			</script>
			<style>
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
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #fff;
    cursor: default;
    background-color: #fff0;
    border: 1px solid #ddd0;
    border-bottom-color: transparent;
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
    width: 100px;
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
				top: 100%;
				width: 100%;
				height: 100%;
				z-index: 10001;
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
				background-color: rgba(0, 0, 0, 0.6) !important;
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
			
			.btn.btn-info.btn-lg {
    /* left: 69em; */
    /* top: 555px; */
    position: fixed;
    cursor: pointer;
    right: 60px;
    /* top: 0; */
    bottom: 28px;
}
			.btn.btn-info.btn-lg {
			    background: #f76c51;
			    border-radius: 60px;
			    border: none;
			    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			    cursor: pointer;
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
    left: 399px;
    top: 112px;
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
			</style>
			<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
			<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
			<!-- Include all compiled plugins (below), or include individual files as needed -->
			<script src="js/bootstrap.js"></script>
			<script src="js/wow.js"></script>
			<script>
			$(window).load(function() {
				setTimeout(function() {
					$('#myNews').modal('show');
				}, 4000);
			});
			</script>
			<script>
			var wow = new WOW({
				boxClass: 'wow', // animated element css class (default is wow)
				animateClass: 'animated', // animation css class (default is animated)
				offset: 0, // distance to the element when triggering the animation (default is 0)
				mobile: true, // trigger animations on mobile devices (default is true)
				live: true, // act on asynchronously loaded content (default is true)
				callback: function(box) {
					// the callback is fired every time an animation is started
					// the argument that is passed in is the DOM node being animated
				},
				scrollContainer: null, // optional scroll container selector, otherwise use window,
				resetAnimation: true, // reset animation on end (default is true)
			});
			wow.init();
			</script>
			<script src="js/bxslider.js"></script>
			<script src="js/TweenMax.min.js"></script>
			<script>
			// Vars
			var wrapper = $("#site-wrapper"),
				menu = $(".menu"),
				menuLinks = $(".menu ul li a"),
				toggle = $(".nav-toggle"),
				toggleIcon = $(".nav-toggle span");

			function toggleThatNav() {
				if(menu.hasClass("show-nav")) {
					if(!Modernizr.csstransforms) {
						menu.removeClass("show-nav");
						toggle.removeClass("show-nav");
						menu.animate({
							right: "-=300"
						}, 500);
						toggle.animate({
							right: "-=300"
						}, 500);
					} else {
						menu.removeClass("show-nav");
						toggle.removeClass("show-nav");
					}
				} else {
					if(!Modernizr.csstransforms) {
						menu.addClass("show-nav");
						toggle.addClass("show-nav");
						menu.css("right", "0px");
						toggle.css("right", "330px");
					} else {
						menu.addClass("show-nav");
						toggle.addClass("show-nav");
					}
				}
			}

			function changeToggleClass() {
				toggleIcon.toggleClass("fa-times");
				toggleIcon.toggleClass("fa-bars");
			}
			$(function() {
				toggle.on("click", function(e) {
					e.stopPropagation();
					e.preventDefault();
					toggleThatNav();
					changeToggleClass();
				});
				// Keyboard Esc event support
				$(document).keyup(function(e) {
					if(e.keyCode == 27) {
						if(menu.hasClass("show-nav")) {
							if(!Modernizr.csstransforms) {
								menu.removeClass("show-nav");
								toggle.removeClass("show-nav");
								menu.css("right", "-300px");
								toggle.css("right", "30px");
								changeToggleClass();
							} else {
								menu.removeClass("show-nav");
								toggle.removeClass("show-nav");
								changeToggleClass();
							}
						}
					}
				});
			});
			</script>
			<script src="dist/cursor.js"></script>
			<script>
			var cursorx = new cursor({
				type: 1,
				color: '#FF7F66',
			})

			function mouseenter() {
				cursorx.hidden()
			}

			function mouseleave() {
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
			<script>
			$(document).scroll(function() {
				if($(window).scrollTop() > 200) {
					$("#bordered").css("border-left", "transparent");
				} else if($(window).scrollTop() < 200) {
					$("#bordered").css("border-left", "1px solid #323234");
				}
			});
			document.querySelector("#bordered").addEventListener("click", function() {
				this.classList.toggle("active");
			});
			</script>
			<script>
			$(document).ready(function() {
				$('.nav-tabs > li > a').hover(function() {
					$(this).tab('show');
				});
			})
			$(document).ready(function() {
				$('.capabilities__list a').hover(function() {
					$(this).tab('show');
				});
			})
			</script>
			
			<script>
			let animation1 = bodymovin.loadAnimation({
				container: document.getElementById('animate1'),
				renderer: 'svg',
				loop: true,
				autoplay: true,
				path: 'js/animated/animated1.json'
			});
			let animation2 = bodymovin.loadAnimation({
				container: document.getElementById('animate2'),
				renderer: 'svg',
				loop: true,
				autoplay: false,
				path: 'js/animated/animated2.json'
			});
			let btn = document.getElementById('btn');
			btn.addEventListener('mouseenter', () => {
				animation2.play();
			});
			btn.addEventListener('mouseleave', () => {
				animation2.stop();
			});
			</script>
			<script>
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
  	//alert(name+"="+email+"="+phn+"="+company+"="+message);
  	
  	if(email.length==0 || name.length==0 || phn.length==0 || company.length==0 || message.length==0){
      	//alert("please fill all the feilds");
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
                 document.getElementById("send").style.display='none';
                 document.getElementById("sendbtn").style.display='none';	
                 document.getElementById("thankyoudiv").style.display='block';
                 setTimeout(thankyou, 3000);
                 $this.button('reset');
                 document.getElementById('qe_name').value="";
               	document.getElementById('qe_email').value="";
               	document.getElementById('qe_phone').value="";
               	document.getElementById('qe_company').value="";
               	document.getElementById('qe_message').value="";
                  }
                  
                  });
                  
                  });
  		  }else{
  			  //alert("please enter a valid email or phone number");
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
    
    <script>
  
    $(window).load(function() {
    	$(".loader").delay(2000).fadeOut("slow");
      $("#overlayer").delay(2000).fadeOut("slow");
    })
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
	</body>

	</html>