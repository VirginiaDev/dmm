<%@page import="dao.ApiController"%>
<%@page import="beans.GraphicDesign"%>
<%
GraphicDesign gd = new GraphicDesign();

gd.setName(request.getParameter("name"));
gd.setEmail(request.getParameter("email"));
gd.setPhone(request.getParameter("phone"));
gd.setMessage(request.getParameter("message"));
gd.setPageName(request.getParameter("pageName"));
gd.setTitle(request.getParameter("title"));

new ApiController().insertIntoGraphicDesignDetails(gd);

%>