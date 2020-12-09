<%@page import="beans.homepage_photos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ApiController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-M2WQNDK');</script>
<!-- End Google Tag Manager --> 

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
<style>
p.validation_errors {
    color: red;
}

</style>
</head>
<body class="has-overflow-hidden allowHover" id="homepage" style="">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M2WQNDK"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="site-wrapper">
  <header class="bg-pink">
    <section class="container-fluid">
      <section class="row">
      <nav class="menu" role="navigation">
          <section class="col-md-5 no_pad">
            <section class="left-menu">
			
              <div class="tab-content">
                <div id="Work" class="tab-pane fade in active"> <img src="images/work_thumb.png"/> </div>
                <div id="Services" class="tab-pane fade"> <img src="images/service_thumb.png"/> </div>
                <div id="About" class="tab-pane fade"> <img src="images/aboutus_thumb.png"/> </div>
              </div>
            </section>
          </section>
		   <section class="col-md-1">
		   </section>
          <section class="col-md-5">
            <section class="right-menu wow fadeInRight">
              <ul class="nav nav-tabs">
                               <li class="active"> <a data-target="#Work"  data-hover="tab" href="portfolio"><span class="dotted animated"></span>Work</a> </li>
                <li> <a data-target="#Services"  data-hover="tab" href="services"><span class="dotted"></span>Services</a> </li>
                <li> <a data-target="#About"  data-hover="tab" href="aboutus"><span class="dotted"></span>About</a> </li>
                <li class="contact btn-5"> <a class="arrow view-all reveal--up revealed" href="#" data-toggle="modal" data-target="#myModal" data-reveal="up">Contact<span></span> </a> </li>
              </ul>
              <section class="ad_info">
                <div class="menu-social-icons">
                   <ul class="social-icons">
                    <li><a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/" class="social-icon"> <i class="fa fa-linkedin"></i></a></li>
                    <li><a href="https://twitter.com/VNS_Virtuoso" class="social-icon"> <i class="fa fa-twitter"></i></a></li>
                    <li><a href="https://www.facebook.com/VirtuosoNetsoft.VNS" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://www.instagram.com/virtuosonetsoft/" class="social-icon"> <i class="fa fa-instagram"></i></a></li>
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
		   <section class="col-md-1">
		   </section>
        </nav>
      </section>
    </section>
    <a href="#"  id="bordered" class="nav-toggle"> <span></span>
    <section class="vertical-text">Menu</section>
    </a>
    <section class="container">
      <div class="logo">
        <h1> <a href="index"> <img src="images/logo.svg"> </a> </h1>
      </div>
    </section>
  </header>
   <main role="main">
<div id="barba-wrapper" aria-live="polite">
<div class="barba-container">
<section class="homepage bg-pink">
<section class="container">
<section class="main-area">
<section class="row">
<section class="col-md-6">
<section class="digital-title wow fadeInLeft">
<h1 style="font-size: 55px;"><span>Digital Marketing</span></h1>
<p>It’s easy to setup a business but promotion of a trade is not a piece of cake, that’s why VNSDMM is offering you complete Digital Media Marketing Services to make your brand reachable to potential clients.</p>
</section>
</section>
<section class="col-md-6">
<div id="animation_digital" class="s-img"></div>
</section>



</section>
</section>

</section>
</section>
</div>

<section class="description-area pd-top serv-text">
 <section class="container">
<section class="row">

<section class="col-md-12">
<section class="desc-title wow fadeInDown">
<h1>The epicentre of your digital presence</h1>
<p>VNS DMM plays a vital role in this area of marketing in assisting customers. Venturing out in the corporate reality where millions of businesses already have a solid brand name, a huge clientele, and all vying for the same eyeball, it then becomes a tremendous challenge to reach on top.</p>
<p> Be it business expansion, reaching out to more clients, or social media management, we offer affordable SEO services that are precisely tailored as per your requirements.</p>
</section>
<section class="desc-title wow fadeInDown">
<section class="row">
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>01</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">Low Cost</p>
</section>
</section>
</section>
</section>
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>02</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">Huge ROI</p>
</section>
</section>
</section>
</section>
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>03</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">Precise Targeting</p>
</section>
</section>
</section>
</section>


</section>

<section class="row">
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>04</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">Global Reach</p>
</section>
</section>
</section>
</section>
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>05</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">Greater engagement</p>
</section>
</section>
</section>
</section>
<section class="col-md-4">
<section class="ef-number">
<section class="col-xs-2">
<section class="stroke-title">
<span>06</span>
</section>
</section>
<section class="col-xs-10">
<section class="stroke-text">
<p class="lft">More conversions</p>
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
<section class="description-area bd-top serv-text">
 <section class="container">
<section class="row">

<section class="col-md-6">
<section class="desc-title wow fadeInDown" style="text-align:right;">

