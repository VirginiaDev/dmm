<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</body>
	<script>
			$(document).ready(function() {
				$('.popup-btn').click(function() {
					alert("working");
					var popupBlock = $('#' + $(this).data('popup'));
					alert("popubBlock===="+popupBlock);
					popupBlock.addClass('active').find('.fade-out').click(function() {
						popupBlock.css('opacity', '0').find('.popup-content').css('margin-left', '350px');
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
#popup-reg {
    background-color: rgba(127, 255, 212, 0);
    width: 20%;
    position: absolute;
    left: 66em;
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
		    left: 67em;
		    top: 563px;
		    position: fixed;
		    cursor: pointer;
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
	
</html>