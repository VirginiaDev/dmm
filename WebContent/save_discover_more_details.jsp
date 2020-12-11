<%@page import="dao.ApiController"%>
<%@page import="beans.DiscoverMore"%>
<%
DiscoverMore dm = new DiscoverMore();

dm.setName(request.getParameter("name"));
dm.setEmail(request.getParameter("email"));
dm.setPhone(request.getParameter("phone"));
dm.setMessage(request.getParameter("message"));
dm.setPageName(request.getParameter("pageName"));
dm.setTitle(request.getParameter("title"));

new ApiController().insertDiscoverMoreDetails(dm);

%>