<section class="d-span">
<section class="set-categories">
<h3 class="rgt">Search Engine Marketing or SEM</h3>
<p class="rgt">It is one of the most effective ways to attract customers and break your business limits. It is the method of marketing where paid promotions are used to get your brand in the higher hunt list on search engine result pages. These ads are available in a variety of forms usually known as Pay-Per-Click ads. We as a Digital Marketing agency conduct a thorough research on all aspects of paid marketing to deliver ROI-driven management services.</p>

</section>

</section>


</section>
</section>
<section class="col-md-6">
<section class="d-categories wow fadeInRight">
<ul>
<li class="zett"><span></span><img src="images/d2.png"/></li>
</ul>
</section>

</section>

</section>
<section class="row">
<section class="col-md-6">
<section class="drg-categories wow fadeInRight">
<ul>
<li class="rg-zett" style="padding: 2em 1em;"><span></span><img src="images/d3.png"/></li>
</ul>
</section>

</section>
<section class="col-md-6">
<section class="desc-title wow fadeInDown" style="text-align:right;">

<section class="d-span">
<section class="set-categories">
<h3 class="lft">Search Engine Optimization or SEO</h3>
<p class="lft">It is the practice to rank your website high on search engines and increase the number of visitors. Our dedicated team of SEO experts uses different strategies and techniques to redirect quality traffic to the website. To quote it simply, the search engine will know that your website exists and ensures that it appears on top of the list when people type and search related keywords. Our SEO solutions add value to your agency and gain in terms of leads & conversions.</p>

</section>

</section>


</section>
</section>


</section>

<section class="row">

<section class="col-md-6">
<section class="desc-title wow fadeInDown" style="text-align:right;">

<section class="d-span">
<section class="set-categories">
<h3 class="rgt">Social Media marketing or SMM</h3>
<p class="rgt">It is influential especially when your business is in beginning times of expansion if conducted in a proper manner with the right strategies, and helps to convince and connect with potential customers online. By taking the leverage of individual’s dependency on internet we alleviate your business taking the assistance of social media platforms like Facebook, Linkedin, Twitter, Instagram, Snapchat and numerous others. Our walk to drive relevant traffic to your website is first through organic techniques with intense research, right plan of action and paid advertising later.</p>

</section>

</section>


</section>
</section>
<section class="col-md-6">
<section class="d-categories wow fadeInRight" style="border:none;">
<ul>
<li class="zett"><span></span><img src="images/d4.png"/></li>
</ul>
</section>

</section>

</section>
</section>
</section>


<section class="description-area bd-top">
 <section class="container">
<section class="row">
<section class="col-md-6">
<section class="desc-img wow fadeInRight">
<img src="images/b3.png"/>
</section>

</section>
<section class="col-md-6">
<section class="desc-title wow fadeInLeft">
<h1>Frequently Asked Questions</h1>

<div class="row">

<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
             <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          What is Branding & Identity ?
        </a>
      </h4>

        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.le VHS.</div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
             <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         Why we need Branding ?
        </a>
      </h4>

        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
             <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         What is the cost ?
        </a>
      </h4>

        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfour">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. </div>
        </div>
    </div>
	 <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingfour">
             <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsefour" aria-expanded="false" aria-controls="collapseThree">
       Why hire us ?
        </a>
      </h4>

        </div>
        <div id="collapsefour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfive">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. </div>
        </div>
    </div>
	 <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingfive">
             <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsefive" aria-expanded="false" aria-controls="collapseThree">
         Business related queries ?
        </a>
      </h4>

        </div>
        <div id="collapsefive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. </div>
        </div>
    </div>
</div>

</div>
</section>
</section>


</section>
</section>
</section>
<section class="description-area m-bt" style="background:#EDEBEA;">
 <section class="container">
<section class="row">

<section class="col-md-6">
<section class="desc-title wow fadeInLeft">
<h1>How we work together</h1>
<section class="desc-img wow fadeInRight">
<img src="images/s6.png"/>
</section>
 
</section>

</section>



<section class="col-md-5">
<section class="numbering">

<section class="stroke-title">
<h1>01</h1>
<h2>Design-focused, first and foremost.</h2>
<p>As a team, we’re design-focused across every touchpoint or interaction. Everything we do and dream up has a solid design impact. We get up and go in the morning, supercharged to make a difference with design as a top-of-mind solution.</p>
</section>
<section class="stroke-title">
<h1>02</h1>
<h2>Vendor no more – we’re part of your Team.</h2>
<p>Some brands and businesses need a vendor. Well, that’s just not us. We’ve crossed it out from our virtual dictionaries. It’s dead to us. Instead, we’re a partner, enabler, and true collaborator. We’re a team extension and built around unification.</p>
</section>
<section class="stroke-title">
<h1>03</h1>
<h2>Design-focused, first and foremost.</h2>
<p>As a team, we’re design-focused across every touchpoint or interaction. Everything we do and dream up has a solid design impact. We get up and go in the morning, supercharged to make a difference with design as a top-of-mind solution.</p>
</section>
</section>

