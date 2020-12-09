<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="dist/css/sb-admin-2.css" rel="stylesheet">
<link href="css/adminChatStyle.css" rel="stylesheet">
<!-- Morris Charts CSS -->
<link href="vendor/morrisjs/morris.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script defer src="js/fontawesome-all.js"></script>
<link href="dist/css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="../jQuery-plugin-progressbar.js"></script>
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
</head>
<body>
<%
String chatid=request.getParameter("chatid");

 %>
	<div id="wrapper">

		<%@ include file="admin-header.jsp"%>
		<%@ include file="admin-sidebar.jsp"%>
		<!-- Navigation -->
		<div id="page-wrapper">
			<!-- /.row -->
			<div id="search" class="tab-pane fade in active">

				<!--main content start-->
				
<div class="messaging">
  <div class="inbox_msg">

	<div class="mesgs">
	  <div class="msg_history" id="listdiv">
	  </div>
	  <div class="type_msg">
		<div class="input_msg_write" id="input_div_id">
		  <input type="text" class="write_msg" placeholder="Type a message" id="btn-input" name="btn-input" required="true" >
		  <button class="msg_send_btn" type="button" id="btn-chat" onclick="savemessage();"><i class="fa fa-paper-plane" aria-hidden="true" ></i></button>
		</div>
	  </div>
	</div>
  </div>
</div>
</div>
			<!-- /#page-wrapper -->

		</div>
