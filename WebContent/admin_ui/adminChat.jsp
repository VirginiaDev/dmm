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
String uipddress=(localip+systemipaddress).replace(".", "");
 %>
	<div id="wrapper">

		<%@ include file="admin-header.jsp"%>
		<%@ include file="admin-sidebar.jsp"%>
		<!-- Navigation -->
		<div id="page-wrapper" id="top__space">
			<div class="pad-20"></div>
			<div class="row"></div>
			<!-- /.row -->
			<div id="search" class="tab-pane fade in active">

				<!--main content start-->
				<table id="myTable" class="table table-striped table-bordered"
					width="100%" cellspacing="0">

					<tr>
						<th>Date Time</th>
						<th>Message</th>
						<th>Action</th>
					</tr>

					<tbody id="demo">

					</tbody>
				</table>
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
   if(inval==''){
	  alert("Please Fill the blank"); 
   }else{
	   document.getElementById("btn-chat").click();
   }
  
  }
});
</script>
		<script>
		var arrayList = [];
  var databaseRef = firebase.database().ref('messageuser/');

  var rowIndex = 1;
  var rowIndex1 = 1;
  
 window.checkfirst=true;
 window.rowid=1;
 var firbasedata = [];
 var date1="2019/1/9 @ 14:30:44";
 var k=0;
 databaseRef.orderByChild('timestamp').once('value', function(snapshot) {
	
    snapshot.forEach(function(childSnapshot) {
    	var k1=snapshot.numChildren();
    	 
    	
    	  window.rowid= window.rowid+1;
    	var childKey = childSnapshot.key;
		var childData = childSnapshot.val();
		
		 
		  var userdatabaseRef = firebase.database().ref('messageuser/'+childKey+"/");
		  userdatabaseRef.orderByChild('timestamp').limitToLast(1).on("value", function(snapshot) {
			  
			  k++;
			  snapshot.forEach(function(childSnapshot) {
				  var childKey1 = childSnapshot.key;
				  var childData = childSnapshot.val();
				 var userid=childData.userid;
				
				  if(window.checks){
					  for (var i = 0; i < arrayList.length; i++) {
							if(arrayList[i].id==childKey){
								arrayList[i].message=childData.message;
								arrayList[i].datetime=childData.datetime;
								arrayList[i].status=childData.status;
								arrayList[i].datetime1=childData.datetime1;
							}
							 
							}
					  sortdata(JSON.stringify(arrayList));
					
					//  alert(x.rowIndex);
					
				  }else{
					  var employeeObject1 = new Employee(childKey, childData.message, childData.datetime,childData.status,childData.datetime1);
					  arrayList.push(employeeObject1);
					  console.log(JSON.stringify(arrayList)); 
				  }
				  if(k==k1){
				   		 console.log("There are "+snapshot.numChildren()+" messages");
				   		sortdata(JSON.stringify(arrayList));
				   	 }
				  
					  var checkstatus=childData.status;
					 
					 // date1=childData.datetime;
					
					
				    });
			  
			 
			});
		 
		 
			  
    });
    window.checkfirst=false;
  });
 console.log(JSON.stringify(arrayList));
 
 function Employee(id, message, datetime,status,datetime1) {
	
	    this.id = id;
	    this.message = message;
	    this.datetime = datetime;
	    this.status = status;
	    this.datetime1 = datetime1;
	}
 function sortdata(myJSON) {
	window.checks=true;

	 var xhttp = new XMLHttpRequest();
	 xhttp.onreadystatechange = function() {
	   if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("demo").innerHTML = this.responseText;
	   }
	 };
	 xhttp.open("POST", "getFirebasedat.jsp", true);
	 xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	 xhttp.send("firbasedata="+myJSON);
}
  function reload_page(){
   window.location.reload();
  }
  if(window.checks){
	  alert("kjfhkds"+window.checks);
	  databaseRef.orderByChild('timestamp').once('value', function(snapshot) {
			
		    snapshot.forEach(function(childSnapshot) {
		    	var k1=snapshot.numChildren();
		    	 
		    	 var table = document.getElementById("myTable");
		    	  //var row = table.insertRow(window.rowid);
		    	//  var cell1 = row.insertCell(0);
		    	 // var cell2 = row.insertCell(1);
		    	 // var cell3 = row.insertCell(2);
		    	  window.rowid= window.rowid+1;
		    	var childKey = childSnapshot.key;
				var childData = childSnapshot.val();
				
				 
				  var userdatabaseRef = firebase.database().ref('messageuser/'+childKey+"/");
				  userdatabaseRef.orderByChild('timestamp').limitToLast(1).on("value", function(snapshot) {
					  
					  k++;
					  snapshot.forEach(function(childSnapshot) {
						  var childKey1 = childSnapshot.key;
						  var childData = childSnapshot.val();
						 var userid=childData.userid;
						 var employeeObject1 = new Employee(childKey, childData.message, childData.datetime,childData.status,childData.datetime1);
						  arrayList.push(employeeObject1);
						  console.log(JSON.stringify(arrayList));
						
						  if(k==k1){
						   		 console.log("There are "+snapshot.numChildren()+" messages");
						   		sortdata(JSON.stringify(arrayList));
						   	 }
						   	 alert(k==k1);
						 
							  var checkstatus=childData.status;
							 
							 // date1=childData.datetime;
							
							
						    });
					  
					 
					});
				 
				 
					  
		    });
		    window.checkfirst=false;
		  });
  }
 </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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