</section>

</section>
</section>
</section>
<section class="review">
        <section class="container">
  
        
          <section class="get-call  wow fadeInDown">
            <section class="contact-set">
              <section class="row">
                <section class="col-md-6 col-xs-12">
                  <section class="set-img"> <img src="images/audit.png"/> </section>
                </section>
                <section class="col-md-6 col-xs-12">
                  <section class="get-text">
                  <form id="free_audit_details" action="save_free_audit_details.jsp?source_page=digitalmarketing" method="post">
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
                          <input type="text" placeholder="Message" id="msg" class="form-control" name="msg" required="" data-error="Please enter your message">
                        </div>
                      </div>
                       <div class="col-md-12 no_pad" style="width:100%;">
                        <div class="submit-button text-left">
                          <div class="form-group">
                            <button class="contact btn-5" type="submit" id="fa_submit_button" style="display:block">
                            <a class="arrow view-all reveal--up revealed">Send Now<span></span> </a>
                            </button>
                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      </form>
                    </div>
                  </section>
                </section>
              </section>
            </section>
            <section class="row">
              <section class="col-md-1 col-xs-4 no_pad">
                <section class="get-img"> <img src="images/phone.PNG"/> </section>
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
      </section>
      <section class="footer  wow fadeInDown">
        <section class="container">
          <section class="partnership  wow fadeInDown" id="btn">
<section class="row">
<section class="col-md-6">
<section class="part-text">
<div id="animate2"></div> </section>
              </section>
              <section class="col-md-6">
                <section class="part-right">
                  <h1 class="red">Let's get started </h1>
                  <p>Your Idea to Reality</p>
                  <section class="p-right"> <a href="#" class="carrow cta"  data-toggle="modal" data-target="#myModal"> START A PARTNERSHIP <span></span> </a> </section>
                </section>
              </section>
            </section>
          </section>
        </section>
        <section class="container-fluid">
          <section class="footer-area">
            <section class="row">
              <section class="col-md-7 col-xs-12">
                <section class="foot-text"> <img src="images/logo.svg" class="f-img"> <span style="margin-bottom: 2em;">We boost your business from nowhere to everywhere .</span>
                  <p class="orange">We are the architects of influential digital media marketing strategies <br>
                    which give us a legitimate way to connect with potential customers online.</p>
                </section>
              </section>
              <section class="col-md-3 col-xs-12">
                <section class="foot-text">
                  <p> <span>ADDRESS:</span> Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101</p>
											<p> <span> MAIL US:</span>rishabh@virtuosonetsoft.in
											<p><span>CALL US:</span> +91-8288815694</p>
										 </section>
              </section>
              <section class="col-md-2 col-xs-12">
                <section class="foot-text">
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
                </section>
              </section>
            </section>
          </section>
        </section>
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
                <li><a href="https://www.facebook.com/VirtuosoNetsoft.VNS">FACEBOOK</a></li>
                <li><a href="https://twitter.com/VNS_Virtuoso">TWITTER</a></li>
                <li><a href="https://www.instagram.com/virtuosonetsoft/">INSTAGRAM</a></li>
                <li><a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/">LINKEDIN</a></li>
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
                <%@include file="contactForm.jsp"%>
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
<script src="js/barba.js"></script> 
<script>
// Vars

var wrapper    = $("#site-wrapper"),
    menu       = $(".menu"),
    menuLinks  = $(".menu ul li a"),
    toggle     = $(".nav-toggle"),
    toggleIcon = $(".nav-toggle span");

function toggleThatNav() {
  if (menu.hasClass("show-nav")) {
    if (!Modernizr.csstransforms) {
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
    if (!Modernizr.csstransforms) {
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
    if (e.keyCode == 27) {
      if (menu.hasClass("show-nav")) {
        if (!Modernizr.csstransforms) {
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
<script>
 $(document).scroll(function() {
       if($(window).scrollTop() > 200){
 $("#bordered").css("border-left","transparent");
       

       }else if($(window).scrollTop() < 200){
 $("#bordered").css("border-left","1px solid #323234");
         
     

       }
});
document.querySelector( "#bordered" )
  .addEventListener( "click", function() {
    this.classList.toggle( "active" );
  });

</script> 
<script>
$(document).ready(function(){
	$('.nav-tabs > li > a').hover(function() {
  		$(this).tab('show');
	});
})
$(document).ready(function(){
	$('.capabilities__list a').hover(function() {
  		$(this).tab('show');
	});
})
</script> 
<script src="js/form-validator.min.js"></script> 
<script src="js/contact-form-script.min.js"></script>

<script>

let animation6 = bodymovin.loadAnimation({
        container: document.getElementById('animation_digital'),
        renderer: 'svg',
        loop: true,
        autoplay: true,
        path: 'js/animated/animate_digital.json'
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
    	var source_page='digitalmarketing';
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