<%@page import="dao.ApiController"%>
<%@page import="beans.SEO"%>
<%
SEO s = new SEO();

s.setName(request.getParameter("name"));
s.setEmail(request.getParameter("email"));
s.setPhone(request.getParameter("phone"));
s.setMessage(request.getParameter("message"));
s.setPageName(request.getParameter("pageName"));
s.setTitle(request.getParameter("title"));

new ApiController().insertIntoSEODetails(s);
%>