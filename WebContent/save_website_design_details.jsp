<%@page import="dao.ApiController"%>
<%@page import="beans.WebsiteDesign"%>
<%
WebsiteDesign wd = new WebsiteDesign();

wd.setName(request.getParameter("name"));
wd.setEmail(request.getParameter("email"));
wd.setPhone(request.getParameter("phone"));
wd.setMessage(request.getParameter("message"));
wd.setPageName(request.getParameter("pageName"));
wd.setTitle(request.getParameter("title"));

new ApiController().insertIntoWebsiteDesignDetails(wd);

%>
