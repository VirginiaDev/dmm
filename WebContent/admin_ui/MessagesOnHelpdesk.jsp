<%@page import="beans.chat"%>
<%@page import="beans.contact"%>
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

</head>
<body>


<%
String search="";
if(request.getParameter("search")!=null && !request.getParameter("search").isEmpty()){
	search=request.getParameter("search");
	System.out.println("search111=>>"+search);
	search =  search.replaceAll("'", "''");
	System.out.println("search222=>>"+search);

}else {
	search="0";
	System.out.println("search333=>>"+search);
}

%>
<div id="wrapper">
       <!-- Navigation -->
       
<%@ include file = "admin-header.jsp" %>
  <%@ include file = "admin-sidebar.jsp" %> 

        <div id="page-wrapper">
        <div class="pad-20"></div>
            <div class="row">
            
                
     <section class="row sea">
            <section class="col-md-12">
      

						<!-- <a href="ExportParkingBoysToExcel"> <button class="btn btn-primary"> Export</button></a>  -->
</section>


</section> 
     </div>
            <!-- /.row -->
              <div id="search" class="tab-pane fade in active">
    	<div class="row sea">
					<section class="search-tab">
        <div class="col-sm-6">
            <div id="imaginary_container"> 
            <form>
                <div class="input-group stylish-input-group">
             
                    	<input type="text" id="myInput" name="searchValue" class="form-control" placeholder="Search...">
              
                   
                    <span class="input-group-addon">
                       <button class="input-group-addon" style="padding: 0px 12px; border:none;" onclick="getCustomisedData()">	<i class="fa fa-search" aria-hidden="true"></i> </button>
                       
                    </span>
                </div>
                </form>
            </div>
        </div></section>
        
  <div class="col-sm-6 text-right">  
  <div id="imaginary_container">    
<select onChange="window.location.href=this.value" >
<%
String spageid = request.getParameter("page");
String totalpagecount = request.getParameter("totalpagecount");
if(spageid!=null){}else{
spageid="1";
}
if(totalpagecount!=null){}else{
totalpagecount="10";
}
%>
<option>Select</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=5">5</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=10">10</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=15">15</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=20">20</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=25">25</option>
<option value="freeAuditRequests.jsp?page=<%=spageid%>&totalpagecount=30">30</option>
</select>
</div></div>   

</div>
    <!--main content start-->
  		<table  id="myTable" class="table table-striped table-bordered" width="100%" cellspacing="0" >
  <thead>
            <tr>
                <th>Sr. No.</th>
                <th>Name</th>
     		 	<th>Email</th>
     		 	<th>Message</th>
     		 
     		 
      		
      		<!-- 	<th>Created at</th> -->
      		<!-- 	<th>Action</th> -->
            </tr>
            </thead>
    
     <%
                  int pageid = Integer.parseInt(spageid);
                  int checkpage = Integer.parseInt(spageid);
                  int pageid1 = Integer.parseInt(spageid);
                  int total = Integer.parseInt(totalpagecount);
                  if (pageid == 1) {
                  } else {
                  pageid = pageid - 1;
                  pageid = pageid * total + 1;
                  }
                  int count=1+((checkpage-1)*total);
                  int spotLeftCount=0;
           %>
             <tbody id="all" style="">
               <%
                  ApiController apiController=new ApiController();
                  ArrayList<chat> fa=apiController.fetchMessagesOnHelpDessk(search, pageid, total);
                 for(int i=0;i<fa.size();i++){
                	 
                
                 %>
      <tr>
     
      <td><%=count++%></td>
      <td><%=fa.get(i).getName()%></td>
      <td><%=fa.get(i).getEmail()%></td>
      <td><%=fa.get(i).getMessage()%></td>
     
      </tr>
<%} %>
        
     <tbody id="customised" style="">
                  
                  </tbody>
			</table>
  		


      
        </div>
        <!-- /#page-wrapper -->

    </div>
     <div class="pagination1" id="pagination1" style="display:block">
<%

int totalnopage = apiController.getContactRequestsCount(total, search);
System.out.println("totalnopage=="+totalnopage);
System.out.println("pageid1=="+pageid1);
int pre = pageid1 - 1;
System.out.println("pre=="+pre);
if (pre > 0) {
	System.out.println("pre > 0==");
%>
<a href="freeAuditRequests.jsp?page=<%=pageid1 - 1%>&totalpagecount=<%=totalpagecount%>&search=<%=search%>">&laquo;</a>
<%
}
%>

<%
for (int i = 1; i <= 10; i++) {
if (pre > 0 && totalnopage + 1 >= pre) {
	System.out.println("if====pre > 0 && totalnopage + 1 >= pre");
if (pageid1 == pre) {
	System.out.println("pageid1 == pre");
%>
<input type="hidden" id="tpc" value="<%=totalpagecount%>">
<input type="hidden" id="pageIddd" value="<%=pageid1%>">

<a href="freeAuditRequests.jsp?page=<%=pre%>&totalpagecount=<%=totalpagecount%>&search=<%=search%>"
class="active"><%=pre%></a>
<%
} else {
	System.out.println("else not pageid1 == pre");
%>
<a href="freeAuditRequests.jsp?page=<%=pre%>&totalpagecount=<%=totalpagecount%>&search=<%=search%>"><%=pre%></a>
<%
}
}
pre = pre + 1;
System.out.println(pre+" + 1=="+pre);
}
System.out.println("pageid12222=="+pageid1);
int next = pageid1 + 1;
System.out.println("next=="+next);
if (totalnopage + 1 >= next) {
	System.out.println("totalnopage + 1 >= next");
%>
<a
href="freeAuditRequests.jsp?page=<%=next%>&totalpagecount=<%=totalpagecount%>&search=<%=search%>">&raquo;</a>
<%
}
%>
</div>
<input type="hidden" id="totalpagecount" value="<%=totalpagecount%>&search=<%=search%>">
<div class="pagination2" id="pagination2" style="">

</div>
    <!-- /#wrapper -->

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
    
<script>
function getCustomisedData(){
	
	//alert("m woekinh");

	var search=document.getElementById('myInput').value;
alert(search);
	
	if(search.length==0){
		search='0';
	}

	//alert(search);
	$.ajax({
		url: "fetchCustomisedChats.jsp?search="+search,
		type: 'GET',
		data: null,
		success: function(data) {
	    alert(data);
		document.getElementById("all").style.display="none";

		document.getElementById("customised").innerHTML=data;
	//	PaginationCount();
		//var city_name = data;
		}
		});
	
	
}
</script>
<script>
function PaginationCount(){
	var search=document.getElementById("myInput").value;
	var reg=document.getElementById("registration").value;
	var spageid=document.getElementById("spageid").value;
	var totalpagecount=document.getElementById("totalpagecount").value;
	//alert("djcjdc");
	
	$.ajax({
		url: "fetchPaginationByAjaxSuperAdmin.jsp?page=freeaudit&search="+search+"&spageid="+spageid+"&totalpagecount="+totalpagecount,
		type: 'GET',
		data: null,
		success: function(data) {
		//$('#ratedemo').val(data);

		//document.getElementById("all").style.display="none";
		document.getElementById("pagination1").style.display='none';

		document.getElementById("pagination2").innerHTML=data;
		//var city_name = data;
		}
		});
}
</script>
</body>
</html>