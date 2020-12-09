<%@page import="dao.ApiController"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="org.json.JSONObject"%>

<%@page import="java.io.InputStreamReader"%>

<%@page import="java.io.BufferedReader"%>

<%@page import="java.net.URL"%>

<%@page import="java.net.InetAddress"%>

<link rel="stylesheet" href="css/chatbox.css">

<link

	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"

	rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<script

	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link

	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"

	rel="stylesheet" />

<link rel="stylesheet"

	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"

	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"

	crossorigin="anonymous">

<link rel="stylesheet" href="css/chatStyle.css">

<script type="text/javascript" src="js/chatjavascript.js"></script>

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

<%

ApiController apiController=new ApiController();

/*JSONObject jsonObject=new JSONObject();

apiController.getchat(jsonObject);

System.out.println(jsonObject.toString());*/

//int onlineStatus=apiController.adminOnlineStatus();
int onlineStatus=1;
System.out.println("ooooooooo"+onlineStatus);

if(onlineStatus==0){

	%>

		<button class="btn btn-primary sendbtn" onclick="sendbtnclick1();" id="sendbtnid1" style=" border-radius: 30px;">

		Help

		</button>

	<%

}else{

	%>

	<button class="btn btn-primary sendbtn" onclick="sendbtnclick();" id="sendbtnid"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>

	<%

}

%>





<div class="row" style="display: none;" id="msgDivId">

		<div class="chatbox chatbox22 chatbox--tray"  >

				<div class="chatbox__title chath51">
				
                    <div class="cha-t"><a href="javascript:void()">Logo</a></div>
                       <div class="min-s"><a href="javascript:void()" onclick="hideMsgFnc()">
						<span class="hi">Hi there &nbsp;<i class="fa fa-hand-paper-o" aria-hidden="true"></i></span>
						<span> <i class="fa fa-times" aria-hidden="true"></i></span></a></div>

				         <div class="btn-group" id="custom-list">
							<button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							 </button>
							  <div class="dropdown-menu">
							    <a class="dropdown-item" href="#">Action</a>
							    <a class="dropdown-item" href="#">Another action</a>
							  
							  </div>
							</div>
				</div>
                 <div class="rp"><i class="fa fa-circle" aria-hidden="true"></i>&nbsp;&nbsp;We reply immediately</div>
				<div class="chatbox__body" id="listul">

				</div>

				<div class="panel-footer">

					<div class="input-group">

						<input id="btn-input" type="text" name="btn-input"

							class="form-control input-sm chat_set_height"

							placeholder="Type your message here..." tabindex="0" dir="ltr"

							spellcheck="false" autocomplete="off" autocorrect="off"

							autocapitalize="off" contenteditable="true" /> <span

							class="input-group-btn">
                            
							<button class="btn bt_bg  btn-primary form-control" id="btn-chat" onclick="savemessage();"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                           
						</span>
					 
					</div>

				</div>
 <span class="attach"><i class="fa fa-paperclip" aria-hidden="true"></i></span>
			</div>



		</div>
       <div class="chatbox1 chatbox1--tray chatbox1--empty" style="display: none; z-index: 999999; " id="msgDivId1">

    <div class="chatbox1__title">
        <a href="#">Customer Service</a>
        <button class="chatbox1__title__tray" onclick="hideMsg1();"></button>
    </div>

    

    <form class="chatbox1__credentials" action="../ChatBox" method="post" onsubmit="return validateform()">

        <div class="form-group">

            <label for="inputName">Name:</label>

            <input type="text" class="form-control" id="inputName" required name="name">

        </div>

        <div class="form-group">

            <label for="inputEmail">Email:</label>

            <input type="email" class="form-control" id="inputEmail" required name="email" >

        </div>

          <div class="form-group">

            <label for="inputEmail">Message:</label>

           <textarea class="form-control" placeholder="Write something interesting" name="message"></textarea>

        </div>
        <button type="submit" class="btn btn-success btn-block">Leave the Message</button>
    </form>
</div>

</body>

