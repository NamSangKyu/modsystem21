package model;
import java.util.Date;
import java.util.Properties;
import java.util.Vector;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EMail {
	
	private static EMail instance = new EMail();
	private Properties pro;
	private Session session;
	private Message msg;

	private EMail() {
		super();
		// TODO Auto-generated constructor stub
		pro = new Properties();
		pro.put("mail.transport.protocol", "smtp");
		pro.put("mail.smtp.auth", "true");
		pro.put("mail.smtp.starttls.enable", "true");
		pro.put("mail.smtp.host", "smtp.gmail.com");
		pro.setProperty("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		pro.put("mail.smtp.port", "465");
	}
	
	
	public static EMail getInstance() {
		return instance;
	}

	public void send(String from, String to, String cc, String title,
			String content, String userId) {
		session = Session.getDefaultInstance(pro,
				new EmailAuthenticator("modsystem21", "modmod1234"));

		msg = new MimeMessage(session);

		try {
			// 보내는 사람
			msg.setFrom(new InternetAddress(from));
			
			// 받는 사람
			msg.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to, false));
			
			// 참조
			if (!cc.trim().equals("")) {
				msg.setRecipients(Message.RecipientType.CC,
						InternetAddress.parse(cc, false));
			}
			
			// 메일 제목
			msg.setSubject(title);
			// 내용
			msg.setText(content);
			// 보내는 날짜
			msg.setSentDate(new Date());
			// 메일 전송
			Transport.send(msg);

		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
