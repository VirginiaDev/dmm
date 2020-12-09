<%@page import="java.awt.Window"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script>
    function showonlyone(clr,act) {
    	
if(clr == "" || clr == "null"){
	
	document.getElementById('home').style.backgroundColor = "#00a0df";
	document.getElementById('home1').style.color = "#fff";
	
} else if(clr=="home" || clr=="user_list" || clr=="category" ||clr=="package"){

	document.getElementById(clr).style.backgroundColor = "#00a0df";
document.getElementById(act).style.color = "#fff";

}else if(clr=="roles"||clr=="assignRoles"||clr=="siteInfo"||clr=="countries"||clr=="cities"||clr=="taxes"||clr=="cancelReason"||clr=="rating"||clr=="pushNotification"){
	
	document.getElementById(clr).style.backgroundColor = "#43caff";
	document.getElementById(act).style.color = "#fff";
	
	document.getElementById('general_setting1').style.backgroundColor = "#00a0df";
	document.getElementById('general_setting1').style.color = "#fff";
	
	var element = document.getElementById("general_setting");
	   element.classList.add("active");
	   
	}else if(clr=="languagesList1"||clr=="appLanguages"||clr=="backendLanguages"){
		
		document.getElementById(clr).style.backgroundColor = "#43caff";
		document.getElementById(act).style.color = "#fff";
		
		document.getElementById('languages1').style.backgroundColor = "#00a0df";
		document.getElementById('languages1').style.color = "#fff";
		
		var element = document.getElementById("languages");
		   element.classList.add("active");
		   
		}else if(clr=="languagesList2"||clr=="appLanguages"||clr=="backendLanguages"){
			
			document.getElementById(clr).style.backgroundColor = "#43caff";
			document.getElementById(act).style.color = "#fff";
			
			document.getElementById('languages1').style.backgroundColor = "#00a0df";
			document.getElementById('languages1').style.color = "#fff";
			
			var element = document.getElementById("languages");
			   element.classList.add("active");
			   
			}else if(clr=="languagesList3"||clr=="appLanguages"||clr=="backendLanguages"){
				
			//	document.getElementById(clr).style.backgroundColor = "#43caff";
			//	document.getElementById(act).style.color = "#fff";
				
				document.getElementById('languagesList3').style.backgroundColor = "#00a0df";
				document.getElementById('languagesList3').style.color = "#fff";
				
				var element = document.getElementById("languages");
				   element.classList.add("active");
				   
				}else if(clr=="languagesList4"||clr=="appLanguages"||clr=="backendLanguages"){
					
					document.getElementById(clr).style.backgroundColor = "#43caff";
					document.getElementById(act).style.color = "#fff";
					
					document.getElementById('languages1').style.backgroundColor = "#00a0df";
					document.getElementById('languages1').style.color = "#fff";
					
					var element = document.getElementById("languages");
					   element.classList.add("active");
					   
					}else if(clr=="languagesList5"||clr=="appLanguages"||clr=="backendLanguages"){
						
						document.getElementById(clr).style.backgroundColor = "#43caff";
						document.getElementById(act).style.color = "#fff";
						
						document.getElementById('languages2').style.backgroundColor = "#00a0df";
						document.getElementById('languages2').style.color = "#fff";
						
						var element = document.getElementById("languages");
						   element.classList.add("active");
						   
						}else if(clr=="languagesList6"||clr=="appLanguages"||clr=="backendLanguages"){
							
							document.getElementById(clr).style.backgroundColor = "#43caff";
							document.getElementById(act).style.color = "#fff";
							
							document.getElementById('languages2').style.backgroundColor = "#00a0df";
							document.getElementById('languages2').style.color = "#fff";
							
							var element = document.getElementById("languages");
							   element.classList.add("active");
							   
							}else if(clr=="languagesList7"||clr=="appLanguages"||clr=="backendLanguages"){
								
								document.getElementById(clr).style.backgroundColor = "#43caff";
								document.getElementById(act).style.color = "#fff";
								
								document.getElementById('languages2').style.backgroundColor = "#00a0df";
								document.getElementById('languages2').style.color = "#fff";
								
								var element = document.getElementById("languages");
								   element.classList.add("active");
								   
								}else if(clr=="languagesList8"||clr=="appLanguages"||clr=="backendLanguages"){
									
									document.getElementById(clr).style.backgroundColor = "#43caff";
									document.getElementById(act).style.color = "#fff";
									
									document.getElementById('languages2').style.backgroundColor = "#00a0df";
									document.getElementById('languages2').style.color = "#fff";
									
									var element = document.getElementById("languages");
									   element.classList.add("active");
									   
									}else if(clr=="languagesList9"||clr=="appLanguages"||clr=="backendLanguages"){
										
										document.getElementById(clr).style.backgroundColor = "#43caff";
										document.getElementById(act).style.color = "#fff";
										
										document.getElementById('languages1').style.backgroundColor = "#00a0df";
										document.getElementById('languages1').style.color = "#fff";
										
										var element = document.getElementById("languages");
										   element.classList.add("active");
										   
										}else if(clr=="languagesList10"||clr=="appLanguages"||clr=="backendLanguages"){
											
											document.getElementById(clr).style.backgroundColor = "#43caff";
											document.getElementById(act).style.color = "#fff";
											
											document.getElementById('languages5').style.backgroundColor = "#00a0df";
											document.getElementById('languages5').style.color = "#fff";
											
											var element = document.getElementById("languages");
											   element.classList.add("active");
											   
											}else if(clr=="languagesList10.1"||clr=="appLanguages"||clr=="backendLanguages"){
												
												document.getElementById(clr).style.backgroundColor = "#43caff";
												document.getElementById(act).style.color = "#fff";
												
												document.getElementById('languages5').style.backgroundColor = "#00a0df";
												document.getElementById('languages5').style.color = "#fff";
												
												var element = document.getElementById("languages");
												   element.classList.add("active");
												   
												}else if(clr=="languagesList11"||clr=="appLanguages"||clr=="backendLanguages"){
												
												document.getElementById(clr).style.backgroundColor = "#43caff";
												document.getElementById(act).style.color = "#fff";
												
												document.getElementById('languages2').style.backgroundColor = "#00a0df";
												document.getElementById('languages2').style.color = "#fff";
												
												var element = document.getElementById("languages");
												   element.classList.add("active");
												   
												}else if(clr=="languagesList12"||clr=="appLanguages"||clr=="backendLanguages"){
													
													document.getElementById(clr).style.backgroundColor = "#43caff";
													document.getElementById(act).style.color = "#fff";
													
													document.getElementById('languages2').style.backgroundColor = "#00a0df";
													document.getElementById('languages2').style.color = "#fff";
													
													var element = document.getElementById("languages");
													   element.classList.add("active");
													   
													}else if(clr=="languagesList14"||clr=="appLanguages"||clr=="backendLanguages"){
														
														document.getElementById(clr).style.backgroundColor = "#43caff";
														document.getElementById(act).style.color = "#fff";
														
														
														
														var element = document.getElementById("languages");
														   element.classList.add("active");
														   
														}else if(clr=="languagesList15"||clr=="appLanguages"||clr=="backendLanguages"){
															
															document.getElementById(clr).style.backgroundColor = "#43caff";
															document.getElementById(act).style.color = "#fff";
															
															document.getElementById('languages3').style.backgroundColor = "#00a0df";
															document.getElementById('languages3').style.color = "#fff";
															
															var element = document.getElementById("languages");
															   element.classList.add("active");
															   
															}else if(clr=="languagesList16"||clr=="appLanguages"||clr=="backendLanguages"){
																
																document.getElementById(clr).style.backgroundColor = "#43caff";
																document.getElementById(act).style.color = "#fff";
																
																document.getElementById('languages4').style.backgroundColor = "#00a0df";
																document.getElementById('languages4').style.color = "#fff";
																
																var element = document.getElementById("languages");
																   element.classList.add("active");
																   
																}else if(clr=="languagesList16.1"||clr=="appLanguages"||clr=="backendLanguages"){
																	
																	document.getElementById(clr).style.backgroundColor = "#43caff";
																	document.getElementById(act).style.color = "#fff";
																	
																	document.getElementById('languages4').style.backgroundColor = "#00a0df";
																	document.getElementById('languages4').style.color = "#fff";
																	
																	var element = document.getElementById("languages");
																	   element.classList.add("active");
																	   
																	}else if(clr=="languagesList17"||clr=="appLanguages"||clr=="backendLanguages"){
																	
																	document.getElementById(clr).style.backgroundColor = "#43caff";
																	document.getElementById(act).style.color = "#fff";
																
																	
																	var element = document.getElementById("languages");
																	   element.classList.add("active");
																	   
																	}else if(clr=="languagesList18"||clr=="appLanguages"||clr=="backendLanguages"){
																		
																		document.getElementById(clr).style.backgroundColor = "#43caff";
																		document.getElementById(act).style.color = "#fff";
																	
																		
																		var element = document.getElementById("languages");
																		   element.classList.add("active");
																		   
																		}else if(clr=="languagesList19"||clr=="appLanguages"||clr=="backendLanguages"){
																			
																			document.getElementById(clr).style.backgroundColor = "#43caff";
																			document.getElementById(act).style.color = "#fff";
																		
																			
																			var element = document.getElementById("languages");
																			   element.classList.add("active");
																			   
																			}else if(clr=="languagesList20"||clr=="appLanguages"||clr=="backendLanguages"){
																				
																				document.getElementById(clr).style.backgroundColor = "#43caff";
																				document.getElementById(act).style.color = "#fff";
																			
																				
																				var element = document.getElementById("languages");
																				   element.classList.add("active");
																				   
																				}else if(clr=="languagesList21"||clr=="appLanguages"||clr=="backendLanguages"){
																					
																					document.getElementById(clr).style.backgroundColor = "#43caff";
																					document.getElementById(act).style.color = "#fff";
																				
																					
																					//var element = document.getElementById("languages");
																					//   element.classList.add("active");
																					   
																					}else if(clr=="imageList"||clr=="activeRides"||clr=="completedRides"||clr=="pendingRides"||clr=="cancelledRides"){
			
			document.getElementById(clr).style.backgroundColor = "#43caff";
			document.getElementById(act).style.color = "#fff";
			
			document.getElementById('imageManagement1').style.backgroundColor = "#00a0df";
			document.getElementById('imageManagement1').style.color = "#fff";
			var element = document.getElementById("imageManagement");
			   element.classList.add("active");
			   
			}else if(clr=="companiesList"){
				
				document.getElementById(clr).style.backgroundColor = "#43caff";
				document.getElementById(act).style.color = "#fff";
				
				document.getElementById('companies1').style.backgroundColor = "#00a0df";
				document.getElementById('companies1').style.color = "#fff";
				
				var element = document.getElementById("companies");
				   element.classList.add("active");
				   
				}else if(clr=="vehiclecolor"||clr=="bodyStyle"||clr=="vehicleclass"||clr=="commissionsetup"||clr=="vehicleManagement"||clr=="vehicleDocument"){
					
					document.getElementById(clr).style.backgroundColor = "#43caff";
					document.getElementById(act).style.color = "#fff";
					
					document.getElementById('vehicle1').style.backgroundColor = "#00a0df";
					document.getElementById('vehicle1').style.color = "#fff";
					
					var element = document.getElementById("vehicle");
					   element.classList.add("active");
					   
					}else if(clr=="driverList"||clr=="addDriver"){
						
						document.getElementById(clr).style.backgroundColor = "#43caff";
						document.getElementById(act).style.color = "#fff";
						
						document.getElementById('drivers1').style.backgroundColor = "#00a0df";
						document.getElementById('drivers1').style.color = "#fff";
						
						var element = document.getElementById("drivers");
						   element.classList.add("active");
						   
						}else if(clr=="customerList"||clr=="addCustomer"){
							
							document.getElementById(clr).style.backgroundColor = "#43caff";
							document.getElementById(act).style.color = "#fff";
							
							document.getElementById('users1').style.backgroundColor = "#00a0df";
							document.getElementById('users1').style.color = "#fff";
							
							var element = document.getElementById("users");
							   element.classList.add("active");
							   
							}else if(clr=="promoCode"||clr=="referalCode"){
								
								document.getElementById(clr).style.backgroundColor = "#43caff";
								document.getElementById(act).style.color = "#fff";
								
								document.getElementById('discount1').style.backgroundColor = "#00a0df";
								document.getElementById('discount1').style.color = "#fff";
								
								var element = document.getElementById("discount");
								   element.classList.add("active");
								   
								}else if(clr=="paymentList"){
									
									document.getElementById(clr).style.backgroundColor = "#43caff";
									document.getElementById(act).style.color = "#fff";
									
									document.getElementById('payment1').style.backgroundColor = "#00a0df";
									document.getElementById('payment1').style.color = "#fff";
									
									var element = document.getElementById("payment");
									   element.classList.add("active");
									   
									}
}
    </script> 
    
    

