package com.book.tools;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	public static boolean sendMail(String to, String sub, String msg) {
	    //create an instance of Properties Class   
	    Properties props = new Properties();

	    /* Specifies the IP address of your default mail server
	 	   for e.g if you are using gmail server as an email sever
	       you will pass smtp.gmail.com as value of mail.smtp host. 
	       As shown here in the code. 
	       Change accordingly, if your email id is not a gmail id
	     */
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    //below mentioned mail.smtp.port is optional
	    props.put("mail.smtp.port", "587");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.ssl.protocols", "TLSv1.2");  

//	    props.put("mail.smtp.ssl.trust", "smtp.office365.com(site where your account is)");

	    /* Pass Properties object(props) and Authenticator object   
	       for authentication to Session instance 
	     */
	    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	        @Override
	        protected PasswordAuthentication getPasswordAuthentication() {
				
				 return new PasswordAuthentication("hc19082001@gmail.com",
				  "gdazklgwkwrgeyvg");
				
				/*
				 * return new PasswordAuthentication("sapmau2012@gmail.com",
				 * "kkdirosynqnmynna");
				 */
	            
	        }
	    });

	    try {

	        /* Create an instance of MimeMessage, 
		      it accept MIME types and headers 
	         */
	        MimeMessage message = new MimeMessage(session);
	        message.setFrom(new InternetAddress("hc19082001@gmail.com"));
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        message.setSubject(sub);
	        message.setContent(msg, "text/html");

	        /* Transport class is used to deliver the message to the recipients */
	        Transport.send(message);

	    } catch (MessagingException e) {
	        return false;
	    }
	    return true;
	}
}
