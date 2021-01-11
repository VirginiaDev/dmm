<%@page import="beans.homepage_photos" %>
	<%@page import="java.util.ArrayList" %>
		<%@page import="dao.ApiController" %>
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
					<title>About Us| About Virtuoso Netsoft and its Journey so far |</title>
					<meta name="description" content="We are the digital media marketing prodigies with an ocean of creativity and infinite ideas. With hard work, dedication, and consistency, we will sustain your brand and walk with you to see a bright future together with robust commitments.">
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
					<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
					<link rel="stylesheet" href="css/animate.css">
					<link rel="stylesheet" href="css/bootstrap.css">
					<link rel="stylesheet" href="dist/cursor.css">
					<link rel="stylesheet" href="css/nav-style.css">
					<link rel="stylesheet" href="css/style.css">
					<link rel="stylesheet" href="css/chatbot.css">
					<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
					<script src="js/player/lottie.js"></script>
					<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
					<style>
						p.validation_errors {color: red;}
					</style>
				</head>
				<%@include file="quick-in.jsp" %>

					<body class="has-overflow-hidden allowHover" id="homepage" style="">
						<!-- Google Tag Manager (noscript) -->
						<noscript>
							<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M2WQNDK" height="0" width="0" style="display:none;visibility:hidden"></iframe>
						</noscript>
						<!-- End Google Tag Manager (noscript) -->
						<div id="site-wrapper">
							<header style="background-color:#000;">
								<%@include file="sidebar.jsp" %>
							</header>
							<main role="main" class="about-m">
								<div id="barba-wrapper" aria-live="polite">
									<div class="barba-container">
										<div class="homepage">
											<div class="container">
												<div class="main-area">
													<div class="row">
														<section class="col-md-6">
															<section class="digital-title wow fadeInLeft">
																<h1 style="font-size: 55px;"><span class="orange">Who we Are</span></h1>
															</section>
														</section>
														<div class="col-md-6"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<section class="abt-area">
										<section class="container">
											<img src="images/illust_1.png" class="abt-left" />
											<section class="aboutus">
												<section class="row">
													<section class="col-md-12">
														<section class="j-left wow fadeInLeft">
															<h3>We Are a Dynamic Team of Professional People of Digital Marketing</h3>
															<p>VNS DMM is a social media agency built on the essence of cooperation, integration and knowledge sharing. Our experts drive the business with analytical research which enables dynamic solutions. With hard work, dedication, and consistency, we will sustain your brand and walk with you to see a brilliant future together with stronger commitments.</p>
															<p>With the support of our tough management team we began with the craving of expansion and with an open field to explore we provide our services in every area of corporate and cater to every category of projects. We now provide business across the globe and work with various industries. We know what it takes to achieve results online and our client’s success is also a measure of our own performance.</p>
															<section class="feature">
																<section class="row">
																	<section class="col-xs-4 no_pad">
																		<section class="feat-set">
																			<section class="row">
																				<section class="col-xs-3 no_pad">
																					<section class="feat-icon">
																						<img src="images/MaskGroup2.svg" />
																					</section>
																				</section>
																				<section class="col-xs-9 no_pad">
																					<section class="feat-text">
																						<p>In-depth
																							<br>Research</p>
																					</section>
																				</section>
																			</section>
																		</section>
																	</section>
																	<section class="col-xs-4 no_pad">
																		<section class="feat-set">
																			<section class="row">
																				<section class="col-xs-3 no_pad">
																					<section class="feat-icon">
																						<img src="images/MaskGroup3.svg" />
																					</section>
																				</section>
																				<section class="col-xs-9 no_pad">
																					<section class="feat-text">
																						<p>Exclusive
																							<br>Approach</p>
																					</section>
																				</section>
																			</section>
																		</section>
																	</section>
																	<section class="col-xs-4 no_pad">
																		<section class="feat-set">
																			<section class="row">
																				<section class="col-xs-3 no_pad">
																					<section class="feat-icon">
																						<img src="images/MaskGroup4.svg" />
																					</section>
																				</section>
																				<section class="col-xs-9 no_pad">
																					<section class="feat-text">
																						<p>Customized
																							<br>Solutions</p>
																					</section>
																				</section>
																			</section>
																		</section>
																	</section>
																</section>
															</section>
														</section>
													</section>
												</section>
												<section class="experience">
													<section class="row">
														<section class="col-md-3 col-xs-12">
															<section class="exp-set wow fadeInLeft">
																<section class="row">
																	<section class="col-md-3 col-xs-4 no_pad">
																		<section class="exp-icon">
																			<img src="images/MaskGroup5.svg" />
																		</section>
																	</section>
																	<section class="col-md-9 col-xs-8">
																		<section class="exp-text">
																			<p><span class="red">10+</span>
																				<br>Years of Experiences</p>
																		</section>
																	</section>
																</section>
															</section>
														</section>
														<section class="col-md-3 col-xs-12">
															<section class="exp-set wow fadeInLeft">
																<section class="row">
																	<section class="col-md-3 col-xs-4 no_pad">
																		<section class="exp-icon">
																			<img src="images/MaskGroup6.svg" />
																		</section>
																	</section>
																	<section class="col-md-9 col-xs-8">
																		<section class="exp-text">
																			<p><span class="red">4+</span>
																				<br>Countries Served</p>
																		</section>
																	</section>
																</section>
															</section>
														</section>
														<section class="col-md-3 col-xs-12">
															<section class="exp-set wow fadeInRight">
																<section class="row">
																	<section class="col-md-3 col-xs-4 no_pad">
																		<section class="exp-icon">
																			<img src="images/MaskGroup8.svg" />
																		</section>
																	</section>
																	<section class="col-md-9 col-xs-8">
																		<section class="exp-text">
																			<p><span class="red">150+</span>
																				<br>Employees</p>
																		</section>
																	</section>
																</section>
															</section>
														</section>
														<section class="col-md-3 col-xs-12">
															<section class="exp-set wow fadeInRight">
																<section class="row">
																	<section class="col-md-3 col-xs-4 no_pad">
																		<section class="exp-icon">
																			<img src="images/MaskGroup7.svg" />
																		</section>
																	</section>
																	<section class="col-md-9 col-xs-8">
																		<section class="exp-text">
																			<p><span class="red">100+</span>
																				<br>Projects delivered</p>
																		</section>
																	</section>
																</section>
															</section>
														</section>
													</section>
												</section>
												<section class="abt-team">
													<section class="row">
														<section class="col-md-6">
															<section class="j-left wow fadeInLeft">
																<img src="images/left.PNG" />
															</section>
														</section>
														<section class="col-md-6">
															<section class="j-right wow fadeInLeft">
																<h2 class="join">Join the team that's<br> redefining India's creative<br> culture</h2>
																<div class="submit-button text-left">
																	<div class="form-group">
																		<button class="contact btn-5 zot" style="margin-top: 3em !important;padding: 1.5em 1em !important;">
