<%@page import="dao.ApiController"%>
<%@page import="beans.PPC"%>
<%
PPC p = new PPC();

p.setName(request.getParameter("name"));
p.setEmail(request.getParameter("email"));
p.setPhone(request.getParameter("phone"));
p.setMessage(request.getParameter("message"));
p.setPageName(request.getParameter("pageName"));
p.setTitle(request.getParameter("title"));

new ApiController().insertIntoPPCDetails(p);

%>