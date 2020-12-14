<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  

 <script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>

 <script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCvZzDY0-AvbDiXejDucTGXag7vxTBMYdw",
    authDomain: "vnsdmmchatbot.firebaseapp.com",
    databaseURL: "https://vnsdmmchatbot.firebaseio.com",
    projectId: "vnsdmmchatbot",
    storageBucket: "vnsdmmchatbot.appspot.com",
    messagingSenderId: "112795506448",
    appId: "1:112795506448:web:9b9974a1d58f142b5b7795",
    measurementId: "G-TLLWQX189Q"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
 <%

InetAddress localhost = InetAddress.getLocalHost(); 

String localip=(localhost.getHostAddress()).trim();

// Find public IP address 

String systemipaddress = ""; 

try

{ 

    URL url_name = new URL("http://bot.whatismyipaddress.com"); 

    BufferedReader sc = new BufferedReader(new InputStreamReader(url_name.openStream())); 

    systemipaddress = sc.readLine().trim(); 

} 

catch (Exception e) 

{ 

    systemipaddress = "Cannot Execute Properly"; 

} 

///out.println(localip+systemipaddress);

//String uipddress=(localip+systemipaddress).replace(".", "");

session.setMaxInactiveInterval(30*60);
/*SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyyHHmmss");
Date date = new Date();
System.out.println(formatter.format(date));
String uipddress=formatter.format(date).toString();*/
String uipddress=session.getId();

 %>
 
</head>
<body>


<div class="container">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
     <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
         
<div class="main-card">
  <div class="main-title">
    <div class="col-md-4">VNS.DMM</div>
    <div class="col-md-3 col-cm">Hi there &nbsp;<i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
    <div class="col-md-4 col-cm">
      <!--  <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-ellipsis-v" aria-hidden="true"></i>
        </button>
        <ul class="dropdown-menu">
          <li><a href="#">D1</a></li>
          <li><a href="#">D2</a></li>
          <li><a href="#">D3</a></li>
        </ul>
      </div>-->
    </div>


    <div class="col-md-5 col-rm">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
    </div>
    
  </div>
<div class="col-md-12 col-sm-12 col-lr">
      <span class="rp"><i class="fa fa-circle" aria-hidden="true"></i>&nbsp;&nbsp;We reply immediately</span>
    </div>
  <div class="chat-area" id="message-box">
  </div>
 

 <div class="col-md-12 col-sm-12">
<button type="button" class="material-icons ripple fade-appear-done fade-enter-done" aria-label="Attach file button" style="color: rgb(0, 125, 252);"><svg id="ic_attachFile" fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"><path d="M16.5 6v11.5c0 2.21-1.79 4-4 4s-4-1.79-4-4V5c0-1.38 1.12-2.5 2.5-2.5s2.5 1.12 2.5 2.5v10.5c0 .55-.45 1-1 1s-1-.45-1-1V6H10v9.5c0 1.38 1.12 2.5 2.5 2.5s2.5-1.12 2.5-2.5V5c0-2.21-1.79-4-4-4S7 2.79 7 5v12.5c0 3.04 2.46 5.5 5.5 5.5s5.5-2.46 5.5-5.5V6h-1.5z"></path><path d="M0 0h24v24H0z" fill="none"></path></svg></button>



 </div>
  <div class="input-div">
    <input class="input-message" name="message" type="text" id="message" />
    <button class="input-send" onclick="send()">
   <svg style="width:24px;height:24px">
    <path d="M2,21L23,12L2,3V10L17,12L2,14V21Z" />
    </svg>
    </button>
  </div>
</div>
 </div>
  </div>
  
</div>
</body>
<style>
*:focus {
    outline: none !important;
}

.input-group .material-icons svg {
    width: 26px;
    height: 26px;
}
.btn.btn-info.btn-lg {
    position: relative;
    left: 55em;
    top: 20px;
}
  .btn.btn-info.btn-lg {
    background: #f76c51;
    width: 53px;
    height: 50px;
    border-radius: 24px;
    border: none;
    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.rp {
    background-color: #f76c51;
    display: block;
    padding: 10px;
}
  .col-lr {
    padding-left: 0px;
    padding-right: 0px;
}
.col-rm {
    padding-left: 0px;
}
.col-cm .btn.btn-primary.dropdown-toggle {
    float: right;
    padding-top: 0px;
}
.col-cm {
    padding-right: 0;
}
.modal-header {
    padding: 0px;
    border-bottom: 0px solid #e5e5e5;
    float: left;
    margin-left: 30px;
    margin-top: 6px;
}
.btn-primary {
    color: #fff;
    background-color: transparent;
    border-color: transparent;
}
.btn-primary:hover {
    color: #fff;
    background-color: transparent;
    border-color: transparent;
}
.btn-primary.active, .btn-primary:active, .open>.dropdown-toggle.btn-primary {
    color: #fff;
    background-color: transparent !important;
    background-image: none;
    border-color: transparent !important;
}
.modal-header .close {
    margin-top: -10px;
    font-size: 30px;
    color: #000 !important;
}
.fa-ellipsis-v:before {
    content: "\f142";
    font-size: 20px;
}
.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
    top: 46px;
}


.main-card {
  background:white;
  color:white;
  width: 80%;
  height: calc(100% - 32px);
  margin: 16px auto;
  border-radius: 8px;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  display:flex;
  flex-direction:column;
  overflow: hidden;
}