<a class="arrow view-all reveal--up revealed" href="#" data-toggle="modal" data-target="#myModal" data-reveal="up">JOIN NOW<span></span>

		</a>
																		</button>
																		<div id="msgSubmit" class="h3 text-center hidden"></div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</section>
														</section>
													</section>
												</section>
											</section>
										</section>
									</section>
									<section class="description-area">
										<section class="container">
											<section class="row">
												<section class="col-md-7">
													<section class="desc-title wow fadeInLeft">
														<h1>Brains Behind VNS DMM</h1>
														<p>We are the digital media marketing prodigies with an ocean of creativity and infinite ideas. Outfitted with a plethora of talent, our crew of committed and creative experts in digital marketing is the strength of our clients. We maneuver every possible technology to meet the best outcomes.</p>
														<p>Our office is not only a workplace but an extended family where our employees enjoy the company of each other, which is exclusively achieved by our devotion to positivity and respect as our ethics.</p>
													</section>
												</section>
												<section class="col-md-5">
													<section class="desc-title wow fadeInRight">
														<img src="images/brain.png" />
													</section>
												</section>
											</section>
										</section>
									</section>
									<section class="review">
										<section class="container">
											<section class="row wow fadeInLeft">
												<section class="col-md-8 col-xs-12">
													<h1>Client's Review</h1>
													<p>See what our clients says about us.</p>
												</section>
												<section class="col-md-4 col-xs-12"></section>
											</section>
											<section class="testimonial wow fadeInDown">
												<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
													<!-- Wrapper for slides -->
													<div class="carousel-inner">
														<div class="item active">
															<div class="row" style="padding: 20px">
																<div class="row">
																	<div class="col-md-4">
																		<img src="images/ss.png" class="img-responsive">
																	</div>
																	<div class="col-md-8">
																		<h4>"We partnered with RNO1 to transform our branding from what it was during our first few months as a company, to what it is today (Seed to Series A). They were able to articulate our brand requirements into a perfect vision."</h4>
																		<p>Mr. Tripathi | <span class="grey">Manager</span>
																		</p>
																		</p>
																	</div>
																</div>
															</div>
														</div>
														<div class="item">
															<div class="row" style="padding: 20px">
																<div class="row">
																	<div class="col-md-4">
																		<img src="images/ss.png" class="img-responsive">
																	</div>
																	<div class="col-md-8">
																		<h4>"We partnered with RNO1 to transform our branding from what it was during our first few months as a company, to what it is today (Seed to Series A). They were able to articulate our brand requirements into a perfect vision."</h4>
																		<p>Mr. Tripathi | <span class="grey">Manager</span>
																		</p>
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
													<section class="row">
														<section class="col-md-6 col-xs-12">
															<section class="set-img">
																<img src="images/audit.png" />
															</section>
														</section>
														<section class="col-md-5 col-xs-12">
															<section class="get-text">
																<form id="free_audit_details" action="save_free_audit_details.jsp?source_page=other&pageurl=aboutus" method="post">
																	<h1 style="color:#323234;">Get a Free Audit</h1>
																	<div class="row">
																		<div class="col-md-12 no_pad">
																			<div class="form-group">
																				<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="" data-error="Please enter your name">
																			</div>
																		</div>
																		<div class="col-md-12 no_pad">
																			<div class="form-group">
																				<input type="text" placeholder="Email" id="fa_email" class="form-control" name="email" required="" data-error="Please enter your email" onkeyup="checkEmailValidity()">
																			</div>
																			<p id="email_error" class="validation_errors" style="display:none">Enter a valid email address</p>
																		</div>
																		<div class="col-md-12 no_pad">
																			<div class="form-group">
																				<input type="text" placeholder="Phone Number" id="fa_phn" class="form-control" name="phn" required="" data-error="Please enter your Phone Number" onkeyup="checkPhoneValidity()">
																			</div>
																			<p id="phn_error" class="validation_errors" style="display:none">Enter a valid Phone Number</p>
																		</div>
																		<div class="col-md-12 no_pad">
																			<div class="form-group">
																				<select style="color:#000;" class="form-control" name="service_selected" id="services_option" required="" data-error="Please select an option">
																					<option class="form-control" value="" selected>Select an option</option>
																					<option class="form-control" value="digitalmarketing">Digital Marketing</option>
																					<option class="form-control" value="brandingandidentity">Branding and identity</option>
																					<option class="form-control" value="orm">ORM</option>
																					<option class="form-control" value="webanddevelopment">Web and Development</option>
																				</select>
																			</div>
																		</div>
																		<div class="col-md-12 no_pad">
																			<div class="form-group">
																				<input type="text" placeholder="Message" id="msg" class="form-control" name="msg" required="" data-error="Please enter your message">
																			</div>
																		</div>
																		<div class="col-md-12 no_pad" style="width:100%;">
																			<div class="submit-button text-left">
																				<div class="form-group">
																					<button class="contact btn-5" type="submit" id="fa_submit_button" style="display:block"> <a class="arrow view-all reveal--up revealed">Send Now<span></span> </a>
																					</button>
																					<div id="msgSubmit" class="h3 text-center hidden"></div>
																					<div class="clearfix"></div>
																				</div>
																			</div>
																		</div>
																	</div>
															</section>
														</section>
													</section>
												</section>
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
											</section>
											<section class="connect wow fadeInDown">
												<section class="row">
													<section class="connect-icon wow fadeInUp">
														<img src="images/connect_img.svg" />
													</section>
													<h1>Connect with us on our social media</h1>
													<section class="connect-content wow fadeInDown">
														<% ApiController apiController2=new ApiController(); ArrayList<homepage_photos>hmp=apiController2.fetchHomepagePhotos(); for(int i=0;i
															<hmp.size();i++){ %>
																<section class="col-md-4 col-xs-12">
																	<section class="connect-img">
																		<img src="<%=hmp.get(i).getFilename()%>" class="image" />
																		<div class="overlay">
																			<a href="<%=hmp.get(i).getLinks()%>" class="icon" title="User Profile"> <i class="fa fa-link"></i> 
																			</a>
																		</div>
																	</section>
																</section>
																<%} %>
													</section>
												</section>
											</section>
										</section>
									</section>
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
											<div id="" class="modal-body">
												<section class="row">
													<section class="col-md-9 no_pad">
														<div id="inquiry__form">
															<%@include file="contactForm.jsp" %>
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
						<style>
							.ml-0{margin-left:33px;margin-right:0px}.menu ul li:first-child{margin-top:0em;border:0;box-shadow:none}.nav-tabs>li{float:none}.nav-tabs>li.active>a,.nav-tabs>li.active>a:focus,.nav-tabs>li.active>a:hover{color:#fff;cursor:default;background-color:#fff0;border:1px solid #ddd0;border-bottom-color:transparent}.logo{padding-top:0px !important}.popup-btn{position:fixed!important;top:46%;left:92%;transform:translate(-50%,-50%);transform:rotate(-90deg);width:230px}#sendbtn{width:135px}.main-btn-rect,.main-btn-circle{position:relative;margin:0;font-family:'Roboto',sans-serif;color:#FFFFF0;background-color:rgb(252,79,79);text-transform:uppercase;font-size:20px;letter-spacing:1px;outline:none;cursor:pointer;z-index:100}.main-btn-rect{padding:12px 0px;line-height:20px;border-radius:5px;border:0px solid;width:172px}.main-btn-rect:before,.main-btn-rect:after{position:absolute;content:'';top:0;width:0%;height:100%;background-color:rgba(255, 255, 240, 0.2);-webkit-transition:width 0.3s;-o-transition:width 0.3s;transition:width 0.3s}.main-btn-rect:before{left:0}.main-btn-rect:after{right:0}.main-btn-rect:hover:before,.main-btn-rect:hover:after{width:50%}.main-btn-circle{height:40px;width:40px;-webkit-border-radius:50%;border-radius:100%;line-height:40px;-webkit-transition:box-shadow 0.3s;-o-transition:box-shadow 0.3s;transition:box-shadow 0.3s}.main-btn-circle:hover{-webkit-box-shadow:inset 2px 1px 0px 20px rgba(255, 255, 240, 0.2);-moz-box-shadow:inset 2px 1px 0px 20px rgba(255, 255, 240, 0.2);box-shadow:inset 2px 1px 0px 20px rgba(255,255,240,0.2)}.popup{position:fixed;top:103%;z-index:10001;right:206px;bottom:-31px}.modal-header .close{color:#fff !important}.popup.active{top:0;transition:background-color .6s, opacity .6s}.main-btn-rect,.main-btn-circle{font-size:16px}.popup .main-btn-rect{padding:10px 18px;margin-left:14px;margin-bottom:16px;font-size:14px;margin-top:0px}.min-h #qe_message{height:52px}.flex-row #send{background-color:#f35255;width:100%;font-size:15px;margin-bottom:50px}.popup .popup-content{position:absolute;top:50%;left:85%;max-height:568px;min-width:320px;margin-top:150px;padding:0px;background-color:#0000008c;color:#070000;-webkit-box-shadow:0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);box-shadow:0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);-ms-transform:translateX(-50%) translateY(-50%);transform:translateX(-50%) translateY(-50%);-webkit-transform:translateX(-50%) translateY(-50%);-moz-transform:translateX(-50%) translateY(-50%);-o-transform:translateX(-50%) translateY(-50%);transition:margin .6s;-webkit-transition:margin .6s;-moz-transition:margin .6s;-o-transition:margin .6s}.popup.active .popup-content{margin-top:0px;border-radius:5px !important}.popup-content h6{display:table;font-size:25px;text-align:center;font-family:'Roboto',sans-serif;text-transform:uppercase;font-weight:100;color:#fff;margin-left:17px;margin-top:22px}.form-group{position:relative;width:90%;margin:0px auto}form#send input, form#send textarea{position:relative;margin-bottom:11px;width:100%;height:27px;font-family:'RobotoLight',sans-serif;text-indent:5px;background-color:white;outline:0;border:none;border-bottom:0px solid #070000;-webkit-transition:border 0.6s;-o-transition:border 0.6s;transition:border 0.6s;border-radius:3px;font-size:14px;color:#000}.send-form{margin-top:20px}form#send input:focus, form#send textarea:focus{border-bottom:1px solid rgb(63, 173, 168)}form#send label{position:absolute;top:0;line-height:28px;-webkit-transition:color .5s;-o-transition:color .5s;transition:color .5s}form#send input:focus + label, form#send textarea:focus+label{color:rgb(63, 173, 168)}form#send .txt{line-height:22px;left:2px}#send .main-btn-rect{position:relative;display:block;padding:9px 17px;margin-left:17px;font-size:14px;float:left;margin-bottom:16px}form#send .main-btn-rect i{margin-right:5px}.popup .fade-out{position:absolute;top:4px;right:15px;text-align:center;font-size:18px;border-radius:0px;margin-top:11px}.share-wrap{position:absolute;display:inline-table;top:67%;left:50%;transform:translate(-50%,-50%);padding:15px;text-align:center}.fade.in{opacity:1;background-color:#ff000000 !important;background:darkgray}.share-btn{color:#FFFFF0;padding:7px 25px;text-decoration:none;cursor:pointer;font-weight:100;font-size:14px;font-family:'Lobster',sans-serif;background-color:rgba(63, 173, 168, .8);text-transform:uppercase;border-radius:5px;transition:background-color .5s;-webkit-transition:background-color .5s;-moz-transition:background-color .5s;-o-transition:background-color .5s}.share-btn:hover{color:#FFFFF0;text-decoration:none;background-color:rgba(63,173,168,1.0)}.close{background:#fff;color:#FFF !important;line-height:60px;position:absolute;right:2px;text-align:center;top:-9px;width:60px;text-decoration:none;font-weight:normal;-webkit-border-radius:12px;-moz-border-radius:12px;border-radius:50% !important;-moz-box-shadow:1px 1px 3px #000;-webkit-box-shadow:1px 1px 3px #000;box-shadow:0px 0px 0px #000;border:0px solid #fff !important;opacity:9;font-size:2em}.close:hover{background:#f76c5100}.col-cn .form-group{position:relative;width:100%;margin:0px auto}.chat-area{flex-grow:1;overflow:auto;border-radius:8px;padding:16px;display:flex;flex-direction:column;height:350px}.modal-dialog{position:relative;left:439px;top:72px;width:34%}.col-cm{font-size:17px;padding-left:0px}.title_top{color:#8e8e8e;font-size:18px;text-align:center;font-weight:bold;margin-bottom:8px;margin-top:10px}@media only screen and (max-width: 768px){h1{font-size:25px}h2{font-size:14px}form#send .main-btn-rect{padding:7px 60px;font-size:14px}.popup-btn{padding:7px 60px;font-size:14px}}.no_pad .form-control{display:block;width:100%;height:34px;padding:6px 0px;border-bottom:1px solid #ccc;border-radius:0px;border-right:0px;border-top:0px;border-left:0px}.footer{padding-top:0em}#overlayer{width:100%;height:100%;position:absolute;z-index:1;background:#4a4a4a}.loader{display:inline-block;width:30px;height:30px;position:absolute;z-index:3;border:4px solid #Fff;top:50%;animation:loader 2s infinite ease}.loader-inner{vertical-align:top;display:inline-block;width:100%;background-color:#fff;animation:loader-inner 2s infinite ease-in}.py-md-4 input{color:#000}@keyframes loader{0%{transform:rotate(0deg)}25%{transform:rotate(180deg)}50%{transform:rotate(180deg)}75%{transform:rotate(360deg)}100%{transform:rotate(360deg)}}@keyframes loader-inner{0%{height:0%}25%{height:0%}50%{height:100%}75%{height:100%}100%{height:0%}}@media screen and (min-width: 320px) and (max-width:991px){.modal-dialog{position:relative;left:5px;top:5%;width:85%}.main-card{background:white;color:white;width:100%;height:calc(100% - 32px);margin:16px auto;border-radius:8px;box-shadow:0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0,0,0,0.19);display:flex;flex-direction:column;overflow:hidden}.vns{width:37%;float:left;padding-right:0px}.hi{float:left;width:38%;padding-left:7px}.modal-header .close{position:relative;left:174px;bottom:0px;top:-45px;color:#fff}.col_3{clear:both;height:0px}.wdh input{width:100%}.flex-row #chatform_send{background-color:#f35255;width:100%;font-size:15px;margin-bottom:50px}.col-cn{margin:0 auto;padding-right:0px;padding-left:0px}}
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
						<script type="text/javascript">
							function checkEmailValidity(){
							//alert("working_email function");
							var email=document.getElementById('fa_email').value;
							//alert(email);
							var email_filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
							if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
							{
								//alert("xhjsxvhx");
							document.getElementById('email_error').style.display='none';
							document.getElementById('fa_submit_button').style.display='block';
							}else{
							 //alert("xhjsxvhx222222222222");
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