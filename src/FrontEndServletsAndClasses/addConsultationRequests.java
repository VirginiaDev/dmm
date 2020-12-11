package FrontEndServletsAndClasses;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ApiController;

/**
 * Servlet implementation class addConsultationRequests
 */
@WebServlet("/addConsultationRequests")
public class addConsultationRequests extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addConsultationRequests() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	String country=request.getParameter("country");
    	String services=request.getParameter("input_1");
    	String budget=request.getParameter("input_2");
    	String name=request.getParameter("txtName");
    	String email=request.getParameter("txtEmail");
    	String phone=request.getParameter("txtPhone");
    	String webEmail=request.getParameter("txtWebEmail");
    	String msg=request.getParameter("txtMsg");
    	
    	ApiController apiController=new ApiController();
    	int i=apiController.insertIntoConsultations(country,services,budget,name,email,phone,webEmail,msg);
    	if(i>0) {
    		response.sendRedirect("https://dmm.virtuosonetsoft.com/Thank_You.jsp");
    	}else {
    		response.sendRedirect("Error.jsp");
    	}
    	
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
