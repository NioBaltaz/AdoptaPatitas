package com.codingdojo.proyecto.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.Product;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.services.AppService;

@Controller
public class MainController {

	@Autowired
    private AppService service;
	

    @GetMapping("/")
    public String home(Principal principal, Model model) {
    	
    	if(principal == null) {
    		return "index.jsp";
    	}
    	
        //Me regresa el username del usuario que inició sesión
        String username = principal.getName();             
        //Obtenemos el objeto de Usuario
        User currentUser = service.findUserByUsername(username);              
        //Mandamos el usuario a home.jsp
        model.addAttribute("currentUser", currentUser);

        model.addAttribute("roles", currentUser.getRoles());
        return "index.jsp";
    }

    @GetMapping("/registration")
    public String register(@ModelAttribute("user") User user) {
        return "register.jsp";
    }

    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
        service.saveWithAdminRole(user, result);
        if(result.hasErrors()) {
            return "register.jsp";
        }else {
            return "redirect:/login";
        }
    }

    @GetMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Credenciales inválidas, intentar nuevamente.");
        }
        return "login.jsp";
    }
    
    @GetMapping("/blog")
    public String blog() {    	
    	return "blog.jsp";
    }
    
    @GetMapping("/apadrina")
    public String apadrina() {    	
    	return "apadrina.jsp";
    }
    
    @GetMapping("/adopta")
    public String adopta(Model model) {
    	List<Pet> pets = service.findAllPets();
    	model.addAttribute("pets", pets);
    	return "adopta.jsp";
    }
    
    @GetMapping("/tienda")
    public String tienda(Model model) {  
    	List<Product> products = service.findAllProducts();
    	model.addAttribute("products", products);
    	return "tienda.jsp";
    }
    
    @GetMapping("/post")
    public String post() {
    	return "post.jsp";
    }
    
    @GetMapping("/post_perro")
    public String post_perro() {
    	return "post_perro.jsp";
    }

}