</head>
<body>

<%
String clr = request.getParameter("clr");
String act = request.getParameter("act");


System.out.println("clr=>>"+clr);
	System.out.println("act=>>"+act);
%>

<div class="sidebar navbar-default" role="navigation">
				<section class="left_sidebar">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                  
                        <li id="home">
                            <a href="admin-dashboard.jsp?clr=home&act=home1" id="home1"> Dashboard</a>
                        </li>
                        
                          <li id="general_setting">
                            <a href="#"  id="general_setting1">Requests</a>
                            <ul class="nav nav-second-level">
                                <li id="roles">
                                    <a href="freeAuditRequests.jsp?clr=roles&act=roles1" id="roles1">Free Audit Requests</a>
                                </li>
                                <li id="assignRoles">
                                    <a href="ContactRequests.jsp?clr=assignRoles&act=assignRoles1" id="assignRoles1">Contacts</a>
                                </li>
                                <li id="assignRoles">
                                    <a href="QuickEnquiries.jsp?clr=assignRoles&act=assignRoles2" id="assignRoles2">Quick Enquiries</a>
                                </li>
                              
                            </ul>
                        </li>
                        <li id="general_setting">
                            <a href="#"  id="general_setting1">Chats</a>
                            <ul class="nav nav-second-level">
                                <li id="roles">
                                    <a href="adminChatt.jsp?clr=roles&act=roles1" id="roles1">View Chats</a>
                                </li>
                               <!-- <li id="assignRoles">
                                    <a href="MessagesOnHelpdesk.jsp?clr=assignRoles&act=assignRoles1" id="assignRoles1">Helpdesk</a>
                                </li> --> 
                              
                            </ul>
                        </li>
                        <li id="general_setting">
                            <a href="uploadPictures.jsp"  id="general_setting1">Upload Pictures</a>
                           
                        </li>
                        
                        
                    </ul>
                </div>
          </section>  </div>
</body>
</html>
