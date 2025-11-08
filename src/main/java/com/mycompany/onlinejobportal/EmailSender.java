/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.onlinejobportal;

import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.http.*;
import javax.servlet.*;

public class EmailSender {
    
    
        public boolean sendMail(String sendTo, String mailSubject, String mailMessage) {
            
            boolean status = true;
            String result = "";
            String to = sendTo;
            Properties properties = System.getProperties();

            String from = "student@programmerkashyap.com";
            String host = "mail.programmerkashyap.com";
            String password = "Jmv8euXg$75A";

            properties.put("mail.smtp.ssl.trust", "*");
            properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
            properties.setProperty("mail.smtp.host", host);
            properties.setProperty("mail.smtp.user", from);
            properties.setProperty("mail.smtp.password", password);
            properties.put("mail.smtp.port", 587);
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");

            // creates a new session with an authenticator
            Authenticator auth = new Authenticator() {
                public PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            };

            Session mailSession = Session.getInstance(properties, auth);

            try {
                MimeMessage message = new MimeMessage(mailSession);

                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                message.setSubject(mailSubject);

                message.setText(mailMessage);

                Transport.send(message);
                result = "Sent message successfully....";
                status = true;

            } catch (MessagingException mex) {
                status = false;
                result = "Error: - " + mex.getMessage();
            }

            return status;
        }
    
    
}