<script type="text/javascript">

  function sendbtnclick1() {

  document.getElementById("sendbtnid1").style.display = "none";

  document.getElementById("msgDivId1").style.display = "block";

}

  function hideMsg1() {

	

	  document.getElementById("msgDivId1").style.display = "none";

	  document.getElementById("sendbtnid1").style.display = "block";

}

 </script>

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"

		integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="

		crossorigin="anonymous"></script>

	<script

		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">

	</script>

		

		<script>

	var input = document.getElementById("btn-input");



	input.addEventListener("keyup", function(event) {

  if (event.keyCode === 13) {

	 

   event.preventDefault();

   var inval= document.getElementById("btn-input").value ;

   if(inval.trim()==''){

	  alert("Please Fill the blank"); 

   }else{

	   document.getElementById("btn-chat").click();

   }

  

  }

});

</script>

		

		 <script>
 var databaseRef = firebase.database().ref('messageuser/<%=uipddress%>/');



  var rowIndex = 1;

  var rowIndex1 = 1;

  

 window.checkfirst=true;

  

 databaseRef.once('value', function(snapshot) {

	  

    snapshot.forEach(function(childSnapshot) {

    

    	

    	var childKey = childSnapshot.key;

		var childData = childSnapshot.val();

    	var ul = document.getElementById("listul");

		  var li = document.createElement("div");

		  var p = document.createElement("p");
		  var span = document.createElement("span");
		  var userid=childData.userid;

		  if(userid==1){

			  

			  li.classList.add("class", "chatbox__body__message");

				li.classList.add("class", "chatbox__body__message--left"); 

			 

		  }else{

		

			  li.classList.add("class", "chatbox__body__message");

			  li.classList.add("class", "chatbox__body__message--right"); 

		    	

		  }

		  p.appendChild(document.createTextNode(childData.message));
		  span.appendChild(document.createTextNode(childData.datetime));
		  var datediv = document.createElement("div");

		  datediv.classList.add("class", "chatbox_timing");

		  var dateul = document.createElement("ul");

		  var dateli = document.createElement("li");

		  var datei = document.createElement("i");

		  datei.classList.add("class", "fa");

		  datei.classList.add("class", "fa-calendar");

		  dateli.appendChild(datei);

		  

		  dateul.appendChild(dateli);

		  datediv.appendChild(dateul);

		  p.setAttribute("id", document.createTextNode(childKey));
		  p.setAttribute("class","typeText");
		  p.style.wordWrap ="break-word";
		  span.setAttribute("style","margin-left:24px");
		  li.appendChild(p);
		  li.appendChild(span);
		  ul.appendChild(li);

		  ul.scrollTop = ul.scrollHeight;

		

   

    });

    window.checkfirst=false;

  });

	

		databaseRef.orderByChild('timestamp').limitToLast(1).on("value", function(snapshot) {

			

			  //alert(window.checkfirst);

			

			  snapshot.forEach(function(childSnapshot) {

				  var childKey = childSnapshot.key;

				  var childData = childSnapshot.val();
				   window.uchildKey=childKey;
				  var ul = document.getElementById("listul");

				  var li = document.createElement("div");

				  var p = document.createElement("p");
				  var span = document.createElement("span");
				  var userid=childData.userid;

				  if(window.checkfirst==false){

					 

					  if(userid==1){

						  

						  li.classList.add("class", "chatbox__body__message");

							li.classList.add("class", "chatbox__body__message--left"); 

						 

					  }else{

					

						  li.classList.add("class", "chatbox__body__message");

						  li.classList.add("class", "chatbox__body__message--right"); 

					    	

					  }
					  if(window.uchildKey==window.uchildKey1){
						  
					  }else{
					  window.uchildKey1=childKey;
					  p.appendChild(document.createTextNode(childData.message));

					  var datediv = document.createElement("div");

					  datediv.classList.add("class", "chatbox_timing");

					  var dateul = document.createElement("ul");

					  var dateli = document.createElement("li");

					  var datei = document.createElement("i");

					  datei.classList.add("class", "fa");

					  datei.classList.add("class", "fa-calendar");

					  dateli.appendChild(datei);

					  span.appendChild(document.createTextNode(childData.datetime));

					  dateul.appendChild(dateli);

					  datediv.appendChild(dateul);

					  p.setAttribute("id", document.createTextNode(childKey)); 
					  p.setAttribute("class","typeText");
					  p.style.wordWrap ="break-word";
					  span.setAttribute("style","margin-left:24px");
					  li.appendChild(p);
					  li.appendChild(span);


					  ul.appendChild(li);

					  ul.scrollTop = ul.scrollHeight;
					  }
				  }



				    });

			  

			 

			});

	

  function savemessage(){

	  var inval= document.getElementById("btn-input").value ;

	   if(inval.trim()==''){

		  alert("Please Fill the blank"); 

	   }else{

		   var message = document.getElementById('btn-input').value;

		   

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

		   document.getElementById('btn-input').value="";

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
<style>
.form-control {
    background-color: #f5f5f5 !important;
    border: 0px solid;
}
.attach {
    
    position: relative;
    bottom: 30px;
    left: 20px;
}
.form-control:focus {
    border-color: #66afe9;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6) !important;
    box-shadow: inset 0 0px 0px rgba(0,0,0,.075), 0 0 0px rgba(102,175,233,.6) !important;
   
}
.fa-times:before {
    content: "\f00d";
    position: relative;
    top: 7px;
}

.chatbox.chatbox22.chatbox--tray {
    box-shadow: 0px 3px 7px 1px #b9b9b9;
        height: 511px;
        border-radius: 20px;
}
.rp {
    padding: 13px;
    background-color: #383838;
    color: #fff;
}
.typeText {
    background-color: #ffff;
    width: 44%;
    margin-left: 10px;
    padding: 10px;
    border-radius: 30px !important;
}
.class.chatbox_timing li {
    background-color: #ffff;
    width: 52% !important;
    padding: 14px!important;
    border-radius: 30px !important;
    float: right;
    font-size: 10px;
}
.dropdown-menu {
    position: absolute;
    top: 100%;
    left: -133px;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 31px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}

#custom-list{
    position: relative;
    right: 43px;
    bottom: 20px;
}
.btn-danger {
    color: #fff;
    background-color: #d9534f00;
    border-color: #d43f3a00;
}
.btn.btn-danger.dropdown-toggle.dropdown-toggle-split:hover {
    background-color: transparent;
    border-color: transparent;
}
.btn.btn-danger.dropdown-toggle.dropdown-toggle-split:active {
    background-color: transparent;
    border: transparent;
}
.btn-danger.active, .btn-danger:active, .open>.dropdown-toggle.btn-danger {
    color: #fff;
    background-color: transparent !important;
    border-color: transparent !important;
}
.dropdown-toggle::after {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: .255em;
    vertical-align: .255em;
    content: "";
    border-top: -0.7em solid;
    border-right: 0em solid transparent !important;
    border-bottom: 0;
    border-left: 0em solid transparent!important;
    content: "\f142";
    font-family: FontAwesome;
}
.hi {
    float: left;
    width: 63%;
    font-size: 18px;
    color: #ffff;
}
.class.fa.fa-calendar {

    position: relative;

    right: 8px;

    font-size: 11px;

    color: #989898;

}
#btn-input {
    padding: 16px 10px;
    width: 97%;
}

