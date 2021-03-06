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
	<!--  <title>VNS-DMM</title>-->
		<title>Web and App Development- Website Development services </title>
		
		<meta name="description" content="Get the best website for your business with the help of our website development expert 
		and turn your vision into the professionally designed website. Expert at VNS provides you the best advice for your problems.">
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
<style>
p.validation_errors {
    color: red;
}
</style>
</head>
<%@include file="quick-in.jsp" %>
<body class="has-overflow-hidden allowHover" id="homepage" style="" >

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M2WQNDK"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div id="site-wrapper">
  <header class="bg-pink">
	<%@include file="sidebar.jsp" %>
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
									<h1 style="font-size: 55px;"><span>Website & <br>App Development</span></h1>
									<p>IT’S ALL ABOUT FIRST IMPRESSIONS AT YOUR FINGERTIPS!</p>
								</section>
							</section>
							<section class="col-md-6">
								<div id="animation_web" class="s-img"></div>
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
							<p>We understand the huge competition on the internet and run a thorough analysis of present user interests to offer you the best site and app development services. We walk the extra mile to create a unique work for our clients and this makes them stand out in the competition. We maneuver every possible technology to accomplish the best outcomes.</p>
							<p> Firms investing to transform into a pioneer has made website and application development an imperative part of their business. We carefully engineer our client’s website and apps through reliable technologies to deliver an astronomical innovation. Our experience in building enterprise apps helps organizations build websites and mobile applications that are robust, secure, and adaptable for windows, IOS and android users.</p>
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
												<p class="lft">Increasing traffic</p>
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
												<p class="lft">Building conversions</p>
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
												<p class="lft">Raising brand awareness</p>
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
												<p class="lft">Positive brand association</p>
											</section>
										</section>
									</section>
								</section>
								<section class="col-md-8">
									<section class="ef-number">
										<section class="col-xs-2">
											<section class="stroke-title">
												<span>05</span>
											</section>
										</section>
										<section class="col-xs-10">
											<section class="stroke-text">
												<p class="lft">Improving communication and interaction with key audiences</p>
											</section>
										</section>
									</section>
								</section>
							</section>
						</section>
					</section>
					<section class="web-title wow fadeInDown">
						<section class="row">
							<section class="col-md-4">
								<section class="ef-web">
									<p><img src="images/w2.png"/><span class="muse-set"></span>Strategy</p>
								</section>
							</section>
							<section class="col-md-4">
								<section class="ef-web">
									<p><img src="images/w3.png"/><span class="muse"></span>Design<br>development</p>
								</section>
							</section>
							<section class="col-md-4">
								<section class="ef-web">
									<p><img src="images/w4.png"/><span class="muse"></span>Budget and<br>maintenance</p>
								</section>
							</section>
						</section>
						<section class="row cd">
							<section class="col-md-2">
							</section>
							<section class="col-md-4">
								<section class="ef-web">
									<p><img src="images/w5.png"/><span class="topmuse"></span>Planning and<br>Research</p>
								</section>
							</section>
							<section class="col-md-4">
								<section class="ef-web">
									<p><img src="images/w6.png"/><span class="topmuse"></span>Analytics and<br>Reporting</p>
								</section>
							</section>
							<section class="col-md-2">
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
				<section class="desc-img wow fadeInRight">
					<img src="images/w7.png" style="max-width: 700px;"/>
				</section>
			</section>
			<section class="col-md-6">
				<section class="desc-title wow fadeInDown" style="text-align:left;">
					<h1>Services Offered</h1>
						<section class="d-span">
							<section class="d-categories">
								<ul>
									<li><span></span>Brand Logo</li>
									<li><span></span>Business Cards & Letterhead</li>
									<li><span></span>Brochures and Envelopes</li>
									<li><span></span>Emailer designs</li>
									<li><span></span>Presentations</li>
									<li><span></span>Website UI/UX Design</li>
									<li><span></span>Product packaging</li>
								</ul>
							</section>
						</section>
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



