<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Happy Dussehra</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="dist/cursor.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/dussehra_css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <link rel="stylesheet" href="/dussehra_css/style.css">
  
<link rel="stylesheet" href="css/style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<style>
.dussehra-message {
    padding-top: 30px;
    padding-bottom: 30px;
}
.proceed {
    background-color: rgb(242, 242, 242);
    padding-top: 1%;
    padding-bottom: 3%;
    margin-top: 2%;
    margin-bottom: 2%;
}
#proceed {
    background-color: #000;
    color: #fff;
    padding: 10px 20px;
    font-size: 20px;
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
.info-options {
    padding-top: 34px;
    padding-bottom: 20px;
}

.ravana{
    position:relative;
    /* background-image: url(../dussehra_img/rav-1.jpg);
    margin-top: 0%;
    padding-top: 30%;
    padding-bottom: 30%;
    background-size: 100% 100%; */
}

.ravana img {
    width:100%;
	height:100%;
}

.ravana>.one {
	position:absolute;
	top: 9%;
	bottom:0;
	left: 34%;
	right:0;
	width: 10%;
    height: 20%;
	z-index: 100;
	background: transparent url(/dussehra_img/9.png);
    background-position:center;
    background-size: cover;
}
.ravana>.fireface {
	position:absolute;
	top: 2%;
	bottom:0;
	left: 28%;
	right:0;
	width: 40%;
    height: 45%;
	z-index: 100;
	background: transparent url(/dussehra_img/aag.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.two {
	position:absolute;
	top: 12%;
	bottom:0;
	left: 26%;
	right:0;
	width: 10%;
    height: 17%;
	z-index: 100;
	background: transparent url(/dussehra_img/10.png);
    background-position:center;
    background-size: cover;
}
.ravana>.fire {
	position:absolute;
	top: 12%;
	bottom:0;
	left: 26%;
	right:0;
	width: 10%;
    height: 17%;
	z-index: 100;
	background: transparent url(/dussehra_img/aag.gif);
    background-position:center;
    background-size: cover;
}
.ravana>.fire01 {
	position:absolute;
	top: 12%;
	bottom:0;
	left: 34%;
	right:0;
	width: 10%;
    height: 17%;
	z-index: 100;
	background: transparent url(/dussehra_img/aag.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.three {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 20%;
	right:0;
	width: 10%;
    height: 15%;
	z-index: 100;
	background: transparent url(/dussehra_img/7.png);
    background-position:center;
    background-size: cover;
}
.ravana>.fire1 {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 20%;
	right:0;
	width: 10%;
    height: 15%;
	z-index: 100;
	background: transparent url(/dussehra_img/source.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.four {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 15%;
	right:0;
	width: 10%;
    height: 14%;
	z-index: 100;
	background: transparent url(/dussehra_img/6.png);
    background-position:center;
    background-size: cover;
}
.head {
    position: relative;
    top: 0;
    bottom:0;
	left: 0;
	right:0;
	width: 13%;
	height: 13%;
	z-index: 100;
}
.ravana>.fire2 {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 15%;
	right:0;
	width: 10%;
    height: 14%;
	z-index: 100;
	background: transparent url(/dussehra_img/aag.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.five {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 9%;
	right:0;
	width: 10%;
    height: 12%;
	z-index: 100;
	background: transparent url(/dussehra_img/5.png);
    background-position:center;
    background-size: cover;
}

.ravana>.fire7 {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 9%;
	right:0;
	width: 10%;
    height: 12%;
	z-index: 100;
	background: transparent url(/dussehra_img/source.gif);
    background-position:center;
    background-size: cover;
}
.ravana>.six {
	position:absolute;
	top: 9%;
	bottom:0;
	left: 56%;
	right: 0;
	width: 10%;
    height: 20%;
	z-index: 100;
	background: transparent url(/dussehra_img/11.png);
    background-position:center;
    background-size: cover;
}

.ravana>.fire3 {
	position:absolute;
	top: 9%;
	bottom:0;
	left: 56%;
	right:0;
	width: 10%;
    height: 20%;
	z-index: 100;
	background: transparent url(/dussehra_img/source.gif);
    background-position:center;
    background-size: cover;
}
.ravana>.seven {
	position:absolute;
	top: 13%;
	bottom:0;
	left: 64%;
	right: 0;
	width: 10%;
    height: 14%;
	z-index: 100;
	background: transparent url(/dussehra_img/10.png);
    background-position:center;
    background-size: cover;
}

.ravana>.fire4 {
	position:absolute;
	top: 13%;
	bottom:0;
	left: 64%;
	right:0;
	width: 10%;
    height: 14%;
	z-index: 100;
	background: transparent url(/dussehra_img/aag.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.eight {
	position:absolute;
	top: 13%;
	bottom:0;
	left: 70%;
	right: 0;
	width: 10%;
    height: 12%;
	z-index: 100;
	background: transparent url(/dussehra_img/12.png);
    background-position:center;
    background-size: cover;
}

.ravana>.fire5 {
	position:absolute;
	top: 13%;
	bottom:0;
	left: 70%;
	right:0;
	width: 10%;
    height: 12%;
	z-index: 100;
	background: transparent url(/dussehra_img/source.gif);
    background-position:center;
    background-size: cover;
}

.ravana>.nine {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 77%;
	right: 0;
	width: 10%;
    height: 11%;
	z-index: 100;
	background: transparent url(/dussehra_img/15.png);
    background-position:center;
    background-size: cover;
}

.ravana>.fire6 {
	position:absolute;
	top: 14%;
	bottom:0;
	left: 77%;
	right:0;
	width: 10%;
    height: 11%;
	z-index: 100;
	background: transparent url(/dussehra_img/source.gif);
    background-position:center;
    background-size: cover;
}

.info-options{
    background-color: rgb(205, 161, 64);
}

.evil-buttons{
    margin-top: 2%;
}

.evilbutt1 {
    background-color: rgba(226,3,218,0.8);
    color: white;
}

.evilbutt1:hover{
    background-color:  rgba(226,3,218,1);
    color: white;
}

.evilbutt2{
    background-color: rgba(77,15,146,0.8);
    color: white;
}

.evilbutt2:hover{
    background-color: rgba(77,15,146,1);
    color: white;
}

.evilbutt3{
    background-color: rgba(111,52,40,0.8);
    color: white;
}

.evilbutt3:hover{
    background-color: rgba(111,52,40,1);
    color: white;
}

.evilbutt4{
    background-color: rgba(103,116,15,0.8);
    color: white;
}

.evilbutt4:hover{
    background-color: rgba(103,116,15,1);
    color: white;
}

.proceed {
    background-color: rgb(242, 242, 242);
    padding-top: 3%;
    padding-bottom: 3%;
    margin-top: 2%;
    margin-bottom: 2%;
}
</style>
</head>

<body class="has-overflow-hidden allowHover" id="homepage" style="">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

<div id="site-wrapper">

   <main role="main">
<div id="barba-wrapper" aria-live="polite">


      <section class="top-bar">
        <div class="container">
          <div class="row">
                <div class="class="col-sm-12 col-md-12 col-xs-12">
                   <div class="dussehra-message">
    <div class="container">
      <p class="para text-center">
        Yet another year of victory of Good over evil.This dussehra let us <br>not forget
        our obligations to maintain social distancing with absolute fairness and
        celebrate dussehra with joy and happiness.
      </p>
      <p class="para text-center">
        This year we call you to celebrate Dussehra with VNS a bit<br> differently by burning
        a Digital Ravana. Let us pledge to liberate ourselves from evils within us that are holding
        us back to ameliorate us.
      </p>
   
    </div>
  </div>
  
  <div class="ravana">
    <img src="dussehra_img/rav-1.jpg" alt="Ravana" />
    <span class="one"></span>
    <span class="two"></span>
    <span class="three"></span>
    <span class="four"></span>
    <span class="five"></span>
    <span class="six"></span>
    <span class="seven"></span>
    <span class="eight"></span>
    <span class="nine"></span>
    <span class="fire"></span>
    <span class="fire01"></span>
    <span class="fire1"></span>
    <span class="fireface">
    </span><span class="fire2">
    </span><span class="fire3"></span>
    <span class="fire4"></span>
    <span class="fire5"></span>
    <span class="fire6"></span>
    <span class="fire7"></span>
    <!-- <img src="dussehra_img/7.png" class="head"> -->
  </div>
  
  <div class="info-options">
    <div class="container">
      <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <p class="para1 text-center">
          Let's identify the 10 evils within ourselves from the below mentioned
          options and create our own Ravana and burn the same digitally.
        </p>
         <p class="para1 text-center">
        <b>
          #VNS wishes you all a very happy and joyful Dussehra!
          Let's build the Ravana---
        </b>
      </p>
       
        </div>
      </div>
    </div>
  </div>
  
  
  
  <div class="evil-buttons">
    <div class="container">
      <div class="row">
       <div class="col-md-12 col-sm-12 col-xs-12">
        <button type="button" class="btn btn-dark m-2" id="1" onclick="topFunction()">Over Eating</button>
        <button type="button" class="btn m-2 evilbutt1" id="2" onclick="topFunction()">Ignoring health</button>
        <button type="button" class="btn m-2 evilbutt2" id="3" onclick="topFunction()">Toxicity</button>
        <button type="button" class="btn m-2 evilbutt3" id="4" onclick="topFunction()">Ungratefulness</button>
        <button type="button" class="btn m-2 evilbutt4" id="5" onclick="topFunction()">Comparison</button>
        <button type="button" class="btn btn-primary m-2" id="6" onclick="topFunction()">Not Letting go</button>
        <button type="button" class="btn btn-secondary m-2" id="7" onclick="topFunction()">Revenge</button>
        <button type="button" class="btn btn-success m-2" id="8" onclick="topFunction()">Addiction</button>
        <button type="button" class="btn btn-danger m-2" id="9" onclick="topFunction()">Lust</button>
        <button type="button" class="btn btn-warning m-2" id="10" onclick="topFunction()">Anger</button>
        <button type="button" class="btn btn-info m-2" id="11"onclick="topFunction()">Negativity</button>
        <button type="button" class="btn btn-light m-2" id="12" onclick="topFunction()">Greed</button>
        <button type="button" class="btn btn-dark m-2" id="13" onclick="topFunction()">Pride</button>
        <button type="button" class="btn btn-secondary m-2" id="14" onclick="topFunction()">Envy</button>
        <button type="button" class="btn btn-success m-2" id="15" onclick="topFunction()">Conscientiousness</button>
        <button type="button" class="btn btn-danger m-2" id="16" onclick="topFunction()">Mindlessness</button>
        <button type="button" class="btn btn-warning m-2" id="17" onclick="topFunction()">Unsettled</button>
        <button type="button" class="btn btn-info m-2" id="18" onclick="topFunction()">Ego</button>
        <button type="button" class="btn btn-light m-2" id="19" onclick="topFunction()">Apathy</button>
        <button type="button" class="btn btn-dark m-2" id="20" onclick="topFunction()">Fear</button>
        </div>
      </div>
    </div>
  </div>
  <div class="proceed">
    <div class="container-fluid text-center">
      <button type="button" class="btn btn-dark m-2" id="proceed" onclick="topFunction()">Proceed</button>
    </div>
  </div>
  </div>
          </div>
        </div>
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

  </main>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 


</body>
<script>

var fire01 = document.getElementsByClassName("fire01")[0];
fire01.style.visibility = "hidden";
  var one = document.getElementsByClassName("one")[0];var fire = document.getElementsByClassName("fire")[0];
  one.style.visibility = "hidden";fire.style.visibility = "hidden";
  var two = document.getElementsByClassName("two")[0];var fire1 = document.getElementsByClassName("fire1")[0];
  two.style.visibility = "hidden";fire1.style.visibility = "hidden";
  var three = document.getElementsByClassName("three")[0];var fire2 = document.getElementsByClassName("fire2")[0];
  three.style.visibility = "hidden";fire2.style.visibility = "hidden";
  var four = document.getElementsByClassName("four")[0];var fire3 = document.getElementsByClassName("fire3")[0];
  four.style.visibility = "hidden";fire3.style.visibility = "hidden";
  var five = document.getElementsByClassName("five")[0];var fire4 = document.getElementsByClassName("fire4")[0];
  five.style.visibility = "hidden";fire4.style.visibility = "hidden";
  var six = document.getElementsByClassName("six")[0];var fire5 = document.getElementsByClassName("fire5")[0];
  six.style.visibility = "hidden";fire5.style.visibility = "hidden";
  var seven = document.getElementsByClassName("seven")[0];var fire6 = document.getElementsByClassName("fire6")[0];
  seven.style.visibility = "hidden";fire6.style.visibility = "hidden";
  var eight = document.getElementsByClassName("eight")[0];var fire7 = document.getElementsByClassName("fire7")[0];
  eight.style.visibility = "hidden";fire7.style.visibility = "hidden";
  var nine = document.getElementsByClassName("nine")[0];var fireface = document.getElementsByClassName("fireface")[0];
  nine.style.visibility = "hidden";fireface.style.visibility = "hidden";
  var p = document.getElementById("proceed");
  p.disabled = true;

  var b = new Object();
  b['one'] = 0;
  b['two'] = 0;
  b['three'] = 0;
  b['four'] = 0;
  b['five'] = 0;
  b['six'] = 0;
  b['seven'] = 0;
  b['eight'] = 0;
  b['nine'] = 0;

  console.log(b);
  // console.log(nine.className);
  //   for (var prop in a) {
  //     a[prop].style.visibility = "hidden";
  //     b[a[prop].className] = 0;
  // console.log(a[prop].className);
  // }

  // b[nine.className] = 1;

  var but1 = document.getElementById("1");
  var but2 = document.getElementById("2");
  but2.addEventListener("click", function () {
    checkout();
    but2.disabled = 'disabled';
  });
  var but3 = document.getElementById("3");
  but3.addEventListener("click", function () {
    checkout();
    but3.disabled = 'disabled';
  });
  var but4 = document.getElementById("4");
  but4.addEventListener("click", function () {
    checkout();
    but4.disabled = 'disabled';
  });
  var but5 = document.getElementById("5");
  but5.addEventListener("click", function () {
    checkout();
    but5.disabled = 'disabled';
  });
  var but6 = document.getElementById("6");
  but6.addEventListener("click", function () {
    checkout();
    but6.disabled = 'disabled';
  });
  var but7 = document.getElementById("7");
  but7.addEventListener("click", function () {
    checkout();
    but7.disabled = 'disabled';
  });
  var but8 = document.getElementById("8");
  but8.addEventListener("click", function () {
    checkout();
    but8.disabled = 'disabled';
  });
  var but9 = document.getElementById("9");
  but9.addEventListener("click", function () {
    checkout();
    but9.disabled = 'disabled';
  });
  var but10 = document.getElementById("10");
  but10.addEventListener("click", function () {
    checkout();
    but10.disabled = 'disabled';
  });
  var but11 = document.getElementById("11");
  but11.addEventListener("click", function () {
    checkout();
    but11.disabled = 'disabled';
  });
  var but12 = document.getElementById("12");
  but12.addEventListener("click", function () {
    checkout();
    but12.disabled = 'disabled';
  });
  var but13 = document.getElementById("13");
  but13.addEventListener("click", function () {
    checkout();
    but13.disabled = 'disabled';
  });
  var but14 = document.getElementById("14");
  but14.addEventListener("click", function () {
    checkout();
    but14.disabled = 'disabled';
  });
  var but15 = document.getElementById("15");
  but15.addEventListener("click", function () {
    checkout();
    but15.disabled = 'disabled';
  });
  var but16 = document.getElementById("16");
  but16.addEventListener("click", function () {
    checkout();
    but16.disabled = 'disabled';
  });
  var but17 = document.getElementById("17");
  but17.addEventListener("click", function () {
    checkout();
    but17.disabled = 'disabled';
  });
  var but18 = document.getElementById("18");
  but18.addEventListener("click", function () {
    checkout();
    but18.disabled = 'disabled';
  });
  var but19 = document.getElementById("19");
  but19.addEventListener("click", function () {
    checkout();
    but19.disabled = 'disabled';
  });
  var but20 = document.getElementById("20");
  but20.addEventListener("click", function () {
    checkout();
    but20.disabled = 'disabled';
  });
  but1.addEventListener("click", function () {
    checkout();
    but1.disabled = 'disabled';
  });
  function checkout() {
    for (var prop in b) {
      if (b[prop] == 0) {
        b[prop] = 1;
        break;
      }
    }
    updatehead();
    // console.log(b);
  }

  function updatehead() {
    for (var prop in b) {
      if (b[prop] == 1) {
        if (prop == one.className) {
          one.style.visibility = "visible";
        }
        else if (prop == two.className) {
          two.style.visibility = "visible";
        }
        else if (prop == three.className) {
          three.style.visibility = "visible";
        }
        else if (prop == four.className) {
          four.style.visibility = "visible";
        }
        else if (prop == five.className) {
          five.style.visibility = "visible";
        }
        else if (prop == six.className) {
          six.style.visibility = "visible";
        }
        else if (prop == seven.className) {
          seven.style.visibility = "visible";
        }
        else if (prop == eight.className) {
          eight.style.visibility = "visible";
        }
        else if (prop == nine.className) {
          nine.style.visibility = "visible";
        }
      }
    }
    checkproceed();
  }

  var count = 0;

  function checkproceed(){
    count = 0;
    // console.log(b);
    for(var i in b){
      if(b[i] == 1){
        count = count+1;
      }
    }
    // console.log(count);
    if(count == 9){
      p.disabled = false;
    }

  }

  checkproceed();

  p.addEventListener("click",function(){
    clickproceed()
  })
  function clickproceed() {
	fire01.style.visibility = "visible";
    fire.style.visibility = "visible";
    fire1.style.visibility = "visible";
    fire2.style.visibility = "visible";
    fire3.style.visibility = "visible";
    fire4.style.visibility = "visible";
    fire5.style.visibility = "visible";
    fire6.style.visibility = "visible";
    fire7.style.visibility = "visible";
    fireface.style.visibility = "visible";
  }
</script>
<script>
function topFunction() {
	  document.body.scrollTop = 0;
	  document.documentElement.scrollTop = 0;
	}
</script>
</html>