<%@page import="beans.homepage_photos"%>
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
      
            <!-- /.row -->
   
    <!--main content start-->
  		<table  id="myTable" class="table table-striped table-bordered" width="100%" cellspacing="0" >
  <thead>
            <tr>
                <th>Sr. No.</th>
                <th>Image</th>
     		 	<th>Last Updated</th>
     		 	<th>Link value</th>
     		 	<th>Edit</th>
     		 	
     		 
      		
      		<!-- 	<th>Created at</th> -->
      		<!-- 	<th>Action</th> -->
            </tr>
            </thead>
    
 
             <tbody id="all" style="">
               <%
                  ApiController apiController=new ApiController();
               	  ArrayList<homepage_photos> hp=apiController.fetchHomepagePhotos();
               	  for(int i=0;i<hp.size();i++){
                  
                 %>
      <tr>
     
      <td>ubuhb</td>
      <%
      String filepath="../".concat(hp.get(i).getFilename());
      System.out.println("filepathhh=="+filepath);
      %>
      <td><img src="<%=filepath%>" alt="<%=hp.get(i).getFilename()%>" class="image"/></td>
      <td><%=hp.get(i).getLast_updated()%></td>
      <td><a href="<%=hp.get(i).getLinks()%>"><%=hp.get(i).getLinks()%></a></td>
      <td>  
      <button href="#" type="button" class="btn btn-info " data-toggle="modal" data-target="#myModalPhoto<%=i%>">Edit Photo</button><br><br>
        <button href="#" type="button" class="btn btn-info " data-toggle="modal" data-target="#myModalLink<%=i%>">Edit Link</button><br><br>
  
  <!-- Modal photo -->
  <div class="modal fade" id="myModalPhoto<%=i%>" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </button>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" enctype="multipart/form-data" name="frm" id="frm" method="post" action="EditHomepagePhoto.jsp" >
                       <input type="hidden" name="context1" id="context1">
                        <fieldset class="fieldset">
                        
                                    <input type="hidden" class="form-control" name="id" multiple value="<%=hp.get(i).getId()%>">
                        
                            <div class="form-group">
                                <label class="col-md-12 col-sm-3 col-xs-12 control-label">Image</label>
                                <div class="col-md-12 col-sm-9 col-xs-12 pb-10">
                                    <input type="file" class="form-control" id="select_img" name="images" multiple>
                                </div>
                            </div>
							 </fieldset>
								 <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							        <input type="submit" value="SAVE" class="btn btn-primary">
							      
							      </div>
								 </form>
        </div>
     
      </div>
      
    </div>
  </div>
    <!-- Modal photo -->
  <div class="modal fade" id="myModalLink<%=i%>" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </button>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" name="frm" id="frm" method="post" action="EditHomepagePhotoUrl.jsp" >
                       <input type="hidden" name="context1" id="context1">
           
                        
                                    <input type="hidden" class="form-control" name="id" value="<%=hp.get(i).getId()%>">
                        
                            <div class="form-group">
                                <label class="col-md-12 col-sm-3 col-xs-12 control-label">Link</label>
                                <div class="col-md-12 col-sm-9 col-xs-12 pb-10">
                                    <input type="text" class="form-control" id="links" name="links" value="<%=hp.get(i).getLinks()%>">
                                </div>
                            </div>
						
								 <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							        <input type="submit" value="SAVE" class="btn btn-primary">
							      
							      </div>
								 </form>
        </div>
     
      </div>
      
    </div>
  </div>
</td>
     
      
      </tr>
<%} %>
        </tbody>
 
			</table>
  		


      
        </div>
        <!-- /#page-wrapper -->

    </div>
     <!--  <div class="pagination1" id="pagination1" style="display:block">
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
 
</body>
</html>