.main-title {
    background-color: #ff7f66;
    font-size: large;
    font-weight: bold;
    padding-top: 20px;
    padding-bottom: 10px;
}
.main-title svg{
  height: 16px;
   margin: 0px 8px
}

.chat-area {
  flex-grow: 1;
  overflow: auto;
  border-radius: 8px;
  padding: 16px;
  display: flex;
  flex-direction: column;
}
.input-message {
  padding: 8px 24px;
  flex-grow: 1;
  margin: 0px 8px 0px 0px;
  border-radius: 24px;
  border: none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  color: #000;
}
.input-message:focus{
  outline :none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.25);
}
.input-div {
  height: 48px;
  width: calc(100% - 32px);
  margin: 16px;
  display: flex;
}

.input-send {
  background :#ff7f66;
  width: 48px;
  height: 48px;
  border-radius: 24px;
  border: none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.input-send:hover{
  cursor:pointer;  
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.25);
}
.input-send svg{
  fill:white;
  margin:11px 8px;
}
.chat-message-div {
  display: flex;
}

.chat-message {
  background-color: white;
  margin: 8px 16px;
  padding: 16px 24px;
  animation-name: fadeIn;
  animation-iteration-count: 1;
  animation-timing-function: ease-in;
  animation-duration: 100ms;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.11);
  color:black;
  border-radius: 50px;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}
::-webkit-scrollbar {
  width: 10px;
}
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
::-webkit-scrollbar-thumb {
  background: #888; 
}

::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
</style>

		 <script>

 



  var databaseRef = firebase.database().ref('messageuser/<%=uipddress%>/');



  var rowIndex = 1;

  var rowIndex1 = 1;

  

 window.checkfirst=true;

  

 databaseRef.once('value', function(snapshot) {

	  

    snapshot.forEach(function(childSnapshot) {

    


    	var childKey = childSnapshot.key;

		var childData = childSnapshot.val();
  var userid=childData.userid;
		  if(userid==1){
			  addMsg(childData.message);


		  }else{
			  addResponseMsg(childData.message);
	
		  }
    });

    window.checkfirst=false;

  });

	

		databaseRef.orderByChild('timestamp').limitToLast(1).on("value", function(snapshot) {

		//	alert("nnnnn22==>"+window.checkfirst);
			  snapshot.forEach(function(childSnapshot) {

				  var childKey = childSnapshot.key;

				  var childData = childSnapshot.val();
				 //  window.uchildKey=childKey;
				  var userid=childData.userid;

				  if(window.checkfirst==false){
       
					 

					  if(userid==1){

						 // addMsg(childData.message);
		 

					  }else{

						  addResponseMsg(childData.message);

					    	

					  }
					 /* if(window.uchildKey==window.uchildKey1){
						  
					  }else{
					  window.uchildKey1=childKey;
					  }*/
				  }



				    });

			  

			 

			});

	

  function savemessage(message){

	  

	   if(message.trim()==''){

		  alert("Please Fill the blank"); 

	   }else{


		   

		   var uid = firebase.database().ref().child('messageuser/<%=uipddress%>').push().key;

		   var currentdate = new Date(); 

		   var datetime =  currentdate.getFullYear() + "/"

				           + (currentdate.getMonth()+1)  + "/" 
				
				           + currentdate.getDate() + " "  
				
				           + currentdate.getHours() + ":"  
				
				           + currentdate.getMinutes() + ":" 
				
				           + currentdate.getSeconds();
			var d = Date.parse(datetime)+"";
			
		   var data = {

			userid: 1,
			message: message,
			datetime:datetime,
		    datetime1:d,
		    status:0

		   }

		   

		   var updates = {};

		   updates['/messageuser/<%=uipddress%>/' + uid] = data;

		   firebase.database().ref().update(updates);

		   document.getElementById('message').value="";

		//   alert('The user is created successfully!');

	   }

  }

  

  function reload_page(){

   window.location.reload();

  }

  

 </script>

  <script type="text/javascript">

 	function sendbtnclick() {

 		document.getElementById("sendbtnid").style.display = "none";

 		document.getElementById("msgDivId").style.display = "block";

	}

 	function hideMsgFnc() {

 		document.getElementById("msgDivId").style.display = "none";

 		document.getElementById("sendbtnid").style.display = "block";

	}
 	

 </script>
 <script type="text/javascript">
 function validateform()
	{
		
		var email = document.getElementById("inputEmail").value;
		
		
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(email.match(mailformat))
	{
		
	}
	else
	{
	alert("You have entered an invalid email address!");
	document.getElementById("inputEmail").focus();
	return false;
	}

	
	}
 </script>
<script>
  var running = false
    function send() {
	  //alert("nn");
       
        var msg = document.getElementById("message").value
        if (msg == ""){
            return
        }else{
       // running = true
        addMsg(msg)
        window.setTimeout(savemessage, 800, msg)
        }
    }
    function addMsg(msg) {
        var div = document.createElement("div");
        div.innerHTML = "<span style='flex-grow:1'></span><div class='chat-message'>" + msg + "</div>"
        div.className = "chat-message-div"
        document.getElementById("message-box").appendChild(div)
    }
     function addResponseMsg(msg) {
        var div = document.createElement("div");
        div.innerHTML = "<div class='chat-message'>" + msg + "</div>"
        div.className = "chat-message-div"
        document.getElementById("message-box").appendChild(div)
        running = false
    }
    document.getElementById("message").addEventListener("keyup", function (event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            send()
        }
    });
</script>
</html>