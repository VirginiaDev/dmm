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
		<link rel="../stylesheet" href="../jQuery-plugin-progressbar.css">
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
			
			
						<input type="hidden" id="adminid" value="<%=admin_id%>">
			<div id="search" class="tab-pane fade in active">

				<!--main content start-->
				<table id="myTable" class="table table-striped table-bordered"
					width="100%" cellspacing="0">

					<tr>
						<th>Date Time</th>
						<th>Message</th>
						<th>Admin in conversation</th>
						<th>Chat Status</th>
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
	   //  alert(document.getElementById("demo").innerHTML);
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

 <script type="text/javascript">
 var element = document.getElementById("imageManagement");
 element.classList.add("active");
 </script>

    <!-- jQuery -->
    <script src="../admin_template/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../admin_template/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="../admin_template/vendor/metisMenu/metisMenu.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="../admin_template/vendor/raphael/raphael.min.js"></script>
    <script src="../admin_template/vendor/morrisjs/morris.min.js"></script>
    <script src="../admin_template/data/morris-data.js"></script>
    <script src="../admin_template/dist/js/sb-admin-2.js"></script>
    

</body>
</html>