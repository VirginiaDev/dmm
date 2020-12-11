package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import com.mchange.v2.c3p0.impl.DbAuth;

import Email.AutomatedEmail;
import Email.EmailSendThread;
import beans.ContentStrategy;
import beans.DiscoverMore;
import beans.GoogleMyBusiness;
import beans.GraphicDesign;
import beans.PPC;
import beans.SEO;
import beans.WebsiteDesign;
import beans.admin;
import beans.chat;
import beans.chat_initiate_request;
import beans.contact;
import beans.free_audit;
import beans.homepage_photos;
import beans.indexNew;
import beans.quick_enquiry;
import connection.DbConnection;

public class ApiController {
	
	public static Logger log = Logger.getLogger(ApiController.class);
	
	public ArrayList<free_audit> getFreeAuditConfirmationPendingMailIds(){

		
		ArrayList<free_audit> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
        
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from free_audit where confirmation_status='false' and trashed_status='false'");
			while(rs.next()) {
				String submission_time=rs.getString("submission_date");
				
				Date d1=sdf.parse(server_datetime);
    			Date d2=sdf.parse(submission_time);
    			 long difference_In_Time 
                 = d1.getTime() - d2.getTime();

    	            long difference_In_Hours 
    	                = (difference_In_Time 
    	                   / (1000 * 60 * 60)) 
    	                  % 24;
    	            long difference_In_Days 
                    = (difference_In_Time 
                       / (1000 * 60 * 60 * 24)) 
                      % 365;
    	            System.out.println("difference in hours==="+difference_In_Hours);
      	          System.out.println("difference in days==="+difference_In_Days);
      	          final int MILLI_TO_HOUR = 1000 * 60 * 60;
      	          int hours=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_HOUR;
      	          System.out.println("difference in hourshours==="+hours);
      	          
      	          if(hours>=24) {
      	        	ae.add(parseFreeAudits(rs)); 
      	        	}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;

	}
public ArrayList<contact> getContactConfirmationPendingMailIds(){

		
		ArrayList<contact> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
        
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from contact where confirmation_status='false' and trashed_status='false'");
			while(rs.next()) {
				String submission_time=rs.getString("submission_date");
				
				Date d1=sdf.parse(server_datetime);
    			Date d2=sdf.parse(submission_time);
    			 long difference_In_Time 
                 = d1.getTime() - d2.getTime();

    	            long difference_In_Hours 
    	                = (difference_In_Time 
    	                   / (1000 * 60 * 60)) 
    	                  % 24;
    	            long difference_In_Days 
                    = (difference_In_Time 
                       / (1000 * 60 * 60 * 24)) 
                      % 365;
    	            System.out.println("difference in hours==="+difference_In_Hours);
      	          System.out.println("difference in days==="+difference_In_Days);
      	          final int MILLI_TO_HOUR = 1000 * 60 * 60;
      	          int hours=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_HOUR;
      	          System.out.println("difference in hourshours==="+hours);
      	          
      	          if(hours>=24) {
      	        	ae.add(parseContacts(rs)); 
      	        	}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;

	}
public ArrayList<quick_enquiry> getQuickEnquiryConfirmationPendingMailIds(){

	
	ArrayList<quick_enquiry> ae=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String server_datetime = String.valueOf(sdf.format(cal.getTime()));
    
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		rs=st.executeQuery("select * from quick_enquiry where confirmation_status='false' and trashed_status='false'");
		while(rs.next()) {
			String submission_time=rs.getString("submission_date");
			
			Date d1=sdf.parse(server_datetime);
			Date d2=sdf.parse(submission_time);
			 long difference_In_Time 
             = d1.getTime() - d2.getTime();

	            long difference_In_Hours 
	                = (difference_In_Time 
	                   / (1000 * 60 * 60)) 
	                  % 24;
	            long difference_In_Days 
                = (difference_In_Time 
                   / (1000 * 60 * 60 * 24)) 
                  % 365;
	            System.out.println("difference in hours==="+difference_In_Hours);
  	          System.out.println("difference in days==="+difference_In_Days);
  	          final int MILLI_TO_HOUR = 1000 * 60 * 60;
  	          int hours=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_HOUR;
  	          System.out.println("difference in hourshours==="+hours);
  	          
  	          if(hours>=24) {
  	        	ae.add(parseQuickEnquiry(rs)); 
  	        	}
			
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return ae;

}

public void insertIntoIndexNewDetails(indexNew in)
{
	int id = 0;
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into index_new(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)");
    	pst.setString(1, in.getName());
    	pst.setString(2, in.getEmail());
    	pst.setString(3, in.getPhone());
    	pst.setString(4, in.getMessage());
    	pst.setString(5, in.getPageName());
    	pst.setString(6, in.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    } catch(Exception e) {
    	e.printStackTrace();
    }  finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
}

public void insertIntoSEODetails(SEO s)
{
	int id = 0;
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into seo(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)");
    	pst.setString(1, s.getName());
    	pst.setString(2, s.getEmail());
    	pst.setString(3, s.getPhone());
    	pst.setString(4, s.getMessage());
    	pst.setString(5, s.getPageName());
    	pst.setString(6, s.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    } catch(Exception e) {
    	e.printStackTrace();
    }  finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
}


public void insertIntoPPCDetails(PPC p)
{
	int id = 0;
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into ppc(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)");
    	pst.setString(1, p.getName());
    	pst.setString(2, p.getEmail());
    	pst.setString(3, p.getPhone());
    	pst.setString(4, p.getMessage());
    	pst.setString(5, p.getPageName());
    	pst.setString(6, p.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    } catch(Exception e) {
    	e.printStackTrace();
    }  finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
}



public void insertDiscoverMoreDetails(DiscoverMore dm)
{
	int id = 0;
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into discover_more(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
    	pst.setString(1, dm.getName());
    	pst.setString(2, dm.getEmail());
    	pst.setString(3, dm.getPhone());
    	pst.setString(4, dm.getMessage());
    	pst.setString(5, dm.getPageName());
    	pst.setString(6, dm.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    	if(i>0) {
    		ResultSet gen=pst.getGeneratedKeys();
			if(gen.next()) {
				id=gen.getInt(1);
			}
    		
			System.out.println("successfull===="+pst.toString());
			//send email to user!!!!
			EmailSendThread emailSendThread=new EmailSendThread();
			log.info("email>>>>>>>>>>>>>>>>>"+dm.getEmail());
			log.info("Id..........."+id);
			emailSendThread.SendSingleEmail(dm.getName(), dm.getEmail(), "discover_more_confirm", id); 
			
			ArrayList<String> adminEmails=new ArrayList<>();
			for(int ae=0;ae<adminEmails.size();ae++) {
				emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new discover more request from '"+dm.getName()+"'.Contact Details are :- Phone ('"+dm.getPhone()+"') and email ('"+dm.getEmail()+"')");
			} 
			
    	} else {
			System.out.println("failed=="+pst.toString());
		}
    } catch(Exception e) {
    	e.printStackTrace();
    }  finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
}

private int getUserByEmail(String email) {
	int id=0;
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	try {
		conn = DbConnection.getInstance().getConnection();
		st = conn.createStatement();
		String query = "select * from discover_more where email = '"+email+"'";
		rs = st.executeQuery(query);
		while(rs.next()) {
			id = rs.getInt("id");
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return id;
	
}
public void insertIntoGoogleMyBusinessDetails(GoogleMyBusiness g)
{
	int id = 0;
	Connection conn=null;
	PreparedStatement pst=null;
//	Statement st=null;
	ResultSet rs=null;
	

	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into google_my_business(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)");
    	pst.setString(1, g.getName());
    	pst.setString(2, g.getEmail());
    	pst.setString(3, g.getPhone());
    	pst.setString(4, g.getMessage());
    	pst.setString(5, g.getPageName());
    	pst.setString(6, g.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    } catch(Exception e) {
    	e.printStackTrace();
    } finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	
}

public void insertIntoContentStrategyDetails(ContentStrategy cs)
{
	int id = 0;
	Connection conn=null;
	PreparedStatement pst=null;
//	Statement st=null;
	ResultSet rs=null;
	

	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
    String submission_time = String.valueOf(sdf.format(cal.getTime()));
    System.out.println("submission_time=>>"+submission_time);
    try {
    	conn = DbConnection.getInstance().getConnection();
    	conn = DbConnection.getInstance().getConnection();
    	pst = conn.prepareStatement("insert into content_strategy(name, email, phone, message, page_name, title, submission_date) values (?,?,?,?,?,?,?)");
    	pst.setString(1, cs.getName());
    	pst.setString(2, cs.getEmail());
    	pst.setString(3, cs.getPhone());
    	pst.setString(4, cs.getMessage());
    	pst.setString(5, cs.getPageName());
    	pst.setString(6, cs.getTitle());
    	pst.setString(7, submission_time);
    	
    	int i = pst.executeUpdate();
    } catch(Exception e) {
    	e.printStackTrace();
    } finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(pst!=null) {
				pst.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	
}


	public void insertIntoWebsiteDesignDetails(WebsiteDesign wd)
	{
		int id = 0;
		Connection conn=null;
		PreparedStatement pst=null;
	//	Statement st=null;
		ResultSet rs=null;
		

		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String submission_time = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("submission_time=>>"+submission_time);
        try {
        	conn = DbConnection.getInstance().getConnection();
        	pst = conn.prepareStatement("insert into website_design(name, email, phone, message, page_name, title) values (?,?,?,?,?,?)");
        	pst.setString(1, wd.getName());
        	pst.setString(2, wd.getEmail());
        	pst.setString(3, wd.getPhone());
        	pst.setString(4, wd.getMessage());
        	pst.setString(5, wd.getPageName());
        	pst.setString(6, wd.getTitle());
        	
        	int i = pst.executeUpdate();
        } catch(Exception e) {
        	e.printStackTrace();
        } finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		
	}

	public int insertIntoQuickEnquiryDetails(String name,String email,String phn,String company,String message)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			

			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into quick_enquiry(name,email,phone,company,message,submission_date) values ('"+name+"','"+email+"','"+phn+"','"+company+"','"+message+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
				int i=pst.executeUpdate();
				
				if(i>0) {
					ResultSet gen=pst.getGeneratedKeys();
					System.out.println(pst.toString());
					if(gen.next()) {
						id=gen.getInt(1);
					}
					EmailSendThread emailSendThread=new EmailSendThread();
					emailSendThread.SendSingleEmail(name, email, "quick_enquiry_confirm", id);
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new quicj enquiry from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}

				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int insertIntoConsultations(String country,String services,String budget,String name,String email,String phone,String webEmail,String msg)
	{
	int i=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			

			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into consultations(country,services,budget,name,email,phone,webEmail,msg,submission) values ('"+country+"','"+services+"','"+budget+"','"+name+"','"+email+"','"+phone+"','"+webEmail+"','"+msg+"','"+submission_time+"')");
				System.out.println(pst.toString());
				i=pst.executeUpdate();
				
				if(i>0) {
					//ResultSet gen=pst.getGeneratedKeys();
					System.out.println(pst.toString());
					/*if(gen.next()) {
						id=gen.getInt(1);
					}*/
					/*EmailSendThread emailSendThread=new EmailSendThread();
					emailSendThread.SendSingleEmail(name, email, "quick_enquiry_confirm", id);
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new callback request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}*/

				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return i;
	}
	public int insertIntoTalkToSales(String country,String name,String email,String phone)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			

			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into talk_to_sales(country,name,email,phone,submission) values ('"+country+"','"+name+"','"+email+"','"+phone+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
				int i=pst.executeUpdate();
				
				if(i>0) {
					ResultSet gen=pst.getGeneratedKeys();
					System.out.println(pst.toString());
					if(gen.next()) {
						id=gen.getInt(1);
					}
					/*EmailSendThread emailSendThread=new EmailSendThread();
					emailSendThread.SendSingleEmail(name, email, "quick_enquiry_confirm", id);
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new callback request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}*/

				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}

	public int insertIntoCallback(String name,String email,String phn,String timeslot_one,String timeslot_two,String timeslot_three)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			

			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into callback(name,email,phone,timeslot_one,timeslot_two,timeslot_three,submission_date) values ('"+name+"','"+email+"','"+phn+"','"+timeslot_one+"','"+timeslot_two+"','"+timeslot_three+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
				int i=pst.executeUpdate();
				
				if(i>0) {
					ResultSet gen=pst.getGeneratedKeys();
					System.out.println(pst.toString());
					if(gen.next()) {
						id=gen.getInt(1);
					}
					/*EmailSendThread emailSendThread=new EmailSendThread();
					emailSendThread.SendSingleEmail(name, email, "quick_enquiry_confirm", id);
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new callback request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}*/

				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int insertIntoGeneralInquiries(String name,String email,String phn,String company_website,String drop_a_line)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into general_inquiries(name,email,phone,company_website,drop_a_line,submission_date) values ('"+name+"','"+email+"','"+phn+"','"+company_website+"','"+drop_a_line+"','"+submission_time+"')");
				id=pst.executeUpdate();
				
				if(id>0) {
				
					System.out.println("successfull==="+pst.toString());
					/*EmailSendThread emailSendThread=new EmailSendThread();
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "General Inquiry", "Hi Team! There is a new general enquiry request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}*/

				}
				else {
					System.out.println("Some rror occured=="+pst.toString());
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int insertIntoQuotes(String name,String email,String phn,String services,String requirement)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into quote(name,email,phone,services,requirement,submission_date) values ('"+name+"','"+email+"','"+phn+"','"+services+"','"+requirement+"','"+submission_time+"')");
				id=pst.executeUpdate();
				
				if(id>0) {
				
					System.out.println("successfull==="+pst.toString());
					EmailSendThread emailSendThread=new EmailSendThread();
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Quote Request", "Hi Team! There is a new quote request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}

				}
				else {
					System.out.println("Some rror occured=="+pst.toString());
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int insertIntoCareers(String name,String email,String phn,String position,String filepath)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into careers(name,email,phone,position,filepath,submission_date) values ('"+name+"','"+email+"','"+phn+"','"+position+"','"+filepath+"','"+submission_time+"')");
				id=pst.executeUpdate();
				
				if(id>0) {
				
					System.out.println("successfull==="+pst.toString());
					/*EmailSendThread emailSendThread=new EmailSendThread();
					ArrayList<String> adminEmails=new ArrayList<>();
					adminEmails.add("rishabh@virtuosonetsoft.in");
					adminEmails.add("saurabh@virtuosonetsoft.com");
					adminEmails.add("asha@virtuosonetsoft.com");
					for(int ae=0;ae<adminEmails.size();ae++) {
						emailSendThread.SendEmail(adminEmails.get(ae), "Quote Request", "Hi Team! There is a new quote request from '"+name+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
					}*/

				}
				else {
					System.out.println("Some rror occured=="+pst.toString());
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int insertIntoSms_api_data(String sender_id,String mobile,String client_id,String message,String apikey)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			

			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String submission_time = String.valueOf(sdf.format(cal.getTime()));
	        System.out.println("submission_time=>>"+submission_time);
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into sms_api_data(sender_id,mobile,client_id,message,apikey,submission_time) values ('"+sender_id+"','"+mobile+"','"+client_id+"','"+message+"','"+apikey+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
				int i=pst.executeUpdate();
				
				if(i>0) {
					ResultSet gen=pst.getGeneratedKeys();
					System.out.println(pst.toString());
					if(gen.next()) {
						id=gen.getInt(1);
					}
					}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public ArrayList<homepage_photos> fetchHomepagePhotos(){
		
		ArrayList<homepage_photos> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from edit_homepage_images");
			while(rs.next()) {
				ae.add(parseHomepagePhotos(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;
}
	public homepage_photos parseHomepagePhotos(ResultSet rs)throws Exception
	{
		homepage_photos homepage_photos=new homepage_photos();
		homepage_photos.setFilename(rs.getString("filename"));
		homepage_photos.setId(rs.getInt("id"));
		homepage_photos.setLast_updated(rs.getString("last_updated"));
		homepage_photos.setLinks(rs.getString("links"));
		
		return homepage_photos;
				
	}
	public int insertIntoChatInitiate(String name,String email,String phn,String message,String chatid)
	{
	int id=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			
			 Calendar cal = Calendar.getInstance();
		     SimpleDateFormat sdf = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a");
		     String submission_time = String.valueOf(sdf.format(cal.getTime()));
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("insert into chat_initiate_request(name,email,mobile,message,chatid) values ('"+name+"','"+email+"','"+phn+"','"+message+"','"+chatid+"')",Statement.RETURN_GENERATED_KEYS);
				System.out.println(pst.toString());
				int i=pst.executeUpdate();
				if(i>0) {
					ResultSet gen=pst.getGeneratedKeys();
					if(gen.next()) {
						id=gen.getInt(1);
					}
					/*EmailSendThread emailSendThread=new EmailSendThread();
					emailSendThread.SendSingleEmail(name, email, "quick_enquiryconfirm", id);*/

				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return id;
	}
	public int updateChatDetailsByUser(String chatid,String last_reply_by,String last_reply_time,String chat_status)
	{
	        int i=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("update chat_initiate_request set last_reply_by = '"+last_reply_by+"',last_reply_time='"+last_reply_time+"',chat_status='"+chat_status+"' where chatid='"+chatid+"'");
				System.out.println(pst.toString());
				i=pst.executeUpdate();
				if(i>0) {
					System.out.println("Successfull==="+pst.toString());
				}
				else {
					System.out.println("Some rror occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return i;
	}
	public int updateHomepagePhotos(String id,String filename,String updatee,String link)
	{
	        int i=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			Calendar cal = Calendar.getInstance();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
			
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				if(updatee.equals("photos")) {
					pst=conn.prepareStatement("update edit_homepage_images set filename = '"+filename+"',last_updated='"+server_datetime+"' where id="+Integer.parseInt(id));

				}else if(updatee.equals("link")) {
					pst=conn.prepareStatement("update edit_homepage_images set links = '"+link+"',last_updated='"+server_datetime+"' where id="+Integer.parseInt(id));

				}
				System.out.println(pst.toString());
				i=pst.executeUpdate();
				if(i>0) {
					System.out.println("Successfull==="+pst.toString());
				}
				else {
					System.out.println("Some error occured");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return i;
	}
	public int updateChatDetailsByAdmin(String chatid,String latest_admin_replying_id,String latest_admin_replying_name,String chat_status,String last_reply_by,String last_reply_time,String chat_request_status)
	{
	        int i=0;
			Connection conn=null;
			PreparedStatement pst=null;
		//	Statement st=null;
			ResultSet rs=null;
			
			
			try {
				conn=DbConnection.getInstance().getConnection();
		//		st=conn.createStatement();
				pst=conn.prepareStatement("update chat_initiate_request set latest_admin_replying_id='"+latest_admin_replying_id+"',latest_admin_replying_name='"+latest_admin_replying_name+"',chat_status='"+chat_status+"',last_reply_by = '"+last_reply_by+"',last_reply_time='"+last_reply_time+"',chat_request_status='"+chat_request_status+"' where chatid='"+chatid+"'");
				System.out.println(pst.toString());
				i=pst.executeUpdate();
				if(i>0) {
					System.out.println("Successfull==="+pst.toString());
				}
				else {
					System.out.println("Some error occured==="+pst.toString());
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
			}
			finally {
				try {
					if(conn!=null) {
						conn.close();
					}if(pst!=null) {
						pst.close();
					}if(rs!=null) {
						rs.close();
					}
				} catch (Exception e2) {
					// TODO: handle exception
				e2.printStackTrace();
				}
			}
			return i;
	}
	public int insertIntoFreeAudits(String name,String email,String phone,String message,String source_page) {
		
		int id=0;
		Connection conn=null;
		PreparedStatement pst=null;
		
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String submission_time = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("submission_time=>>"+submission_time);
		
		
		try {
			conn=DbConnection.getInstance().getConnection();
			pst=conn.prepareStatement("insert into free_audit (name,email,phone,msg,source_page,submission_date) values ('"+name+"','"+email+"','"+phone+"','"+message+"','"+source_page+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
			int i=pst.executeUpdate();
			if(i>0) {
				ResultSet gen=pst.getGeneratedKeys();
				if(gen.next()) {
					id=gen.getInt(1);
				}
				System.out.println("successfull===="+pst.toString());
				EmailSendThread emailSendThread=new EmailSendThread();
				ApiController apiController=new ApiController();
				emailSendThread.SendSingleEmail(name, email, "free_audit_confirm", id); //send email to user who filled the form
				
				ArrayList<String> adminEmails=new ArrayList<>();
				/*adminEmails.add("rishabh@virtuosonetsoft.in");
				adminEmails.add("saurabh@virtuosonetsoft.com");
				adminEmails.add("asha@virtuosonetsoft.com");*/
				adminEmails.add("virginia@parrotinfosoft.com");
				for(int ae=0;ae<adminEmails.size();ae++) {
					emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new free audit request from '"+name+"'.Contact Details are :- Phone ('"+phone+"') and email ('"+email+"')");
				//send a notification email to the admins
				}

			/*	String confirmation_status=apiController.updateMailConfirmationStatus(id,"quick_enquiry");
				if(confirmation_status.equals("true")){
					emailSendThread.SendEmail(email, "Welcome Email", "Hi '"+name+"'! Welcome!! Please click on this link for confirmation:- http://localhost:8853/vns-dmm/index.jsp");

				}*/
			//	EmailSendThread emailSendThread=new EmailSendThread();
			//	emailSendThread.SendEmail(email, "Free Audit Request", "Hi '"+name+"'! our  team will get back to u soon regarding your query!!");
				//emailSendThread.SendEmail("virginia@parrotinfosoft.com", "Free Audit Request", "Hi Team! There is a free audit request from '"+name+"'.Contact Details are :- Phone ('"+phone+"') and email ('"+email+"')");
			//emailSendThread.SendSingleEmail(name, email, c_subject, txt_msg,"customer_confirmation_email");
			}else {
				System.out.println("failed=="+pst.toString());
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return id;
	}
	public int getChat(JSONArray array, String name, String email, String message) {
		// TODO Auto-generated method stub
		Connection Dbconn=DbConnection.getInstance().getConnection();
		Statement st =null;
	int i=0;
		try
		{
		
			st=Dbconn.createStatement();
			System.out.println("insert into chat (name,email,message) value('"+name+"','"+email+"','"+message+"')");
			i = st.executeUpdate("insert into chat (name,email,message,statusActive) value('"+name+"','"+email+"','"+message+"',0)");
		 if(i>0)
			{
			 JSONObject jsonObject=new JSONObject();
				jsonObject.put("name", name);
				jsonObject.put("email", email);
				jsonObject.put("message", message);
			
				
				{
					jsonObject.put("message", "Succesfully Submitted");
					array.put(jsonObject);
					
				}
			
			}
		}
		 catch(Exception e)
	       {
	       	e.printStackTrace();
	       }
	       finally
	       {
	       try {if(Dbconn!=null) {Dbconn.close();}}catch(Exception e) {}	
	       try {if(st!=null) {st.close();}}catch(Exception e) {}	
	     	
	       	
	       }
		return i;
	}
	public boolean checkChatInitiatedOrNot(String chatid) {
		
		boolean check=false;
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			con=DbConnection.getInstance().getConnection();
			st=con.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"'");
			while(rs.next()) {
				check=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	return check;
	}
	public String firebaseTrigger(String chatid) {
		
		String check="false";
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("server_datetime=>>"+server_datetime);
		
		try {
			con=DbConnection.getInstance().getConnection();
			st=con.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"'");
			while(rs.next()) {
				
					 System.out.println("last_reply_time=>>"+rs.getString("last_reply_time"));
						Date d1=sdf.parse(server_datetime);
						Date d2=sdf.parse(rs.getString("last_reply_time"));
						 long difference_In_Time 
			             = d1.getTime() - d2.getTime();

				          long diffMinutes = difference_In_Time / (60 * 1000) % 60;

				         System.out.println("difference in minutes==="+diffMinutes);
				          final int MILLI_TO_MIN = 1000 * 60;
				          int mins=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_MIN;
				          System.out.println("difference in minsminss==="+mins);
				          /*if(rs.getString("last_reply_by").equals("user") && rs.getString("chat_status").equals("in_process") && mins>=5) {
				        	  check="true";
				          }*/
				          if(rs.getString("last_reply_by").equals("user") || rs.getString("last_reply_by").equals("defaultt")) {
				        	  System.out.println("firsttttt iffffff");
				        	  if(rs.getString("chat_status").equals("in_process") || rs.getString("chat_status").equals("on_hold")) {
				        		  System.out.println("seconddddd iffffff");
				        		  if(mins>=5) {
				        			  System.out.println("thirdddddd iffffff");
				        			  check="true";  
				        		  }
				        	  }
				          }
		
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	return check;
	}
public String ChatStatus(String chatid) {
		
		String status="";
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
			try {
			con=DbConnection.getInstance().getConnection();
			st=con.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"'");
			while(rs.next()) {
				status=rs.getString("chat_status");
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	return status;
	}

	public ArrayList<chat_initiate_request> fetchChatInitiateRequestsByChatId(String chatid){

		
		ArrayList<chat_initiate_request> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"'");
			while(rs.next()) {
				ae.add(parseChatInitiateRequests(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;

	}
public ArrayList<chat_initiate_request> fetchPendingChatsNotifications(String chatid){

		
		ArrayList<chat_initiate_request> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"' and (chat_status='pending' or chat_status='on_hold')");
			while(rs.next()) {
				ae.add(parseChatInitiateRequests(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;

	}
public ArrayList<chat_initiate_request> fetchChatStatus(String chatid){

		
		ArrayList<chat_initiate_request> ae=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='"+chatid+"'");
			while(rs.next()) {
				ae.add(parseChatInitiateRequests(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return ae;

	}
	public chat_initiate_request parseChatInitiateRequests(ResultSet rs)throws Exception{
		
		chat_initiate_request c=new chat_initiate_request();
		c.setChat_status(rs.getString("chat_status"));
		c.setChatid(rs.getString("chatid"));
		c.setEmail(rs.getString("email"));
		c.setId(rs.getInt("id"));
		c.setLast_reply_by(rs.getString("last_reply_by"));
		c.setLast_reply_time(rs.getString("last_reply_time"));
		c.setLatest_admin_replying_id(rs.getString("latest_admin_replying_id"));
		c.setLatest_admin_replying_name(rs.getString("latest_admin_replying_name"));
		c.setMessage(rs.getString("message"));
		c.setMobile(rs.getString("mobile"));
		c.setName(rs.getString("name"));
		c.setChat_request_status(rs.getString("chat_request_status"));
		
		return c;
	}
	public int adminOnlineStatus() {
		
		int status=0;
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select online_status from adminlogin");
			while(rs.next()) {
				status=Integer.parseInt(rs.getString("online_status"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return status;
	}
	
public String getMailConfirmationStatus(int id,String tablename) {
		
		String confirmation_status="";
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select confirmation_status from "+tablename+" where id="+id);
			while(rs.next()) {
				confirmation_status=rs.getString("confirmation_status");
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return confirmation_status;
	}
public ArrayList<quick_enquiry> QuickEnquiryDetailsById(int id) {
	
	ArrayList<quick_enquiry> ae=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		rs=st.executeQuery("select * from quick_enquiry where id="+id);
		while(rs.next()) {
			ae.add(parseQuickEnquiry(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return ae;
}
public ArrayList<free_audit> FreeAuditDetailsById(int id) {
	
	ArrayList<free_audit> ae=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		rs=st.executeQuery("select * from free_audit where id="+id);
		while(rs.next()) {
			ae.add(parseFreeAudits(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return ae;
}
public ArrayList<contact> ContactDetailsById(int id) {
	
	ArrayList<contact> ae=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		rs=st.executeQuery("select * from contact where id="+id);
		while(rs.next()) {
			ae.add(parseContacts(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return ae;
}

	public ArrayList<free_audit> fetchFreeAuditRequests(String search,int start,int total){
		
		ArrayList<free_audit> fa=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			if(search.equals("0")) {
				rs=st.executeQuery("select * from free_audit order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from free_audit order by id desc limit "+(start-1)+","+total);

			}else {
				rs=st.executeQuery("select * from free_audit where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from free_audit where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
	 
			}
			while(rs.next()) {
				fa.add(parseFreeAudits(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(st!=null) {
					st.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return fa;
	}
	public Boolean checkAdmin(admin admin){ 
//		TrippleDes td= new TrippleDes();
		
		 String password;
		 String email;
		 String name;
		 Boolean status =false;
		 int count=0;
		 int id=0;
		 Connection conn=DbConnection.getInstance().getConnection();
		 Statement stmt=null;
		 Statement stmt1=null;
		 ResultSet rs = null;
		 ResultSet rs1 = null;
		 
	   	  email = admin.getEmail();
	   	  password =admin.getPassword();
	   	  name=admin.getName();
	   	  
//	   	password=td.encrypt(password);
	   	 
	   	  try {
	         	
	         	stmt=conn.createStatement();
	         	String query = "select count(*) from adminlogin where email='"+email+"' and password='"+password+"'";
	         	rs = stmt.executeQuery(query);
	         	 while (rs.next()) {
	         		 count=rs.getInt(1);
	         	 }
	         		 if(count!=0){
	         			stmt1=conn.createStatement();
	         			String query1 = "select * from adminlogin where email='"+email+"' and password='"+password+"'";
	         			rs1 = stmt1.executeQuery(query1);
	                	 while (rs1.next()) {
	                		 
	                		 id=rs1.getInt("id");
	                		 email=rs1.getString("email");
	                		 password=rs1.getString("password");
	                		 name=rs1.getString("name");
	                		 admin.setId(id);
	                		 admin.setEmail(email);
	                		 admin.setPassword(password);
	                		 admin.setName(name);
	         		 
	         		 status=true;
	         		 
	                	 }
	         		 }else{
	         			 status=false;
	         		 }
	    			conn.close();

	         } catch (Exception e) {
	             e.printStackTrace();
	         }finally
	         {
	        	 try {
	        	         if (conn != null)
	        	      	conn.close();
	        	      } catch (SQLException ignore) {} // no point handling

	        	      try {
	        	         if (stmt != null)
	        	             stmt.close();
	        	      } catch (SQLException ignore) {} // no point handling

	        	   try {
	        	         if (stmt1 != null)
	        	        	 stmt1.close();
	        	      } catch (SQLException ignore) {} // no point handling
	        	 }
	   	  
	   	  
	     return status; 
	   }
	public int logTimingDetails(int id,String logintime){
		int status1=0;
		Connection conn=DbConnection.getInstance().getConnection();
		PreparedStatement  ps1=null;
//		logger.info("enter in function");
	    
	     try{
//	    	 logger.info("enter in try");
	         ps1=conn.prepareStatement("update adminlogin set online_status='1' where id='"+id+"' ");
//	         logger.info(ps1);
	         status1 = ps1.executeUpdate();
//	         logger.info("status1.function=>>"+status1);
//	         logger.info("execute query done");
	         
				conn.close();
	    }
	     catch(Exception e){
//	         logger.info(e);
	     }finally
	     {
	    	 try {
	    	         if (conn != null)
	    	      	conn.close();
	    	      } catch (SQLException ignore) {} // no point handling

	    	   try {
	    	         if (ps1 != null)
	    	      	ps1.close();
	    	      } catch (SQLException ignore) {} // no point handling
	    	 }
		
//		logger.info("out of try");
		return status1;
	}
	public int updateOnlineStatus(){
		int status1=0;
		Connection conn=DbConnection.getInstance().getConnection();
		PreparedStatement  ps1=null;
//		logger.info("enter in function");
	    
	     try{
//	    	 logger.info("enter in try");
	         ps1=conn.prepareStatement("update adminlogin set online_status='0'");
//	         logger.info(ps1);
	         status1 = ps1.executeUpdate();
//	         logger.info("status1.function=>>"+status1);
//	         logger.info("execute query done");
	         
				conn.close();
	    }
	     catch(Exception e){
//	         logger.info(e);
	     }finally
	     {
	    	 try {
	    	         if (conn != null)
	    	      	conn.close();
	    	      } catch (SQLException ignore) {} // no point handling

	    	   try {
	    	         if (ps1 != null)
	    	      	ps1.close();
	    	      } catch (SQLException ignore) {} // no point handling
	    	 }
		
//		logger.info("out of try");
		return status1;
	}
	public int updateConfirmationStatus(int id,String table_name){
		int status1=0;
		Connection conn=DbConnection.getInstance().getConnection();
		PreparedStatement  ps1=null;
//		logger.info("enter in function");
	    
	     try{
//	    	 logger.info("enter in try");
	         ps1=conn.prepareStatement("update "+table_name+" set confirmation_status='true' where id="+id);
//	         logger.info(ps1);
	         status1 = ps1.executeUpdate();
//	         logger.info("status1.function=>>"+status1);
//	         logger.info("execute query done");
	         
				conn.close();
	    }
	     catch(Exception e){
//	         logger.info(e);
	     }finally
	     {
	    	 try {
	    	         if (conn != null)
	    	      	conn.close();
	    	      } catch (SQLException ignore) {} // no point handling

	    	   try {
	    	         if (ps1 != null)
	    	      	ps1.close();
	    	      } catch (SQLException ignore) {} // no point handling
	    	 }
		
//		logger.info("out of try");
		return status1;
	}
	public int updateConfirmationTime(int id,String table_name){
		int status1=0;
		Connection conn=DbConnection.getInstance().getConnection();
		PreparedStatement  ps1=null;
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
//		logger.info("enter in function");
	    
	     try{
//	    	 logger.info("enter in try");
	         ps1=conn.prepareStatement("update "+table_name+" set latest_confirmation_email_sent_time='"+server_datetime+"' where id="+id);
//	         logger.info(ps1);
	         status1 = ps1.executeUpdate();
	         System.out.println("beforeeee==="+ps1.toString());
	         if(status1>0) {
	        	 System.out.println("successfull==="+ps1.toString());
	         }else
	         {
	        	 System.out.println("errorrr==="+ps1.toString()); 
	         }
//	         logger.info("status1.function=>>"+status1);
//	         logger.info("execute query done");
	         
				conn.close();
	    }
	     catch(Exception e){
//	         logger.info(e);
	     }finally
	     {
	    	 try {
	    	         if (conn != null)
	    	      	conn.close();
	    	      } catch (SQLException ignore) {} // no point handling

	    	   try {
	    	         if (ps1 != null)
	    	      	ps1.close();
	    	      } catch (SQLException ignore) {} // no point handling
	    	 }
		
//		logger.info("out of try");
		return status1;
	}

	public int insertConfirmationUrl(int id,String link,String table_name){
		int status1=0;
		Connection conn=DbConnection.getInstance().getConnection();
		PreparedStatement  ps1=null;
//		logger.info("enter in function");
	    
	     try{
//	    	 logger.info("enter in try");
	         ps1=conn.prepareStatement("update "+table_name+" set confirmation_url='"+link+"' where id="+id);
//	         logger.info(ps1);
	         status1 = ps1.executeUpdate();
	         if(status1>0) {
	        	 System.out.println("successfull==="+ps1.toString());
	         }else {
	        	 System.out.println("failedddd==="+ps1.toString());
	         }
//	         logger.info("status1.function=>>"+status1);
//	         logger.info("execute query done");
	         
				conn.close();
	    }
	     catch(Exception e){
//	         logger.info(e);
	     }finally
	     {
	    	 try {
	    	         if (conn != null)
	    	      	conn.close();
	    	      } catch (SQLException ignore) {} // no point handling

	    	   try {
	    	         if (ps1 != null)
	    	      	ps1.close();
	    	      } catch (SQLException ignore) {} // no point handling
	    	 }
		
//		logger.info("out of try");
		return status1;
	}

public int insertIntoContacts(String branding,String content,String design,String ecommerce,String webbdev,String apps,String vr,String performance,String print,String noneselected,String name,String email,String phn,String company_name,String budget,String message) {
		
		int id=0;
		Connection conn=null;
		PreparedStatement pst=null;

		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String submission_time = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("submission_time=>>"+submission_time);
		
		
		try {
			conn=DbConnection.getInstance().getConnection();
			pst=conn.prepareStatement("insert into contact (branding,content,design,ecommerce,webbdev,apps,vr,performance,print,name,email,phn,company_name,budget,message,noneselected,submission_date) values ('"+branding+"','"+content+"','"+design+"','"+ecommerce+"','"+webbdev+"','"+apps+"','"+vr+"','"+performance+"','"+print+"','"+name+"','"+email+"','"+phn+"','"+company_name+"','"+budget+"','"+message+"','"+noneselected+"','"+submission_time+"')",Statement.RETURN_GENERATED_KEYS);
			int i=pst.executeUpdate();
			if(i>0) {
				ResultSet gen=pst.getGeneratedKeys();
				if(gen.next()) {
					id=gen.getInt(1);
				}
				System.out.println("successfull===="+pst.toString());
				EmailSendThread emailSendThread=new EmailSendThread();
				emailSendThread.SendSingleEmail(name, email, "contact_confirm", id);
				ArrayList<String> options=new ArrayList<>();
				if(branding.equals("yes")) {
					options.add("Brand".concat(" ").concat("Strategy").concat("&").concat(" ").concat("Design"));
				}if(content.equals("yes")) {
					options.add("Content".concat(" ").concat("Strategy"));
				}if(design.equals("yes")) {
					options.add("UX".concat(" ").concat("&").concat(" ").concat("UI").concat("Design"));
				}if(ecommerce.equals("yes")) {
					options.add("eCommerce".concat(" ").concat("Design"));
				}if(webbdev.equals("yes")) {
					options.add("Web".concat(" ").concat("Development"));
				}if(apps.equals("yes")) {
					options.add("apps");
				}if(vr.equals("yes")) {
					options.add("vr");
				}if(performance.equals("yes")) {
					options.add("performance");
				}if(print.equals("yes")) {
					options.add("print");
				}if(noneselected.equals("yes")) {
					options.add("noneselected");
				}
				ArrayList<String> adminEmails=new ArrayList<>();
				adminEmails.add("rishabh@virtuosonetsoft.in");
				adminEmails.add("saurabh@virtuosonetsoft.com");
				adminEmails.add("asha@virtuosonetsoft.com");
				for(int ae=0;ae<adminEmails.size();ae++) {
					emailSendThread.SendEmail(adminEmails.get(ae), "Contact", "Hi Team! There is a new contact request from '"+name+"' interested in '"+options+"'.Contact Details are :- Phone ('"+phn+"') and email ('"+email+"')");
				}
			}else {
				System.out.println("failed=="+pst.toString());
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return id;
	}
public int getFreeAuditRequestsCount(int total,String search) {
	
	int count=0;

	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		if(search.equals("0")) {
			rs=st.executeQuery("select count(*) as count from free_audit");	
			System.out.println("select count(*) as count from free_audit");	

		}else {
			rs=st.executeQuery("select count(*) as count from free_audit where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phone LIKE '%"+search+"%'");	
			System.out.println("select count(*) as count from free_audit where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phone LIKE '%"+search+"%'");	

		}
		while(rs.next()) {
			count=rs.getInt("count");
			
		}
	}catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		}catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
	}
	return count/total;
}
public int getContactRequestsCount(int total,String search) {
	
	int count=0;

	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		if(search.equals("0")) {
			rs=st.executeQuery("select count(*) as count from contact");	
			System.out.println("select count(*) as count from contact");	

		}else {
			rs=st.executeQuery("select count(*) as count from contact where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phn LIKE '%"+search+"%' OR company_email LIKE '%"+search+"%'");	
			System.out.println("select count(*) as count from contact where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phn LIKE '%"+search+"%' OR company_email LIKE '%"+search+"%'");	

		}
		while(rs.next()) {
			count=rs.getInt("count");
			
		}
	}catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		}catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
	}
	return count/total;
}
public int getQuickEnquiriesCount(int total,String search) {
	
	int count=0;

	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		if(search.equals("0")) {
			rs=st.executeQuery("select count(*) as count from quick_enquiry");	
			System.out.println("select count(*) as count from quick_enquiry");	

		}else {
			rs=st.executeQuery("select count(*) as count from quick_enquiry where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phone LIKE '%"+search+"%' OR company LIKE '%"+search+"%'");	
			System.out.println("select count(*) as count from quick_enquiry where name LIKE '%"+search+"%' OR email LIKE '%"+search+"%' OR phone LIKE '%"+search+"%' OR company LIKE '%"+search+"%'");	

		}
		while(rs.next()) {
			count=rs.getInt("count");
			
		}
	}catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(rs!=null) {
				rs.close();
			}if(st!=null) {
				st.close();
			}
		}catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
	}
	return count/total;
}

	public free_audit parseFreeAudits(ResultSet rs)throws Exception{
		 free_audit fa=new free_audit();
		 
		 fa.setId(rs.getInt("id"));
		 fa.setName(rs.getString("name"));
		 fa.setEmail(rs.getString("email"));
		 fa.setPhone(rs.getString("phone"));
		 fa.setConfirmation_status(rs.getString("confirmation_status"));
		 fa.setConfirmation_url(rs.getString("confirmation_url"));
		 fa.setLatest_confirmation_email_sent_time(rs.getString("latest_confirmation_email_sent_time"));
		
		return fa;
		
	}
	
	public quick_enquiry parseQuickEnquiry(ResultSet rs)throws Exception{
		
		quick_enquiry qe=new quick_enquiry();
		qe.setCompany(rs.getString("company"));
		qe.setConfirmation_status(rs.getString("confirmation_status"));
		qe.setEmail(rs.getString("email"));
		qe.setId(rs.getInt("id"));
		qe.setMessage(rs.getString("message"));
		qe.setName(rs.getString("name"));
		qe.setPhone(rs.getString("phone"));
		qe.setSubmission_date(rs.getString("submission_date"));
		qe.setTrashed_status(rs.getString("trashed_status"));
		qe.setLatest_confirmation_email_sent_time(rs.getString("latest_confirmation_email_sent_time"));
	
		return qe;
	}
	public ArrayList<contact> fetchContactRequests(String search,int start,int total){

		
		ArrayList<contact> co=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			if(search.equals("0")) {
				rs=st.executeQuery("select * from contact order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from contact order by id desc limit "+(start-1)+","+total);

			}else {
				rs=st.executeQuery("select * from contact where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phn LIKE '%"+search+"%' or company_name LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from contact where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phn LIKE '%"+search+"%' or company_name LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
	 
			}
			while(rs.next()) {
				co.add(parseContacts(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(st!=null) {
					st.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return co;
	}
public ArrayList<contact> fetchContactRequestsAccordingToMultipleFilters(String fromdate,String todate,String services,int start,int total){

		
		ArrayList<contact> co=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			if(fromdate.equals("none") && todate.equals("none") && services!="all"){
				rs=st.executeQuery("select * from contact where "+services+"='yes' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from contact where "+services+"='yes' order by id desc limit "+(start-1)+","+total);
	 
			}else if(fromdate!="none" && todate!="none" && services.equals("all")){
				rs=st.executeQuery("select * from contact where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from contact where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
	 
			}else if(fromdate!="none" && todate!="none" && services!="all") {
				rs=st.executeQuery("select * from contact where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' and "+services+"='yes' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from contact where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' and "+services+"='yes' order by id desc limit "+(start-1)+","+total);

			}
			while(rs.next()) {
				co.add(parseContacts(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(st!=null) {
					st.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return co;
	}
public ArrayList<quick_enquiry> fetchQuickEnquiriesAccordingToMultipleFilters(String fromdate,String todate,int start,int total){

	
	ArrayList<quick_enquiry> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		
			rs=st.executeQuery("select * from quick_enquiry where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
			System.out.println("select * from quick_enquiry where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
 
		while(rs.next()) {
			co.add(parseQuickEnquiry(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}
public ArrayList<free_audit> fetchFreeAuditRequestsAccordingToMultipleFilters(String fromdate,String todate,String services,int start,int total){

	
	ArrayList<free_audit> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();
		if(fromdate.equals("none") && todate.equals("none") && services!="all"){
			rs=st.executeQuery("select * from free_audit where source_page='"+services+"' order by id desc limit "+(start-1)+","+total);
			System.out.println("select * from free_audit where source_page='"+services+"' order by id desc limit "+(start-1)+","+total);
 
		}else if(fromdate!="none" && todate!="none" && services.equals("all")){
			rs=st.executeQuery("select * from free_audit where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
			System.out.println("select * from free_audit where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' order by id desc limit "+(start-1)+","+total);
 
		}else if(fromdate!="none" && todate!="none" && services!="all") {
			rs=st.executeQuery("select * from free_audit where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' and source_page='"+services+"' order by id desc limit "+(start-1)+","+total);
			System.out.println("select * from free_audit where SUBSTRING(submission_date,1,10)>='"+fromdate+"' and SUBSTRING(submission_date,1,10)<='"+todate+"' and source_page='"+services+"' order by id desc limit "+(start-1)+","+total);

		}
		while(rs.next()) {
			co.add(parseFreeAudits(rs));
			System.out.println(rs.getString("submission_date"));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}

public ArrayList<quick_enquiry> fetchQuickEnquiriesWithFilters(String search,int start,int total,String confirmation,String trashed,String fromdate,String todate){

		
		ArrayList<quick_enquiry> co=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
	
				if(search.equals("0")) {
					rs=st.executeQuery("select * from quick_enquiry where submission_date >= '"+fromdate+"' order by id desc limit "+(start-1)+","+total);
					System.out.println("select * from quick_enquiry where submission_date >= '"+fromdate+"' order by id desc limit "+(start-1)+","+total);

				}else {
					rs=st.executeQuery("select * from quick_enquiry where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' or company LIKE '%"+search+"%' and (where submission_date>= '"+fromdate+"') order by id desc limit "+(start-1)+","+total);
					System.out.println("select * from quick_enquiry where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' or company LIKE '%"+search+"%' and (where submission_date>= '"+fromdate+"') order by id desc limit "+(start-1)+","+total);
		 
				}
			
			
			while(rs.next()) {
				co.add(parseQuickEnquiry(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(st!=null) {
					st.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return co;
	}
public ArrayList<quick_enquiry> fetchQuickEnquiries(String search,int start,int total){

	
	ArrayList<quick_enquiry> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();

			if(search.equals("0")) {
				rs=st.executeQuery("select * from quick_enquiry order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from quick_enquiry order by id desc limit "+(start-1)+","+total);

			}else {
				rs=st.executeQuery("select * from quick_enquiry where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' or company LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from quick_enquiry where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or phone LIKE '%"+search+"%' or company LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
	 
			}
		
		
		while(rs.next()) {
			co.add(parseQuickEnquiry(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}
public ArrayList<quick_enquiry> fetchQuickEnquiriesDetailsById(int id){

	
	ArrayList<quick_enquiry> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();

		
				rs=st.executeQuery("select * from quick_enquiry where id="+id);
				System.out.println("select * from quick_enquiry where id="+id);

		
		
		while(rs.next()) {
			co.add(parseQuickEnquiry(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}
public ArrayList<contact> fetchContactDetailsById(int id){

	
	ArrayList<contact> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();

		
				rs=st.executeQuery("select * from contact where id="+id);
				System.out.println("select * from contact where id="+id);

		
		
		while(rs.next()) {
			co.add(parseContacts(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}
public ArrayList<free_audit> fetchFreeAuditDetailsById(int id){

	
	ArrayList<free_audit> co=new ArrayList<>();
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	
	try {
		conn=DbConnection.getInstance().getConnection();
		st=conn.createStatement();

		
				rs=st.executeQuery("select * from free_audit where id="+id);
				System.out.println("select * from free_audit where id="+id);

		
		
		while(rs.next()) {
			co.add(parseFreeAudits(rs));
		}
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	finally {
		try {
			if(conn!=null) {
				conn.close();
			}if(st!=null) {
				st.close();
			}if(rs!=null) {
				rs.close();
			}
		} catch (Exception e2) {
			// TODO: handle exception
		e2.printStackTrace();
		}
	}
	return co;
}

public ArrayList<chat> fetchMessagesOnHelpDessk(String search,int start,int total){

		
		ArrayList<chat> co=new ArrayList<>();
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			st=conn.createStatement();
			if(search.equals("0")) {
				rs=st.executeQuery("select * from chat order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from chat order by id desc limit "+(start-1)+","+total);

			}else {
				rs=st.executeQuery("select * from chat where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or message LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
				System.out.println("select * from chat where name LIKE '%"+search+"%' or email LIKE '%"+search+"%' or message LIKE '%"+search+"%' order by id desc limit "+(start-1)+","+total);
	 
			}
			while(rs.next()) {
				co.add(parseChat(rs));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(st!=null) {
					st.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return co;
	}
public chat parseChat(ResultSet rs)throws Exception{
	
	chat c=new chat();
	c.setEmail(rs.getString("email"));
	c.setId(rs.getInt("id"));
	c.setMessage(rs.getString("message"));
	c.setName(rs.getString("name"));
	c.setStatusActive(rs.getString("statusActive"));
	
	return c;
}
	public contact parseContacts(ResultSet rs)throws Exception{
		
		contact co=new contact();
		
		co.setApps(rs.getString("apps"));
		co.setBranding(rs.getString("branding"));
		co.setBudget(rs.getString("budget"));
		co.setCompany_name(rs.getString("company_name"));
		co.setContent(rs.getString("content"));
		co.setDesign(rs.getString("design"));
		co.setEcommerce(rs.getString("ecommerce"));
		co.setEmail(rs.getString("email"));
		co.setId(rs.getInt("id"));
		co.setMessage(rs.getString("message"));
		co.setName(rs.getString("name"));
		co.setPerformance(rs.getString("performance"));
		co.setPhn(rs.getString("phn"));
		co.setPrint(rs.getString("print"));
		co.setVr(rs.getString("vr"));
		co.setWebbdev(rs.getString("webbdev"));
		co.setConfirmation_status(rs.getString("confirmation_status"));
		co.setLatest_confirmation_email_sent_time(rs.getString("latest_confirmation_email_sent_time"));
		co.setConfirmation_url(rs.getString("confirmation_url"));
		
		
	    return co;
	}
	public static void main(String args[]) {

		
		boolean check=true;
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		String valuee="";
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("server_datetime=>>"+server_datetime);
		
		try {
			con=DbConnection.getInstance().getConnection();
			st=con.createStatement();
			rs=st.executeQuery("select * from chat_initiate_request where chatid='00C07B8397C36FEFD66BB9FBB97C000D'");
			while(rs.next()) {
				 try {
					 System.out.println("last_reply_time=>>"+rs.getString("last_reply_time"));
						Date d1=sdf.parse(server_datetime);
						Date d2=sdf.parse(rs.getString("last_reply_time"));
						 long difference_In_Time 
			             = d1.getTime() - d2.getTime();

				          long diffMinutes = difference_In_Time / (60 * 1000) % 60;

				         System.out.println("difference in minutes==="+diffMinutes);
				          final int MILLI_TO_MIN = 1000 * 60;
				          int mins=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_MIN;
				          System.out.println("difference in minsminss==="+mins);
				          System.out.println("last_reply_by==="+rs.getString("last_reply_by"));
				          System.out.println("chat_status==="+rs.getString("chat_status"));
				       if(rs.getString("last_reply_by").equals("user") && rs.getString("chat_status").equals("in_process") && mins>=5) {
				        	  check=false;
				        	   valuee="last reply by user";
				          }else {
				        	  check=true;
				        valuee="last reply not by user";				          }

				  
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				check=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
System.out.println("value===="+valuee);
	
	}
	
}
