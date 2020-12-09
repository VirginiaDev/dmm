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

int onlineStatus=apiController.adminOnlineStatus();

System.out.println("ooooooooo"+onlineStatus);

if(onlineStatus==0){

	%>

		<button class="btn btn-primary sendbtn" onclick="sendbtnclick1();" id="sendbtnid1" style=" border-radius: 30px;">

		Help

		</button>

	<%

}else{

	%>

	<button class="btn btn-primary sendbtn" onclick="sendbtnclick();" id="sendbtnid">Chat</button>

	<%

}

%>





<div class="row" style="display: none;" id="msgDivId">

		

			<div class="chatbox chatbox22 chatbox--tray"  >

				<div class="chatbox__title chath51">

					<h5>

						<div class="cha-t"><a href="javascript:void()">Chat</a></div>

						<div class="min-s"><a href="javascript:void()" onclick="hideMsgFnc()">
						<span> <i class="fa fa-minus" aria-hidden="true"></i></span></a></div>

					</h5>

					

				</div>

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

							<button class="btn bt_bg  btn-primary form-control" id="btn-chat" onclick="savemessage();">Send</button>

						</span>

					</div>

				</div>

			</div>



		</div>
       <div class="chatbox1 chatbox1--tray chatbox1--empty" style="display: none; z-index: 999999; " id="msgDivId1">

    <div class="chatbox1__title">

        <h5><a href="#">Customer Service</a></h5>

        <button class="chatbox1__title__tray" onclick="hideMsg1();">

            <span></span>

        </button>

        

    </div>

    

    <form class="chatbox1__credentials" action="ChatBox" method="post" onsubmit="return validateform()">

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
        <button type="submit" class="btn btn-success btn-block">Enter Chat</button>
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

		  var userid=childData.userid;

		  if(userid==1){

			  

			  li.classList.add("class", "chatbox__body__message");

				li.classList.add("class", "chatbox__body__message--left"); 

			 

		  }else{

		

			  li.classList.add("class", "chatbox__body__message");

			  li.classList.add("class", "chatbox__body__message--right"); 

		    	

		  }

		  p.appendChild(document.createTextNode(childData.message));

		  var datediv = document.createElement("div");

		  datediv.classList.add("class", "chatbox_timing");

		  var dateul = document.createElement("ul");

		  var dateli = document.createElement("li");

		  var datei = document.createElement("i");

		  datei.classList.add("class", "fa");

		  datei.classList.add("class", "fa-calendar");

		  dateli.appendChild(datei);

		  dateli.appendChild(document.createTextNode(childData.datetime));

		  dateul.appendChild(dateli);

		  datediv.appendChild(dateul);

		  p.setAttribute("id", document.createTextNode(childKey));
		  p.setAttribute("class","typeText");
		  p.style.wordWrap ="break-word";
		  li.appendChild(datediv);

		  li.appendChild(p);

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

					  dateli.appendChild(document.createTextNode(childData.datetime));

					  dateul.appendChild(dateli);

					  datediv.appendChild(dateul);

					  p.setAttribute("id", document.createTextNode(childKey)); 
					  p.setAttribute("class","typeText");
					  p.style.wordWrap ="break-word";
					 

					  li.appendChild(datediv);

					  li.appendChild(p);

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
				
				           + currentdate.getDate() + " @ "  
				
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
.class.fa.fa-calendar {

    position: relative;

    right: 8px;

    font-size: 11px;

    color: #989898;

}
#btn-input {
    padding: 16px 10px;
}
#btn-chat {
    border-color: #ff7f66;
    background-color: #ff7f66 !important;
}
.sendbtn {
    background-color: #ff7f66;
    border-radius: 50px;
    border-color: #ff7f66;
    padding: 20px;
    position: relative;
    left: 108em;
    border:1px solid;
}

#msgDivId {
    width: 25%;
    background-color: #ccc;
    margin: 0 auto;
    left: 446px;
    position: relative;
    z-index: 999999;
}
#listul {
    background-color: #e4e4e4;
    padding: 1px;
    height: 330px;
    overflow: scroll;
}
.chatbox__title.chath51 {
    background-color: #000;
    padding: 10px;
    /* color: #ffff; */
}
.class.chatbox_timing li {
    list-style: none;
}
.class.chatbox_timing {
    width: 100%;
}
.cha-t {
    float: left;
    width: 96%;
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

.typeText {
    background-color: #ffff;
    width: 44%;
    margin-left: 10px;
    padding: 10px;
    border-radius: 6px;
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
</style>
