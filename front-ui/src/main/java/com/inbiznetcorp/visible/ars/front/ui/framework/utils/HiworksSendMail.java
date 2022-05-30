package com.inbiznetcorp.visible.ars.front.ui.framework.utils;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class HiworksSendMail
{
    private static final String SMTP_HOST_NAME = "mail.ring2pay.com";
    private static final String SMTP_PORT = "25";

    public void sendMessage(String recipients[], String subject, String message, String from) throws MessagingException
    {
        Properties props = new Properties();
        props.put("mail.smtp.host", SMTP_HOST_NAME);
        props.put("mail.smtp.port", SMTP_PORT);
        Session session = Session.getDefaultInstance(props);
        Message msg = new MimeMessage(session);
        InternetAddress addressFrom = new InternetAddress(from);
        msg.setFrom(addressFrom);
        InternetAddress[] addressTo = new InternetAddress[recipients.length];
        for (int i = 0; i < recipients.length; i++)
        {
            addressTo[i] = new InternetAddress(recipients[i]);
        }
        msg.setRecipients(Message.RecipientType.TO, addressTo);
        // Setting the Subject and Content Type
        msg.setSubject(subject);
//        msg.setContent(message, "text/plain");
        msg.setContent(message, "text/html;charset=KSC5601");
        Transport.send(msg);
    }
}
