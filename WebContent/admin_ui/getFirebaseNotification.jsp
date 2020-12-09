<%@page import="dao.ApiController"%>
<%@page import="beans.chat_initiate_request"%>
<%@page import="org.json.JSONException"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
HttpSession admin_session2 = request.getSession(false);
int admin_id=0;
if (admin_session2.getAttribute("email") != null) {
	System.out.println("Enter in if"); 
	admin_id=(int)admin_session2.getAttribute("id");
	
		

	}else { 
response.sendRedirect("adminlogin.jsp");
}

String firbasedata=request.getParameter("firbasedata");
JSONArray jsonArray=new JSONArray(firbasedata);
System.out.println("firbasedatafirbasedata"+jsonArray.toString());
try {
	 // JSONArray jsonArr = new JSONArray();
	    JSONArray sortedJsonArray = new JSONArray();

	    List<JSONObject> jsonValues = new ArrayList<JSONObject>();
	    for (int i = 0; i < jsonArray.length(); i++) {
	        jsonValues.add(jsonArray.getJSONObject(i));
	    }
	    Collections.sort( jsonValues, new Comparator<JSONObject>() {
	        //You can change "Name" with "ID" if you want to sort by ID
	        private static final String KEY_NAME = "datetime1";

	        @Override
	        public int compare(JSONObject a, JSONObject b) {
	            String valA = new String();
	            String valB = new String();

	            try {
	                valA = (String) b.get(KEY_NAME);
	                valB = (String) a.get(KEY_NAME);
	            } 
	            catch (JSONException e) {
	                //do something
	            }

	            return valA.compareTo(valB);
	            //if you want to change the sort order, simply use the following:
	            //return -valA.compareTo(valB);
	        }
	    });

	    for (int i = 0; i < jsonArray.length(); i++) {
	        sortedJsonArray.put(jsonValues.get(i));
	    }
	    System.out.println("nnnnnnn"+sortedJsonArray.toString());
	    for (int i = 0; i < sortedJsonArray.length(); i++) {
	    	JSONObject jsonObject=sortedJsonArray.getJSONObject(i);
	    	System.out.println("chatid==="+jsonObject.getString("id"));
	    	String admin_in_conversation="";
	    	String chat_request_status="";
	    	String latest_adminid="";
	    	ApiController apiController=new ApiController();
	    	ArrayList<chat_initiate_request> ci=apiController.fetchPendingChatsNotifications(jsonObject.getString("id"));
	    	for(int u=0;u<ci.size();u++){
	    		%>
	    		<li><a href="#"><%=ci.get(u).getName() %></a>
                        </li>
	    	<% }
	    	
	    }
	    //<tr id="09C5E3919CDD605AD6B5CA2AC61D70A6" style="color: green;"><td>2020/1/9 @ 16:7:44</td><td><p style="width: 500px; overflow-wrap: break-word;">ghfgh</p></td><td><a href="AdminShowMessage?chatid=09C5E3919CDD605AD6B5CA2AC61D70A6&amp;clr=languagesList2&amp;act=languagesList2">Chat</a></td></tr>
 } catch (JSONException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>