package com.codingdojo.proyecto.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.proyecto.models.Form;
import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.services.AppService;

@Controller
public class AdoptaController {

	@Autowired
	private AppService service;
	
	@GetMapping("/requisitos/adopcion/{pet_id}")
	public String requisitos(@PathVariable("pet_id") Long pet_id, @ModelAttribute("newForm") Form form, Principal principal, Model model) {
		if(principal == null) {
    		return "index.jsp";
    	}
    	
        //Me regresa el username del usuario que inició sesión
        String username = principal.getName();             
        //Obtenemos el objeto de Usuario
        User currentUser = service.findUserByUsername(username);
        //Buscamos mascota por id
        Pet pet = service.findPetById(pet_id);
        //Mandamos objeto de Pet a requisitos.jsp
        model.addAttribute("pet", pet);
        //Mandamos el usuario a requisitos.jsp
        model.addAttribute("currentUser", currentUser);
        
        return "requisitos.jsp";
	}
    
    @PostMapping("/requisitos/form")
    public String enviarForm(@Valid @ModelAttribute("newForm") Form form, BindingResult result, Principal principal) {
    	if(principal == null) {
    		return "adopta.jsp";
    	}
    	
        if(result.hasErrors()) {
        	return "requisitos.jsp";
        }else {
        	//Me regresa el username del usuario que inició sesión
            String username = principal.getName();             
            //Obtenemos el objeto de Usuario
            User currentUser = service.findUserByUsername(username);              
            //Mandamos el usuario a home.jsp
            service.create_form(form, currentUser);
            return "info_form.jsp";
        }
    }    
}
