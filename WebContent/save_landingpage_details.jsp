<%@page import="dao.ApiController"%>
<%
ApiController apiController=new ApiController();
int i=apiController.insertIntoLandingpage(request.getParameter("name"), request.getParameter("email"), request.getParameter("options"), request.getParameter("message"));

%>
