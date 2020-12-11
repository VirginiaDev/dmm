<%@page import="dao.ApiController"%>
<%@page import="beans.indexNew"%>
<%
indexNew i = new indexNew();

i.setName(request.getParameter("name"));
i.setEmail(request.getParameter("email"));
i.setPhone(request.getParameter("phone"));
i.setMessage(request.getParameter("message"));
i.setPageName(request.getParameter("pageName"));
i.setTitle(request.getParameter("title"));

new ApiController().insertIntoIndexNewDetails(i);
%>