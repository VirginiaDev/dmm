package Email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import beans.base_urls;
import dao.ApiController;

public class SendWaitingEmail {

	public  SendWaitingEmail(String customername,String email,String send_to_type,int linkid)
	{

		
		String host ="smtp.gmail.com" ; 
		String user = "virginia@parrotinfosoft.com";
		String pass = "Seraph@2018"; 
		String to = email; 
		String from = "info@parrotinfosoft.com";
		String subject="";
		String txt_msg="";
		
		Properties props = new Properties();
        //props.put("mail.smtp.host", "smtp.mail.yahoo.com");
        props.put("mail.smtp.host", "smtp.gmail.com");  
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(user, pass);//change accordingly  
            }
        });

        //compose message  
        try {

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));//change accordingly  
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            String link="";
            String table_name="";
            if(send_to_type.equals("contact_confirm_wait")) {
            	link=base_urls.url+"ConfirmEmail.jsp?id="+linkid+"&type=contact";
            	table_name="contact";
            }else if(send_to_type.equals("quick_enquiry_confirm_wait")) {
            	link=base_urls.url+"ConfirmEmail.jsp?id="+linkid+"&type=quick_enquiry";
            	table_name="quick_enquiry";
            }else if(send_to_type.equals("free_audit_confirm_wait")) {
            	link=base_urls.url+"ConfirmEmail.jsp?id="+linkid+"&type=free_audit";
            	table_name="free_audit";
            }
            	
            	String homepage=base_urls.url+"services";
            message.setSubject("Pending Confirmation Email For VNS.DMM");
            message.setText(txt_msg);
          
            message.setContent("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"<html xmlns='http://www.w3.org/1999/xhtml'>\r\n" + 
            		"<head>\r\n" + 
            		"	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />\r\n" + 
            		"	<meta name='viewport' content='width=device-width'/>\r\n" + 
            		"	<title>Confirmation Mail</title>\r\n" + 
            		"	\r\n" + 
            		"	<style type='text/css'>\r\n" + 
            		"	\r\n" + 
            		"	.btn-danger {\r\n" + 
            		"    color: #fff;\r\n" + 
            		"   background-color: #dc3545 !important;\r\n" + 
            		"    border-color: #dc3545 !important;\r\n" + 
            		"}\r\n" + 
            		".btn {\r\n" + 
            		"    display: inline-block;\r\n" + 
            		"    font-weight: 400;\r\n" + 
            		"    color: #212529;\r\n" + 
            		"    text-align: center;\r\n" + 
            		"    vertical-align: middle;\r\n" + 
            		"    -webkit-user-select: none;\r\n" + 
            		"    -moz-user-select: none;\r\n" + 
            		"    -ms-user-select: none;\r\n" + 
            		"    user-select: none;\r\n" + 
            		"    background-color: transparent;\r\n" + 
            		"    border: 1px solid transparent;\r\n" + 
            		"    padding: .375rem .75rem;\r\n" + 
            		"    font-size: 1rem;\r\n" + 
            		"    line-height: 1.5;\r\n" + 
            		"    border-radius: .25rem;\r\n" + 
            		"    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;\r\n" + 
            		"}\r\n" + 
            		"\r\n" + 
            		"		/*////// RESET STYLES //////*/\r\n" + 
            		"		body{height:100% !important; margin:0; padding:0; width:100% !important; text-align: center; font-family: 'Poppins', sans-serif;}\r\n" + 
            		"		table{border-collapse:separate;}\r\n" + 
            		"		img, a img{border:0; outline:none; text-decoration:none;}\r\n" + 
            		"		h1, h2, h3, h4, h5, h6{margin:0; padding:0;}\r\n" + 
            		"		p{margin: 1em 0;}\r\n" + 
            		"		img{width: 100%}\r\n" + 
            		"\r\n" + 
            		"		/*////// CLIENT-SPECIFIC STYLES //////*/\r\n" + 
            		"		.ReadMsgBody{width:100%;} .ExternalClass{width:100%;}\r\n" + 
            		"		.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height:100%;}\r\n" + 
            		"		table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;}\r\n" + 
            		"		#outlook a{padding:0;}\r\n" + 
            		"		img{-ms-interpolation-mode: bicubic;}\r\n" + 
            		"		body, table, td, p, a, li, blockquote{-ms-text-size-adjust:100%; -webkit-text-size-adjust:100%;}\r\n" + 
            		"			\r\n" + 
            		"		/*////// GENERAL STYLES //////*/\r\n" + 
            		"		img{ max-width: 100%; height: auto; }\r\n" + 
            		"\r\n" + 
            		"		/*////// TABLET STYLES //////*/\r\n" + 
            		"		@media only screen and (max-width: 620px) {\r\n" + 
            		"		.shrink_font{\r\n" + 
            		"			font-size: 62px;\r\n" + 
            		"		}\r\n" + 
            		"		/*////// GENERAL STYLES //////*/\r\n" + 
            		"			#foxeslab-email .table1 { width: 90% !important;}\r\n" + 
            		"			#foxeslab-email .table1-2 { width: 98% !important; margin-left: 1%; margin-right: 1%;}\r\n" + 
            		"			#foxeslab-email .table1-3 { width: 98% !important; margin-left: 1%; margin-right: 1%;}\r\n" + 
            		"			#foxeslab-email .table1-4 { width: 98% !important; margin-left: 1%; margin-right: 1%;}\r\n" + 
            		"			#foxeslab-email .table1-5 { width: 90% !important; margin-left: 5%; margin-right: 5%;}\r\n" + 
            		"\r\n" + 
            		"			#foxeslab-email .tablet_no_float { clear: both; width: 100% !important; margin: 0 auto !important; text-align: center !important; }\r\n" + 
            		"			#foxeslab-email .tablet_wise_float { clear: both; float: none !important; width: auto !important; margin: 0 auto !important; text-align: center !important; }\r\n" + 
            		"\r\n" + 
            		"			#foxeslab-email .tablet_hide { display: none !important; }\r\n" + 
            		"\r\n" + 
            		"			#foxeslab-email .image1 { width: 98% !important; }\r\n" + 
            		"			#foxeslab-email .image1-290 { width: 100% !important; max-width: 290px !important; }\r\n" + 
            		"\r\n" + 
            		"			.center_content{ text-align: center !important; }\r\n" + 
            		"			.center_image{ margin: 0 auto !important; }\r\n" + 
            		"			.center_button{ width: 50% !important;margin-left: 25% !important;max-width: 250px !important; }\r\n" + 
            		"			.centerize{margin: 0 auto !important;}\r\n" + 
            		"		}\r\n" + 
            		"\r\n" + 
            		"	\r\n" + 
            		"		/*////// MOBILE STYLES //////*/\r\n" + 
            		"		@media only screen and (max-width: 480px){\r\n" + 
            		"			.shrink_font{\r\n" + 
            		"				font-size: 48px;\r\n" + 
            		"			}\r\n" + 
            		"			.safe_color{\r\n" + 
            		"				color: #6a1b9a !important;\r\n" + 
            		"			}\r\n" + 
            		"			/*////// CLIENT-SPECIFIC STYLES //////*/\r\n" + 
            		"			body{width:100% !important; min-width:100% !important;} /* Force iOS Mail to render the email at full width. */\r\n" + 
            		"			table[class='flexibleContainer']{ width: 100% !important; }/* to prevent Yahoo Mail from rendering media query styles on desktop */\r\n" + 
            		"\r\n" + 
            		"			/*////// GENERAL STYLES //////*/\r\n" + 
            		"			img[class='flexibleImage']{height:auto !important; width:100% !important;}\r\n" + 
            		"\r\n" + 
            		"			#foxeslab-email .table1 { width: 98% !important; }\r\n" + 
            		"			#foxeslab-email .no_float { clear: both; width: 100% !important; margin: 0 auto !important; text-align: center !important; }\r\n" + 
            		"			#foxeslab-email .wise_float {	clear: both;	float: none !important;	width: auto !important;	margin: 0 auto !important;	text-align: center !important;	}\r\n" + 
            		"\r\n" + 
            		"			#foxeslab-email .mobile_hide { display: none !important; }\r\n" + 
            		"			.auto_height{height: auto !important;}\r\n" + 
            		"		}\r\n" + 
            		"		\r\n" + 
            		"		\r\n" + 
            		"/*=========================\r\n" + 
            		"  Icons\r\n" + 
            		" ================= */\r\n" + 
            		"\r\n" + 
            		"/* footer social icons */\r\n" + 
            		"ul.social-network {\r\n" + 
            		"	list-style: none;\r\n" + 
            		"	display: inline;\r\n" + 
            		"	margin-left:0 !important;\r\n" + 
            		"	padding: 0;\r\n" + 
            		"}\r\n" + 
            		"ul.social-network li {\r\n" + 
            		"	display: inline;\r\n" + 
            		"	margin: 0 5px;\r\n" + 
            		"}\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"/* footer social icons */\r\n" + 
            		".social-network a.icoinstagram:hover {\r\n" + 
            		"	background-color: #0078d7;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoyoutube:hover {\r\n" + 
            		"	background-color: #f00;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoFacebook:hover {\r\n" + 
            		"	background-color:#3B5998;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoTwitter:hover {\r\n" + 
            		"	background-color:#33ccff;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoGoogle:hover {\r\n" + 
            		"	background-color:#BD3518;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoVimeo:hover {\r\n" + 
            		"	background-color:#0590B8;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoLinkedin:hover {\r\n" + 
            		"	background-color:#007bb7;\r\n" + 
            		"}\r\n" + 
            		".social-network a.icoRss:hover i, .social-network a.icoFacebook:hover i, .social-network a.icoTwitter:hover i,\r\n" + 
            		".social-network a.icoGoogle:hover i, .social-network a.icoVimeo:hover i, .social-network a.icoLinkedin:hover i {\r\n" + 
            		"	color:#fff;\r\n" + 
            		"}\r\n" + 
            		"a.socialIcon:hover, .socialHoverClass {\r\n" + 
            		"	color:#44BCDD;\r\n" + 
            		"}\r\n" + 
            		"\r\n" + 
            		".social-circle li a {\r\n" + 
            		"	display:inline-block;\r\n" + 
            		"	position:relative;\r\n" + 
            		"	margin:0 auto 0 auto;\r\n" + 
            		"	-moz-border-radius:50%;\r\n" + 
            		"	-webkit-border-radius:50%;\r\n" + 
            		"	border-radius:50%;\r\n" + 
            		"	text-align:center;\r\n" + 
            		"	width: 50px;\r\n" + 
            		"	height: 50px;\r\n" + 
            		"	font-size:20px;\r\n" + 
            		"}\r\n" + 
            		".social-circle li i {\r\n" + 
            		"	margin:0;\r\n" + 
            		"	line-height:50px;\r\n" + 
            		"	text-align: center;\r\n" + 
            		"}\r\n" + 
            		"\r\n" + 
            		".social-circle li a:hover i, .triggeredHover {\r\n" + 
            		"	-moz-transform: rotate(360deg);\r\n" + 
            		"	-webkit-transform: rotate(360deg);\r\n" + 
            		"	-ms--transform: rotate(360deg);\r\n" + 
            		"	transform: rotate(360deg);\r\n" + 
            		"	-webkit-transition: all 0.2s;\r\n" + 
            		"	-moz-transition: all 0.2s;\r\n" + 
            		"	-o-transition: all 0.2s;\r\n" + 
            		"	-ms-transition: all 0.2s;\r\n" + 
            		"	transition: all 0.2s;\r\n" + 
            		"}\r\n" + 
            		".social-circle i {\r\n" + 
            		"	color: #fff;\r\n" + 
            		"	-webkit-transition: all 0.8s;\r\n" + 
            		"	-moz-transition: all 0.8s;\r\n" + 
            		"	-o-transition: all 0.8s;\r\n" + 
            		"	-ms-transition: all 0.8s;\r\n" + 
            		"	transition: all 0.8s;\r\n" + 
            		"}\r\n" + 
            		"\r\n" + 
            		".social-circle a {\r\n" + 
            		" background-color: #FF7F66 !important;   \r\n" + 
            		"}\r\n" + 
            		"		.banner{background: url(http://dmm.virtuosonetsoft.com/dmm/frontmail.jpg) no-repeat;\r\n" + 
            		"		width: 100%;\r\n" + 
            		"		float: left;\r\n" + 
            		"		height: 70vh}\r\n" + 
            		"		\r\n" + 
            		"		.editable-img img{max-width: 100px\r\n" + 
            		"		} \r\n" + 
            		"		\r\n" + 
            		"		.banner p{margin: 0}\r\n" + 
            		"		\r\n" + 
            		"	</style>\r\n" + 
            		"</head>\r\n" + 
            		"<body style='padding: 0;margin: 0;' id='foxeslab-email'>\r\n" + 
            		"\r\n" + 
            		"<!-- template-1 -->\r\n" + 
            		"<table class='table_full editable-bg-color bg_color_ffffff editable-bg-image' bgcolor='#ffffff' width='100%' align='center'  mc:repeatable='castellab' mc:variant='Header' cellspacing='0' cellpadding='0' border='0' style='background-image: url(#); background-repeat: no-repeat; background-position: center left; background-size: 100% 100%; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;' background='rgb(44,40,43)'>\r\n" + 
            		"	<!-- padding-top -->\r\n" + 
            		"	<tr><td height='100'></td></tr>\r\n" + 
            		"\r\n" + 
            		"	<!-- header -->\r\n" + 
            		"	<tr>\r\n" + 
            		"		<td>\r\n" + 
            		"			<table class='table1' width='600' align='center' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
            		"				<tr>\r\n" + 
            		"					<td bgcolor='#fcfcfc' style='padding-top: 30px;padding-right: 40px;padding-bottom: 0;padding-left: 40px; border: 1px solid #f2f2f2; border-radius: 5px; background: #353535'>\r\n" + 
            		"						<!-- Logo -->\r\n" + 
            		"						<table class='no_float' align='left' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
            		"							<tr>\r\n" + 
            		"								<td class='editable-img' align='center'>\r\n" + 
            		"									<a href='#'>\r\n" + 
            		"										<b style=\"color:#fff;font-size:20px;\">VNS.DMM</b>\r\n" + 
            		"									</a>\r\n" + 
            		"								</td>\r\n" + 
            		"							</tr>\r\n" + 
            		"							<!-- margin-bottom -->\r\n" + 
            		"							<tr><td height='30'></td></tr>\r\n" + 
            		"						</table><!-- END logo -->\r\n" + 
            		"\r\n" + 
            		"						<!-- social icons -->\r\n" + 
            		"						        \r\n" + 
            		"					</td>\r\n" + 
            		"				</tr>\r\n" + 
            		"			</table>\r\n" + 
            		"		</td>\r\n" + 
            		"	</tr>\r\n" + 
            		"			</table>\r\n" + 
            		"		</td>\r\n" + 
            		"	</tr><!-- END header -->\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"\r\n" + 
            		"	<!-- body -->\r\n" + 
            		"	<tr>\r\n" + 
            		"		<td>\r\n" + 
            		"			<table class='table1' width='600' align='center' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
            		"				<tr>\r\n" + 
            		"					<td bgcolor='#fcfcfc' style='padding: 0px 0;border: 1px solid #f2f2f2;border-radius: 5px;'>\r\n" + 
            		"						<!-- body-container -->\r\n" + 
            		"						<table class='table1' width='100%' align='center' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
            		"\r\n" + 
            		"							<!-- email heading -->\r\n" + 
            		"						\r\n" + 
            		"						\r\n" + 
            		"\r\n" + 
            		"							<!-- main-icon -->\r\n" + 
            		"							<tr>\r\n" + 
            		"								<td class='editable-img' align='center'>\r\n" + 
            		"									<div class='banner'>\r\n" + 
            		"									<div style='margin-top: 330px'>\r\n" + 
            		"										<p style='color: #000; font-size:24px'><b>Hi, "+customername+"</b></p>\r\n" + 
            		"										<p style='color: #000; font-size:16px;  '>Thank you for give us a chance to provide you our services. </p>\r\n" + 
            		"										</div>\r\n" + 
            		"									<p style='text-align: center; margin: 10px 0'><button type='button' class='btn btn-danger'><a href='"+link+"' style='color: #fff;text-decoration: none;'>CONFIRM HERE</a></button></p>\r\n" + 
            		"									</div>\r\n" + 
            		"								</td>\r\n" + 
            		"							</tr><!-- END main-icon -->\r\n" + 
            		"\r\n" + 
            		"							<!-- horizontal gap -->\r\n" + 
            		"							<tr><td height='35'></td></tr>\r\n" + 
            		"\r\n" + 
            		"							<!-- email details -->\r\n" + 
            		"							<tr>\r\n" + 
            		"								<td align='center' mc:edit='text102' class='text_color_c6c6c6' style='line-height: 1.8;color: #333; font-size: 14px; font-weight: 400; font-family:  mso-line-height-rule: exactly; padding: 10px'>\r\n" + 
            		"									<div class='editable-text'>\r\n" + 
            		"										<span class='text_container'>\r\n" + 
            		"											\r\n" + 
            		"											<p>Thank you for giving us a chance to provide you our services.</p>\r\n" + 
            		"											<p>Your request has been received by VNS team.</p>\r\n" + 
            		"											<p>Your Confirmation is pending.Please CONFIRM the mail by clicking the above button </p>\r\n" + 
            		"											\r\n" + 
            		"											<p>We will will get back to you soon!</p>\r\n" + 
            		"											<p>Know more about our services by clicking <a href='"+homepage+"'>here</a></p>\r\n" + 
            		"											<p><b>Thanks,<br>\r\n" + 
            		"												Virtuoso Netsoft Pvt. Ltd.</b></p>\r\n" + 
            		"										\r\n" + 
            		"										</span>\r\n" + 
            		"									</div>\r\n" + 
            		"								</td>\r\n" + 
            		"							</tr><!-- END email details -->\r\n" + 
            		"\r\n" + 
            		"							<!-- horizontal gap -->\r\n" + 
            		"							<tr><td height='35'></td></tr>\r\n" + 
            		"							\r\n" + 
            		"							<!-- buttons -->\r\n" + 
            		"							\r\n" + 
            		"						</table><!-- END body-container -->\r\n" + 
            		"					</td>\r\n" + 
            		"				</tr>\r\n" + 
            		"			</table>\r\n" + 
            		"		</td>\r\n" + 
            		"	</tr><!-- END body -->\r\n" + 
            		"\r\n" + 
            		"	<!-- horizontal gap -->\r\n" + 
            		"	\r\n" + 
            		"	\r\n" + 
            		"	<tr>\r\n" + 
            		"          <td style='padding:38px 0px;' class='em_padd' valign='top' bgcolor='#fff' align='center'><table width='100%' cellspacing='0' cellpadding='0' border='0' align='center'>\r\n" + 
            		"              <tbody><tr>\r\n" + 
            		"                <td valign='top' align='center' bgcolor='#fff' style='padding: 20px'>	<div class='col-md-12'>\r\n" + 
            		"                    <ul class='social-network social-circle'>\r\n" + 
            		"                        <li><a href='https://www.facebook.com/sms24hours.india/' class='icoFacebook' title='Fb'><i><img src='fb-icon.png'></i></a></li>\r\n" + 
            		"             \r\n" + 
            		"                        <li><a href='https://twitter.com/24hours_sms' class='icoTwitter' title='Twitter'><i><img src='twitter-icon.png'></i></a></li>\r\n" + 
            		"						\r\n" + 
            		"                        <li><a href='https://www.instagram.com/sms.24hours/' class='icoInstagram' title='instagram'><i><img src='insta-icon.png'></i></a></li>\r\n" + 
            		"                        <li><a href='https://www.linkedin.com/company/sms24hours/' class='icoLinkedin' title='Linkedin'><i><img src='linkedin-icon.png'></i></a></li>\r\n" + 
            		"						\r\n" + 
            		"                    </ul>	\r\n" + 
            		"					\r\n" + 
            		"\r\n" + 
            		"					</div></td>\r\n" + 
            		"                    </tr>\r\n" + 
            		"                  </tbody></table></td>\r\n" + 
            		"              </tr>\r\n" + 
            		"\r\n" + 
            		"	<!-- footer -->\r\n" + 
            		"	<tr>\r\n" + 
            		"		<td>\r\n" + 
            		"			<table class='table1' width='600' align='center' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
            		"				<tr>\r\n" + 
            		"					<td align='center' mc:edit='text105' class='text_color_c6c6c6' style='line-height: 1;color: #c6c6c6; font-size: 14px; font-weight: 400; mso-line-height-rule: exactly;'>\r\n" + 
            		"						<div class='editable-text'>\r\n" + 
            		"							<span class='text_container'>&copy; 2011. All Rights Reserved.</span>\r\n" + 
            		"						</div>\r\n" + 
            		"					</td>\r\n" + 
            		"				</tr>\r\n" + 
            		"				<!-- horizontal gap -->\r\n" + 
            		"				<tr><td height='15'></td></tr>\r\n" + 
            		"\r\n" + 
            		"				<tr>\r\n" + 
            		"					<td align='center' mc:edit='text106' class='text_color_c6c6c6' style='line-height: 1;color: #c6c6c6; font-size: 14px; font-weight: 400; mso-line-height-rule: exactly;'>\r\n" + 
            		"						<div class='editable-text'>\r\n" + 
            		"							<span class='text_container'>Plot No-10, Netsmartz House, IT-Park, Chandigarh, Post Code:-160101</span>\r\n" + 
            		"						</div>\r\n" + 
            		"					</td>\r\n" + 
            		"				</tr>\r\n" + 
            		"			</table>\r\n" + 
            		"		</td>\r\n" + 
            		"	</tr><!-- END footer -->\r\n" + 
            		"\r\n" + 
            		"	<!-- padding-bottom -->\r\n" + 
            		"	<tr><td height='100'></td></tr>\r\n" + 
            		"</table>\r\n" + 
            		"\r\n" + 
            		"</body>\r\n" + 
            		"</html>","text/html" ); 
            
            //send message  
            Transport.send(message);
            System.out.println("message sent to ----" + to);
            ApiController apiController=new ApiController();
            int i=apiController.updateConfirmationTime(linkid, table_name);

        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }

	

    

	}
}