.panel-footer {
       padding: 10px 15px;
    background-color: #ffffff;
    border-top: 0px solid #ddd;
    border-bottom-right-radius: 18px;
    border-bottom-left-radius: 18px;
    border-top-left-radius: 18px;
    border-top-right-radius: 18px;
}
#btn-chat:hover {
    background-color: #000 !important;
    transition: ease 1s;
}
#btn-chat {
    border-color: #ff7f66;
    background-color: #ff7f66 !important;
    border-radius: 50px;
    height: 60px;
    width: 60px;
    box-shadow: 4px 4px 20px 4px #b1b1b1;
}
.sendbtn {
    background-color: #ff7f66;
    border-radius: 50px;
    border-color: #ff7f66;
    padding: 20px;
    position: relative;
    left: 86em;
    border:1px solid;
}

#msgDivId {
    width: 25%;
    background-color: #fff;
    margin: 0 auto;
    left: 446px;
    position: relative;
    z-index: 999999;
}

#listul {
    background-color: #e4e4e4;
    padding: 1px;
    height: 330px;
    overflow-y: scroll;
}

.chatbox__title.chath51 {
    background-color: #000;
    padding: 10px;
    /* color: #ffff; */
    border-top-right-radius: 18px;
    border-top-left-radius: 18px;
}
.class.chatbox_timing li {
    list-style: none;
}
.class.chatbox_timing {
    width: 100%;
}
.cha-t {
    float: left;
    width: 25%;
    /* color: #fff; */
}
.cha-t a {
    color: #fff;
}
.fa-minus:before {
    content: "\f068";
    color: #fff;
}
.class.chatbox_timing ul {
    text-align: right;
    padding-top: 10px;
    padding-right: 10px;
}
.class.chatbox_timing li {
    background-color: #ffff;
    width: 45%;
    padding: 10px;
    border-radius: 5px;
    float: right;
    font-size: 10px;
}
.fa.fa-times {
    color: #fff;
}
.typeText {
    background-color: #ffff;
    width: 92%;
    margin-left: 10px;
    padding: 14px;
    border-radius: 6px;
    margin-top: 12px;
    border: 1px solid #ccc;
    font-size: 14px;
}
#chat {
    position: fixed;
    bottom: 0px;
    z-index: 999999;
}
.btn-primary:hover {
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
.btn-primary:hover {
    color: #fff;
    background-color: #000000;
    border-color: #000000;
    transition-duration: 0.3s;
    transform: scale(1);
    transition-timing-function: ease-out;
    transition-duration: 0.3s;
}
@media only screen and (min-width: 320px) and (max-width: 991px) {#msgDivId {
    width: 95%;
    background-color: #ccc;
    margin: 0 auto;
    left: 0;
    position: relative;
    z-index: 999999;
}
.sendbtn {
    background-color: #ff7f66;
    border-radius: 50px;
    border-color: #ff7f66;
    padding: 20px;
    position: relative;
    left: 0px;
    border: 1px solid;
}
.cha-t {
    float: left;
    width: 90%;
    /* color: #fff; */
}
}

