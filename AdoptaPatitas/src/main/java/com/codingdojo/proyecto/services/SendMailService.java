package com.codingdojo.proyecto.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class SendMailService {

	 @Autowired
	 private JavaMailSender javaMailSender;
	 
	 public void sendMail(String to, String subject, String text) {
		 
		 SimpleMailMessage message = new SimpleMailMessage();
		 
		 message.setFrom("adopta.patitas.cl@gmail.com");
		 message.setTo(to);
		 message.setSubject(subject);
		 message.setText(text);
		 
		 javaMailSender.send(message);	
		 
		 
		 
		 System.out.print("Correo enviado exitosamente.");
	 }
}
