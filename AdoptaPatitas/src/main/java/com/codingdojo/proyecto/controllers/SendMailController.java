package com.codingdojo.proyecto.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.proyecto.services.SendMailService;

@Controller
public class SendMailController {

//	@Autowired
//	private SendMailService sendMailService;
//	
//	@GetMapping("/email")
//	public String email() {
//		return "email.jsp";
//	}
//	
//	@PostMapping("/enviar/email")
//	public String enviar() {		
//		sendMailService.sendMail("emersonxc97@gmail.com", "Prueba envio correo", "Hola");	
//		return "redirect:/";
//	}
}
