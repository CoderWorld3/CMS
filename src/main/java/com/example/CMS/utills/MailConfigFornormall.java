package com.example.CMS.utills;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.context.annotation.Configuration;

@Configuration
public class MailConfigFornormall {
	public void sendmail(String email, String string ) throws AddressException, MessagingException, IOException {
		String content ="<h3 style='color-red'><center> CMS</center><hr/></h3> ";
	    content +="<br><hr color=\"rgb(107, 65, 60);\" >\n"
	    		+ "<h3 style=\"color: rgb(107, 65, 60);font-family : cursive;font-size:22px\";> Hello  Madam/sir:<br> This Is Online System Where We Supports you in Programming language And About Bca\n"
	    		+ "  ,Mca-- <strong> CMS </strong>\n"
	    		+ " </br></h3>\n"
	    		+ " <hr color=\"rgb(107, 65, 60);\"/>";	
		content+=" <h2>SignIn Name:  "+string+"</h2>";
		   Properties props = new Properties();
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.port", "587");
		   
		   Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		      protected PasswordAuthentication getPasswordAuthentication() {
		         return new PasswordAuthentication("arvinmishra900@gmail.com", "ymzbcofifguwrpml");
		      }
		   });
		   Message msg = new MimeMessage(session);
		   msg.setFrom(new InternetAddress("arvinmishra900@gmail.com", false));

		   msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
		   msg.setSubject("CMS OTP");
		   msg.setContent("", "text/html");
		   msg.setSentDate(new Date());

		   MimeBodyPart messageBodyPart = new MimeBodyPart();
		   messageBodyPart.setContent(content, "text/html");

		   Multipart multipart = new MimeMultipart();
		   multipart.addBodyPart(messageBodyPart);
		   MimeBodyPart attachPart = new MimeBodyPart();
 

	   attachPart.attachFile(new File("/Users/arvinmishra/Documents/workspace-spring-tool-suite-4-4.13.0.RELEASE/CollageManagementSystem/src/main/resources/static/img/CMSLog.jpg"));
	 
 

	// TODO: handle exception
	  multipart.addBodyPart(attachPart);
	   msg.setContent(multipart);
	   Transport.send(msg);   
		
		}

}
