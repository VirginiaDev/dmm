<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="dist/cursor.css">
		<link rel="stylesheet" href="css/nav-style.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		<script src="js/player/lottie.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		 	<section class="container-fluid">
				<section class="row">
					<nav class="menu" role="navigation">
						<section class="col-md-5 no_pad">
							<section class="left-menu">
								<div class="tab-content">
									<div id="Work" class="tab-pane fade in active"> <img src="images/work_thumb.png" /> </div>
									<div id="Services" class="tab-pane fade"> <img src="images/service_thumb.png" /> </div>
									<div id="About" class="tab-pane fade"> <img src="images/aboutus_thumb.png" /> </div>
								    <div id="Contact" class="tab-pane fade"> <img src="images/aboutus_thumb.png"/> </div>
								
								</div>
							</section>
						</section>
						<section class="col-md-1"> </section>
						<section class="col-md-5">
							<section class="right-menu wow fadeInRight">
								<ul class="nav nav-tabs">
									<li class="active"> <a data-target="#Work"  data-hover="tab" href="portfolio"><span class="dotted animated"></span>Work</a> </li>
									<li> 
									<div class="dropdown">
									  <button class="dropbtn"><a data-target="#Services"  data-hover="tab" href="services"><span class="dotted"></span>Services <i class="fa fa-sort-desc" aria-hidden="true"></i></a></button>
									  <div class="dropdown-content">
									    <a href="Content-strategy.jsp">Content Strategy</a>
									    <a href="Google-my-business.jsp">Google My Business</a>
									    <a href="graphic-design.jsp">Graphic Design</a>
									    <a href="ppc.jsp">PPC</a>
									    <a href="website-design.jsp">Website Design</a>
									  </div>
									</div>
									
									 </li>
									<li> <a data-target="#About"  data-hover="tab" href="aboutus"><span class="dotted"></span>About</a> </li>
									<li> <a data-target="#Contact" data-hover="tab" href="contact"><span class="dotted"></span>Contact</a> </li>
               					<!--  	<li class="contact btn-5"> <a class="arrow view-all reveal--up revealed" href="#" data-toggle="modal" data-target="#myModal" data-reveal="up">Contact<span></span> </a>
               					 </li>--> 
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
										<section class="col-md-6 col-xs-12 pl-0">
											<section class="sett"> <span class="orange">ADDRESS:</span>
												<p>Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101</p>
											</section>
										</section>
										<section class="col-md-6 col-xs-12">
											<section class="sett"> <span class="orange">CALL US: </span>
												<p>+91-8288815694</p>
											</section>
										</section>
										<section class="col-md-12  col-xs-12 pl-0">
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