<section class="col-md-6">
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
        <section class="container-fluid">
  
        
          <section class="get-call  wow fadeInDown">
            <section class="contact-set">
              <section class="row">
                <section class="col-md-6 col-xs-12">
                  <section class="set-img"> <img src="images/audit.jpg"/> </section>
                </section>
                <section class="col-md-6 col-xs-12">
                  <section class="get-text">
                  <input type="hidden" id="option" value="webanddevelopment">
                  <%@include file="free_audit_form.jsp" %>
                    </div>
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
              <section class="connect-icon wow fadeInUp"> <img src="images/connect_img.svg"/> </section>
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
        <section class="container-fluid">
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
                  <section class="p-right"> <a class="know" href="https://dmm.virtuosonetsoft.com/contact"> Know More <span></span> </a> </section>
                </section>
              </section>
            </section>
          </section>
        </section>
       <%@include file="footer.jsp" %>
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
<style>
		.ml-0{margin-left:33px;margin-right:0}.menu ul li:first-child{margin-top:0;border:0;box-shadow:none}.nav-tabs>li{float:none}.nav-tabs>li.active>a,.nav-tabs>li.active>a:focus,.nav-tabs>li.active>a:hover{color:#fff;cursor:default;background-color:#fff0;border:1px solid #ddd0;border-bottom-color:transparent}.logo{padding-top:0!important}.popup-btn{position:fixed!important;top:46%;left:92%;transform:translate(-50%,-50%);transform:rotate(-90deg);width:230px}#sendbtn{width:135px}.main-btn-circle,.main-btn-rect{position:relative;margin:0;font-family:Roboto,sans-serif;color:ivory;background-color:#fc4f4f;text-transform:uppercase;font-size:20px;letter-spacing:1px;outline:0;cursor:pointer;z-index:100}.main-btn-rect{padding:12px 0;line-height:20px;border-radius:5px;border:0 solid;width:172px}.main-btn-rect:after,.main-btn-rect:before{position:absolute;content:'';top:0;width:0%;height:100%;background-color:rgba(255,255,240,.2);-webkit-transition:width .3s;-o-transition:width .3s;transition:width .3s}.main-btn-rect:before{left:0}.main-btn-rect:after{right:0}.main-btn-rect:hover:after,.main-btn-rect:hover:before{width:50%}.main-btn-circle{height:40px;width:40px;-webkit-border-radius:50%;border-radius:100%;line-height:40px;-webkit-transition:box-shadow .3s;-o-transition:box-shadow .3s;transition:box-shadow .3s}.main-btn-circle:hover{-webkit-box-shadow:inset 2px 1px 0 20px rgba(255,255,240,.2);-moz-box-shadow:inset 2px 1px 0 20px rgba(255,255,240,.2);box-shadow:inset 2px 1px 0 20px rgba(255,255,240,.2)}.popup{position:fixed;top:103%;z-index:10001;right:206px;bottom:-31px}.modal-header .close{color:#fff!important}.popup.active{top:0;transition:background-color .6s,opacity .6s}.main-btn-circle,.main-btn-rect{font-size:16px}.popup .main-btn-rect{padding:10px 18px;margin-left:14px;margin-bottom:16px;font-size:14px;margin-top:0}.min-h #qe_message{height:52px}.flex-row #send{background-color:#f35255;width:100%;font-size:15px;margin-bottom:50px}.popup .popup-content{position:absolute;top:50%;left:85%;max-height:568px;min-width:320px;margin-top:150px;padding:0;background-color:#0000008c;color:#070000;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.12),0 1px 2px rgba(0,0,0,.24);box-shadow:0 1px 3px rgba(0,0,0,.12),0 1px 2px rgba(0,0,0,.24);-ms-transform:translateX(-50%) translateY(-50%);transform:translateX(-50%) translateY(-50%);-webkit-transform:translateX(-50%) translateY(-50%);-moz-transform:translateX(-50%) translateY(-50%);-o-transform:translateX(-50%) translateY(-50%);transition:margin .6s;-webkit-transition:margin .6s;-moz-transition:margin .6s;-o-transition:margin .6s}.popup.active .popup-content{margin-top:0;border-radius:5px!important}.popup-content h6{display:table;font-size:25px;text-align:center;font-family:Roboto,sans-serif;text-transform:uppercase;font-weight:100;color:#fff;margin-left:17px;margin-top:22px}.form-group{position:relative;width:90%;margin:0 auto}form#send input,form#send textarea{position:relative;margin-bottom:11px;width:100%;height:27px;font-family:RobotoLight,sans-serif;text-indent:5px;background-color:#fff;outline:0;border:none;border-bottom:0 solid #070000;-webkit-transition:border .6s;-o-transition:border .6s;transition:border .6s;border-radius:3px;font-size:14px;color:#000}.send-form{margin-top:20px}form#send input:focus,form#send textarea:focus{border-bottom:1px solid #3fada8}form#send label{position:absolute;top:0;line-height:28px;-webkit-transition:color .5s;-o-transition:color .5s;transition:color .5s}form#send input:focus+label,form#send textarea:focus+label{color:#3fada8}form#send .txt{line-height:22px;left:2px}#send .main-btn-rect{position:relative;display:block;padding:9px 17px;margin-left:17px;font-size:14px;float:left;margin-bottom:16px}form#send .main-btn-rect i{margin-right:5px}.popup .fade-out{position:absolute;top:4px;right:15px;text-align:center;font-size:18px;border-radius:0;margin-top:11px}.share-wrap{position:absolute;display:inline-table;top:67%;left:50%;transform:translate(-50%,-50%);padding:15px;text-align:center}.fade.in{opacity:1;background-color:#ff000000!important;background:#a9a9a9}.share-btn{color:ivory;padding:7px 25px;text-decoration:none;cursor:pointer;font-weight:100;font-size:14px;font-family:Lobster,sans-serif;background-color:rgba(63,173,168,.8);text-transform:uppercase;border-radius:5px;transition:background-color .5s;-webkit-transition:background-color .5s;-moz-transition:background-color .5s;-o-transition:background-color .5s}.share-btn:hover{color:ivory;text-decoration:none;background-color:#3fada8}.close{background:#fff;color:#fff!important;line-height:60px;position:absolute;right:2px;text-align:center;top:-9px;width:60px;text-decoration:none;font-weight:400;-webkit-border-radius:12px;-moz-border-radius:12px;border-radius:50%!important;-moz-box-shadow:1px 1px 3px #000;-webkit-box-shadow:1px 1px 3px #000;box-shadow:0 0 0 #000;border:0 solid #fff!important;opacity:9;font-size:2em}.close:hover{background:#f76c5100}.col-cn .form-group{position:relative;width:100%;margin:0 auto}.chat-area{flex-grow:1;overflow:auto;border-radius:8px;padding:16px;display:flex;flex-direction:column;height:350px}.modal-dialog{position:relative;left:439px;top:72px;width:34%}.col-cm{font-size:17px;padding-left:0}.title_top{color:#8e8e8e;font-size:18px;text-align:center;font-weight:700;margin-bottom:8px;margin-top:10px}@media only screen and (max-width:768px){h1{font-size:25px}h2{font-size:14px}form#send .main-btn-rect{padding:7px 60px;font-size:14px}.popup-btn{padding:7px 60px;font-size:14px}}.no_pad .form-control{display:block;width:100%;height:34px;padding:6px 0;border-bottom:1px solid #ccc;border-radius:0;border-right:0;border-top:0;border-left:0}#overlayer{width:100%;height:100%;position:absolute;z-index:1;background:#4a4a4a}.loader{display:inline-block;width:30px;height:30px;position:absolute;z-index:3;border:4px solid #fff;top:50%;animation:loader 2s infinite ease}.loader-inner{vertical-align:top;display:inline-block;width:100%;background-color:#fff;animation:loader-inner 2s infinite ease-in}.py-md-4 input{color:#000}@keyframes loader{0%{transform:rotate(0)}25%{transform:rotate(180deg)}50%{transform:rotate(180deg)}75%{transform:rotate(360deg)}100%{transform:rotate(360deg)}}@keyframes loader-inner{0%{height:0%}25%{height:0%}50%{height:100%}75%{height:100%}100%{height:0%}}@media screen and (min-width:320px) and (max-width:991px){.modal-dialog{position:relative;left:5px;top:5%;width:85%}.main-card{background:#fff;color:#fff;width:100%;height:calc(100% - 32px);margin:16px auto;border-radius:8px;box-shadow:0 10px 16px 0 rgba(0,0,0,.2),0 6px 20px 0 rgba(0,0,0,.19);display:flex;flex-direction:column;overflow:hidden}.vns{width:37%;float:left;padding-right:0}.hi{float:left;width:38%;padding-left:7px}.modal-header .close{position:relative;left:174px;bottom:0;top:-45px;color:#fff}.col_3{clear:both;height:0}.wdh input{width:100%}.flex-row #chatform_send{background-color:#f35255;width:100%;font-size:15px;margin-bottom:50px}.col-cn{margin:0 auto;padding-right:0;padding-left:0}}
.review {
    float: left;
    width: 100%;
    padding: 0;
    color: #191919;
    background-color: #F7F7F7;
}
.p-right a {
    font-size: 20px;
    color: #ec2028;
    font-weight: 600;
}
</style>
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script> 
<script src="js/wow.js"></script> 
<script src="js/FreeAuditFormCategoryLoaderFile.js"></script>

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

let animation8 = bodymovin.loadAnimation({
        container: document.getElementById('animation_web'),
        renderer: 'svg',
        loop: true,
        autoplay: true,
        path: 'js/animated/animate_web.json'
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
    	var source_page='webanddevelopment';
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
			 // alert("xhjsxvhx222222222222");
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