</div>
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
 

  var databaseRef = firebase.database().ref('messageuser/<%=chatid%>/');

  var rowIndex = 1;
  var rowIndex1 = 1;
  
 window.checkfirst=true;
  
 databaseRef.once('value', function(snapshot) {
	  
    snapshot.forEach(function(childSnapshot) {
    
    	
    	var childKey = childSnapshot.key;
		var childData = childSnapshot.val();
    	var listdiv = document.getElementById("listdiv");
		
		  var userid=childData.userid;
		  if(userid==0){
			  var divoutgoing = document.createElement("div");
			  divoutgoing.classList.add("class", "outgoing_msg");
			  var divSend = document.createElement("div");
			  divSend.classList.add("class", "sent_msg");
			  var p = document.createElement("p");
			  p.appendChild(document.createTextNode(childData.message));
			  p.style.wordWrap ="break-word";
			  divSend.appendChild(p);
			 
			  var span = document.createElement("span");
			  span.classList.add("class", "time_date");
			  span.appendChild(document.createTextNode(childData.datetime));
			  divSend.appendChild(span);
			  divoutgoing.appendChild(divSend);
			  listdiv.appendChild(divoutgoing);
			  var checkstatus=childData.status;
			  if(checkstatus==0){
				  var data = {
						  	datetime: childData.datetime,
						  	message: childData.message,
						  	userid: childData.userid,
						  	datetime1:childData.datetime1,
						    status: 1
						   }
						   
				 var updates = {};
				 updates['/messageuser/<%=chatid%>/' + childKey] = data;
				firebase.database().ref().update(updates);
			  }
					   
			
		  }else{
			
			  var divincome = document.createElement("div");
					  divincome.classList.add("class", "incoming_msg");
							
						  var divrecive = document.createElement("div");
						  divrecive.classList.add("class", "received_msg");
					  var divrecived = document.createElement("div");
					  divrecived.classList.add("class", "received_withd_msg");
					  var p = document.createElement("p");
					  p.appendChild(document.createTextNode(childData.message));
					  p.style.wordWrap ="break-word";
					   var span = document.createElement("span");
					  span.classList.add("class", "time_date");
					  span.appendChild(document.createTextNode(childData.datetime));
					  divrecived.appendChild(p);
					  divrecived.appendChild(span);
					  divrecive.appendChild(divrecived)
					  divincome.appendChild(divrecive)
			  		listdiv.appendChild(divincome);
					  var checkstatus=childData.status;
					  if(checkstatus==0){
						  var data = {
								  	datetime: childData.datetime,
								  	message: childData.message,
								  	userid: childData.userid,
								  	datetime1:childData.datetime1,
								    status: 1
								   }
								   
						 var updates = {};
						 updates['/messageuser/<%=chatid%>/' + childKey] = data;
						firebase.database().ref().update(updates);
					  }
					  
					
			  			 
		  }
		 
		
		
   
    });
    window.checkfirst=false;
    listdiv.scrollTop = listdiv.scrollHeight;
  });
	
		databaseRef.orderByChild('timestamp').limitToLast(1).on("value", function(snapshot) {
			  //alert(window.checkfirst);
			
			  snapshot.forEach(function(childSnapshot) {
				  var childKey = childSnapshot.key;
				  window.uchildKey=childKey;
				  var childData = childSnapshot.val();
					var listdiv = document.getElementById("listdiv");
				  var userid=childData.userid;
				  if(window.checkfirst==false){
					  if(window.uchildKey==window.uchildKey1){
						  
					  }else{
					  window.uchildKey1=childKey;
					  if(userid==0){
						  var divoutgoing = document.createElement("div");
						  divoutgoing.classList.add("class", "outgoing_msg");
						  var divSend = document.createElement("div");
						  divSend.classList.add("class", "sent_msg");
						  var p = document.createElement("p");
						  p.appendChild(document.createTextNode(childData.message));
						  p.style.wordWrap ="break-word";
						  divSend.appendChild(p);
						  var span = document.createElement("span");
						  span.classList.add("class", "time_date");
						  span.appendChild(document.createTextNode(childData.datetime));
						  divSend.appendChild(span);
						  divoutgoing.appendChild(divSend);
						  listdiv.appendChild(divoutgoing);
						  var checkstatus=childData.status;
						  if(checkstatus==0){
							  var data = {
									  	datetime: childData.datetime,
									  	message: childData.message,
									  	userid: childData.userid,
									  	datetime1:childData.datetime1,
									    status: 1
									   }
									   
							 var updates = {};
							 updates['/messageuser/<%=chatid%>/' + childKey] = data;
							firebase.database().ref().update(updates);
						  }
						
					  }else{
						
						  var divincome = document.createElement("div");
								  divincome.classList.add("class", "incoming_msg");
										
									  var divrecive = document.createElement("div");
									  divrecive.classList.add("class", "received_msg");
								  var divrecived = document.createElement("div");
								  divrecived.classList.add("class", "received_withd_msg");
								  var p = document.createElement("p");
								  p.appendChild(document.createTextNode(childData.message));
								  p.style.wordWrap ="break-word";
								   var span = document.createElement("span");
								  span.classList.add("class", "time_date");
								  span.appendChild(document.createTextNode(childData.datetime));
								  divrecived.appendChild(p);
								  divrecived.appendChild(span);
								  divrecive.appendChild(divrecived)
								  divincome.appendChild(divrecive)
						  		listdiv.appendChild(divincome);
								  var checkstatus=childData.status;
								  if(checkstatus==0){
									  
									  var data = {
											  	datetime: childData.datetime,
											  	message: childData.message,
											  	userid: childData.userid,
											  	datetime1:childData.datetime1,
											    status: 1
											   }
											   
									 var updates = {};
									 updates['/messageuser/<%=chatid%>/' + childKey] = data;
									firebase.database().ref().update(updates);
								  }
						  			 
					  }
					  listdiv.scrollTop = listdiv.scrollHeight;
				  }
				  }
				    });
			  
			 
			});
	
		 
	
 
	  
  
  function savemessage(){

   var message = document.getElementById('btn-input').value;
  	if(message.trim()==""){
  		 alert("Please Fill the blank"); 
  	//	document.getElementById('btn-input').setCustomValidity('Please Fill the blank');
  		//document.getElementById('input_div_id').style.borderColor="red";
  		return false;
  	}
 
   var uid = firebase.database().ref().child('messageuser/<%=chatid%>').push().key;
   var currentdate = new Date(); 
   var datetime =  currentdate.getFullYear() + "/"

			   + (currentdate.getMonth()+1)  + "/" 
			
			   + currentdate.getDate() + " @ "  
			
			   + currentdate.getHours() + ":"  
			
			   + currentdate.getMinutes() + ":" 
			
			   + currentdate.getSeconds();
		var d = Date.parse(datetime)+"";
	              
   var data = {
	userid: 0,
    message: message,
    datetime: datetime,
    datetime1:d,
    status:1
   }
   
   var updates = {};
   updates['/messageuser/<%=chatid%>/' + uid] = data;
   firebase.database().ref().update(updates);
   document.getElementById('btn-input').value="";
//   alert('The user is created successfully!');
  
  }
  

  
  
  
  function reload_page(){
   window.location.reload();
  }
  
 </script>
 <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->

    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->

    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->

    <script src="vendor/raphael/raphael.min.js"></script>

    <script src="vendor/morrisjs/morris.min.js"></script>

    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->

    <script src="dist/js/sb-admin-2.js"></script>
 <script type="text/javascript">
 var element = document.getElementById("imageManagement");
 element.classList.add("active");
 </script>
</body>
</html>