<%@page import="dao.ApiController"%>
<%@page import="beans.ContentStrategy"%>
<%
ContentStrategy cs = new ContentStrategy();

cs.setName(request.getParameter("name"));
cs.setEmail(request.getParameter("email"));
cs.setPhone(request.getParameter("phone"));
cs.setMessage(request.getParameter("message"));
cs.setPageName(request.getParameter("pageName"));
cs.setTitle(request.getParameter("title"));

new ApiController().insertIntoContentStrategyDetails(cs);

%>