<%@page import="beans.base_urls"%>
<%@page import="beans.free_audit"%>
<%@page import="dao.ApiController"%>
<%@page import="java.util.Random"%>


<%@page import="java.util.ArrayList"%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%@page import="org.apache.log4j.Logger"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#pagination1 {
    display: block;
    position: relative;
    left: 300px;
    bottom:100px;
}
select.msg_send_btn {
    width: 5em;
    height: 3em;
}
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropup {
  position: relative;
  display: inline-block;
}

.dropup-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  bottom: 50px;
  z-index: 1;
}

.dropup-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropup-content a:hover {background-color: #ccc}

.dropup:hover .dropup-content {
  display: block;
}

.dropup:hover .dropbtn {
  background-color: #2980B9;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="../admin_template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 

    <!-- MetisMenu CSS -->
    <link href="../admin_template/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../admin_template/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../admin_template/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../admin_template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script defer src="../admin_template/js/fontawesome-all.js"></script>
	<link href="../admin_template/dist/css/style.css" rel="stylesheet">
		<link rel="stylesheet" href="../jQuery-plugin-progressbar.css">
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="../jQuery-plugin-progressbar.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
 <%
base_urls bu=new base_urls();
if(bu.mode.equals("live")){
	%>
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
<% }else if(bu.mode.equals("test")){
	%>
	<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyCQ8_qoEK_8VPvmxfVL_0l74-XJqNeNkCw",
    authDomain: "vnsdmmtestchatbot.firebaseapp.com",
    databaseURL: "https://vnsdmmtestchatbot.firebaseio.com",
    projectId: "vnsdmmtestchatbot",
    storageBucket: "vnsdmmtestchatbot.appspot.com",
    messagingSenderId: "56333904124",
    appId: "1:56333904124:web:007d1585b541ebc5050f79",
    measurementId: "G-94V9SY89TM"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
<% }
%>
 
</head>
<body>
<%
String chatid=request.getParameter("chatid");
String actionn=request.getParameter("action");
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
  <input type="hidden" id="chatid" value="<%=chatid%>">
  <input type="hidden" id="adminid" value="<%=admin_id%>">
  <input type="hidden" id="admin_name" value="<%=admin_name%>">
  
	<div class="mesgs">
	  <div class="msg_history" id="listdiv">
	  </div>
	  <%
	  System.out.println("admin nameee==="+admin_name);
	  if(actionn.equals("chat")){
	  %>
	  <div class="type_msg">
		<div class="input_msg_write" id="input_div_id">
		  <input type="text" class="write_msg" placeholder="Type a message" id="btn-input" name="btn-input" required="true" >
		  <button class="msg_send_btn" type="button" id="btn-chat" onclick="savemessage();"><i class="fa fa-paper-plane" aria-hidden="true" ></i></button>
		<!--  <div class="dropup" id="drop">
  <button class="dropbtn">Options</button>
  <div class="dropup-content">
    <a><button>Put on hold</button></a>
    <a><button>End Conversation</button></a>
    
  </div>-->
</div>
		</div>
	  </div>
	  <%} %>
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
		  var adminid=childData.admin_id;
		  var default_msg=childData.default_msg;
		  var session_admin_id=document.getElementById('adminid').value;

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
			 /* if(default_msg==0){
			  if(adminid!=session_admin_id){
				  document.getElementById('input_div_id').style.display='none';
			  }else {
				  document.getElementById('input_div_id').style.display='block';
			  }
		  }*/
			  var checkstatus=childData.status;
			  if(checkstatus==0){
				  var data = {
						  	datetime: childData.datetime,
						  	message: childData.message,
						  	userid: childData.userid,
						  	datetime1:childData.datetime1,
						    status: 1,
						    admin_id:childData.admin_id,

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
								    status: 1,
								    admin_id:childData.admin_id,
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
									    status: 1,
									    admin_id:childData.admin_id,
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
											    status: 1,
											    admin_id:childData.admin_id,
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

	  alert("working");
   var message = document.getElementById('btn-input').value;
   var chatid = document.getElementById('chatid').value;
   alert("message=="+message+"===chatid=="+chatid);
  	if(message.trim()==""){
  		 alert("Please Fill the blank"); 
  	//	document.getElementById('btn-input').setCustomValidity('Please Fill the blank');
  		//document.getElementById('input_div_id').style.borderColor="red";
  		return false;
  	}
  	updateDb(chatid);
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
    status:1,
    default_msg:0,
    admin_id:document.getElementById('adminid')
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
 <script>
function updateDb(chatid){
	
	
	var adminid=document.getElementById('adminid').value;
	var admin_name=document.getElementById('admin_name').value;
	 $(document).ready(function() {
	        
	        
	        $.ajax({
	        url: "../save_chat_initiate_details.jsp?action=updateByAdmin",
	        type: "post",
	        data: {
	        	chatid:chatid,
	        	adminid:adminid,
	        	admin_name:admin_name,
	        	
	        	
	        success : function(data){
	       // alert(data);
	        	//document.getElementById("chatform").reset();
	    		//document.getElementById("chatbot").style.display='block';
	        }
	        }
	        });
	        
	        });	
}
</script>
 
 <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->

    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->

    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->

    <script src="../vendor/raphael/raphael.min.js"></script>

    <script src="../vendor/morrisjs/morris.min.js"></script>

    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->

    <script src="../dist/js/sb-admin-2.js"></script>
 <script type="text/javascript">
 var element = document.getElementById("imageManagement");
 element.classList.add("active");
 </script>
 
 <style>
 .messaging {
    background-color: #e4e4e4;
    padding: 20px;
    margin-top: 20px;
}
.class.sent_msg p {
    background-color: #fff;
    padding: 10px;
    width: 100%;
    border-radius: 4px;
    margin-top: 11px;
}
.class.time_date {
    background-color: #fff;
    padding: 10px;
    text-align: right;
    width: 16%;
    display: block;
    border-radius: 4px;
    margin-left: 60em;
}
.type_msg {
    background-color: #fff;
    padding: 20px;
    margin-top: 20px;
}
#btn-input {
    width: 87%;
    padding: 10px;
    border: 1px solid #ccc;
}
#btn-chat {
    padding: 13px;
    border: 1px solid #ccc;
}
div#drop {
    width: 5%;
    /* height: 62%; */
}
 </style>
</body>
</html>