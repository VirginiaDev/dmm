<%@page import="dao.ApiController"%>
<%
String id=request.getParameter("id");
String links=request.getParameter("links");

ApiController apiController=new ApiController();
int i=apiController.updateHomepagePhotos(id, "none","link",links);
if(i>0){
	response.sendRedirect("uploadPictures.jsp");
}
%>