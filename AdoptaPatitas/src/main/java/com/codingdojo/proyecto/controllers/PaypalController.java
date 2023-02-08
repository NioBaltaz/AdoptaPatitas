package com.codingdojo.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaypalController {

	@GetMapping("/success")
	public String success() {
		return "paypalRedirect/success.jsp";
	}
	
	@GetMapping("/onCancel")
	public String onCancel() {
		return "paypalRedirect/onCancel.jsp";
	}
}