/***********Admin Help Desk************/

#msgDivId1 {
    background-color: #f7f7f7;
  
    border: 0px solid #ccc;
    position: relative;
    left: 73em;
}
.form-control {
    background-color: #fff !important;
}
.btn.btn-success.btn-block {
    background-color: #ff7f66;
    /* margin: 10px; */
    border-color: #ff7f66;
    width: 89%;
    margin-left: 13px;
    margin-top: 16px;
    margin-bottom: 0;
}
.chatbox1__title__tray {
    position: relative;
    bottom: 4px;
}
.chatbox1__title a {
    color: #fff;
    margin-right: 74px;
}
.chatbox1__credentials .form-group {
    margin-bottom: 6px;
    padding-left: 15px;
    padding-right: 15px;
    padding-top: 10px;
}
.chatbox1__title {
    background-color: #000;
    color: #fff;
    padding: 15px;
}
</style>
<script>
var data=getDate("2020/9/1 20:34:42");
alert(data);
function getDate(date){
	var d1 = new Date();
var d2 = new Date();
d2.setDate(d2.getDate()-1);
var d = new Date(date);
var my=d.getFullYear()+"/"+(d.getMonth() + 1)+"/"+d.getDate();
var myDate=new Date(my);
var current=d1.getFullYear()+"/"+(d1.getMonth() + 1)+"/"+d1.getDate();
var currentDate=new Date(current);
var previous=d2.getFullYear()+"/"+(d2.getMonth() + 1)+"/"+d2.getDate();
var previousDate=new Date(previous);

if(myDate.getTime() === currentDate.getTime()){
var data="Today "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
return data;
}else if(myDate.getTime() === previousDate.getTime()){
var data="Yesterday "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();	
return data;
}else{
var data=d.getFullYear()+"/"+(d.getMonth() + 1)+"/"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();	
return data;
}
}

</script>
