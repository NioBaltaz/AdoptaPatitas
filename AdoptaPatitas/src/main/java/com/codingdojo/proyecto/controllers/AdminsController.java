package com.codingdojo.proyecto.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.codingdojo.proyecto.models.Form;
import com.codingdojo.proyecto.models.Option;
import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.Product;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.services.AppService;
import com.codingdojo.proyecto.services.SendMailService;

@Controller
public class AdminsController {

	@Autowired
	private AppService service;
	
	@Autowired
	private SendMailService sendMailService;
	
	 @GetMapping("/admins")
    public String administradores(Principal principal, Model model) {
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
		 
		List<Form> forms = service.findAllForms();
		List<Pet> pets = service.findAllPets();
		List<Product> products = service.findAllProducts();
		model.addAttribute("pets", pets);
	    model.addAttribute("forms", forms);
	    model.addAttribute("products", products);
        return "administradores.jsp";
    }
	
	@GetMapping("/admins/new/pet")
	public String newPet(@ModelAttribute("newPet") Pet pet, Model model, Principal principal) {
		if(principal == null) {
    		return "index.jsp";
			}
	
		//Me regresa el username del usuario que inició sesión
		String username = principal.getName();             
		//Obtenemos el objeto de Usuario
		User currentUser = service.findUserByUsername(username);              
		//Mandamos el usuario a home.jsp
		model.addAttribute("currentUser", currentUser);
		model.addAttribute("options", Option.Options);
		return "newPet.jsp";
	}
	
	@PostMapping("/admins/create/pet")
	public String createPet(@Valid @ModelAttribute("newPet") Pet pet, BindingResult result, Principal principal, @RequestParam("imagen") MultipartFile imagen, Model model) {
		if(result.hasErrors()) {
			return "newPet.jsp";
		}
		else {
			//Me regresa el username del usuario que inició sesión
            String username = principal.getName();             
            //Obtenemos el objeto de Usuario
            User currentUser = service.findUserByUsername(username);
            
            if(!imagen.isEmpty()) {
            	//Rut/aceptar/adopcion/a
            	Path directorioImagenes = Paths.get("src/main/resources/static/img");
            	//Ruta Absoluta
            	String rutaAbsoluta = directorioImagenes.toFile().getAbsolutePath();
            	
            	try {
            		//Imagen en Bytes
            		byte[] bytesImg = imagen.getBytes();
            		//Ruta completa, con todo y nombre de imagen
            		Path rutaCompleta = Paths.get(rutaAbsoluta+"/"+imagen.getOriginalFilename());
            		//Guardar mi imagen en la ruta
            		Files.write(rutaCompleta, bytesImg);   
            		
            		//Nombre dentro del atributo image en Pet
            		pet.setImage(imagen.getOriginalFilename());
            		
            	}catch(IOException e){
            		e.printStackTrace();
            	}
            }           
            model.addAttribute("user", currentUser);
            service.newPet(pet);                     
            return "redirect:/adopta";
		}
	}

	@GetMapping("/solicitud/{form_id}/{nombre_mascota}")
	public String solicitud(@PathVariable("form_id") Long form_id, @PathVariable("nombre_mascota") String nombre_mascota, Model model) {		
		Form form = service.findFormById(form_id);
		Pet pet = service.findPetByName(nombre_mascota);
		model.addAttribute("pet", pet);
		model.addAttribute("form", form);
		return "solicitud.jsp";
	}
	
	@PostMapping("/aceptar/adopcion/{pet_id}/{user_id}/{form_id}")
	public String aceptarAdopcion(@PathVariable("pet_id") Long pet_id, @PathVariable("user_id") Long user_id, @PathVariable("form_id") Long form_id, Principal principal) {
		if(principal == null) {
    		return "adopta.jsp";
    	}
		Form form = service.findFormById(form_id);
		form.setAceptado("si");
		String email_user = form.getEmail();
		String name_user = form.getNombre_adoptante();
		sendMailService.sendMail(email_user, "Solicitud Aceptada", "¡Hola " + name_user + "!, tu solicitud de adopción se ha aceptado, dentro de unos días estaremos contactandote por teléfono para agendar una cita y seguir con el proceso.");
        service.acceptRequest(pet_id, user_id);
        return "redirect:/adopta";
	}
	
	@GetMapping("/admins/add/product")
	public String addProduct(@ModelAttribute("newProduct")Product product){
		return "newProduct.jsp";
	}
	@PostMapping("/admins/add/product")
	public String createProduct(@Valid @ModelAttribute("newProduct") Product product, BindingResult result, Principal principal, @RequestParam("imagen") MultipartFile imagen) {
		if(result.hasErrors()) {
			return "newProduct.jsp";
		}
		else {
			//Me regresa el username del usuario que inició sesión
            String username = principal.getName();             
            //Obtenemos el objeto de Usuario
            User currentUser = service.findUserByUsername(username);
            
            if(!imagen.isEmpty()) {
            	Path directorioImagenes = Paths.get("src/main/resources/static/img");
            	//Ruta Absoluta
            	String rutaAbsoluta = directorioImagenes.toFile().getAbsolutePath();
            	
            	try {
            		//Imagen en Bytes
            		byte[] bytesImg = imagen.getBytes();
            		//Ruta completa, con todo y nombre de imagen
            		Path rutaCompleta = Paths.get(rutaAbsoluta+"/"+imagen.getOriginalFilename());
            		//Guardar mi imagen en la ruta
            		Files.write(rutaCompleta, bytesImg);   
            		
            		//Nombre dentro del atributo image en product
            		product.setImage(imagen.getOriginalFilename());
           
            	}catch(IOException e){
            		e.printStackTrace();
            	}
            }
            
            service.newProduct(product, currentUser);                     
            return "redirect:/admins";
		}
	}
	
	@GetMapping("/admins/add/product/allproduct")
    public String allProduct(Model model) {  
    	List<Product> products = service.findAllProducts();
    	model.addAttribute("products", products);
    	return "allproduct.jsp";
	}

	// Delete Producto
	@DeleteMapping("/product/delete/{id_producto}")
	public String deleteProducto(@PathVariable("id_producto") Long id_producto) {
		Product newProduct = service.findProductById(id_producto);
		if (newProduct != null) {
			service.deleteProduct(newProduct);
			return "redirect:/newProduct";
		} else {
			System.out.println("Ese producto no existe");
			return "redirect:/newProduct";
		}

	}
	
	// pagina de edicion de los producto
		@GetMapping("/allproduct/edit/{products}")
		public String editPage(@ModelAttribute("product") Product newProduct, @PathVariable("id_producto") Long pId, Model model) {
			Product product = service.findProductById(pId);
			model.addAttribute("product", product);
			return "edit.jsp";
		}
		


		// actualization producto jejeje
		@PutMapping("/allproduct/update")
		public String updateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model, Principal principal, @RequestParam("imagen") MultipartFile imagen) {
			if (result.hasErrors()) {
				return "edit.jsp";
				
			} else {
				  String username = principal.getName();             
		            //Obtenemos el objeto de Usuario
		            User currentUser = service.findUserByUsername(username);
	            if(!imagen.isEmpty()) {
	            	Path directorioImagenes = Paths.get("src/main/resources/static/img");
	            	//Ruta Absoluta
	            	String rutaAbsoluta = directorioImagenes.toFile().getAbsolutePath();
	            	
	            	try {
	            		//Imagen en Bytes
	            		byte[] bytesImg = imagen.getBytes();
	            		//Ruta completa, con todo y nombre de imagen
	            		Path rutaCompleta = Paths.get(rutaAbsoluta+"/"+imagen.getOriginalFilename());
	            		//Guardar mi imagen en la ruta
	            		Files.write(rutaCompleta, bytesImg);   
	            		
	            		//Nombre dentro del atributo image en product
	            		product.setImage(imagen.getOriginalFilename());
	           
	            	}catch(IOException e){
	            		e.printStackTrace();
	            	}
	            }
				Product theProduct = service.findProductById(product.getId());		
				model.addAttribute("product", theProduct);
				service.updateProduct(product);
				return "redirect:/edit/";
				
			}
		}

	@PostMapping("/search")
	public String search(@RequestParam(value="pet") String pet) {
		return "redirect:/search/";
	}

	@PostMapping("/admins")
	public String search(@RequestParam(value="pet") String pet, Model model, Principal principal) {
		Pet thisPet = service.findPetByName(pet);
		if(thisPet != null) {			
			return "redirect:/pet/"+pet;
		}else {
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
		 
		List<Form> forms = service.findAllForms();
		List<Pet> pets = service.findAllPets();
		List<Product> products = service.findAllProducts();
		model.addAttribute("pets", pets);
	    model.addAttribute("forms", forms);
	    model.addAttribute("products", products);
		model.addAttribute("errorMessage", "La mascota no se encuentra.");
		return "administradores.jsp";
		}
	}
	
	@GetMapping("/pet/{pet_name}")
	public String pet(@PathVariable("pet_name") String pet_name, Model model, @ModelAttribute("ObjectPet") Pet pet) {
		Pet thisPet = service.findPetByName(pet_name);
		User user = thisPet.getCreator_pet();
		model.addAttribute("user", user);
		model.addAttribute("pet", thisPet);
		model.addAttribute("options", Option.Options);
		return "pet.jsp";
	}
	
	@PutMapping("/update/pet")
	public String updatePet(@Valid @ModelAttribute("ObjectPet") Pet pet, BindingResult result, Model model, Principal principal, @RequestParam("imagen") MultipartFile imagen) {
		if(result.hasErrors()) {
			model.addAttribute("options", Option.Options);
			return "pet.jsp";
		}else {
			
			if(!imagen.isEmpty()) {
				//Rut/aceptar/adopcion/a
            	Path directorioImagenes = Paths.get("src/main/resources/static/img");
            	//Ruta Absoluta
            	String rutaAbsoluta = directorioImagenes.toFile().getAbsolutePath();
            	
            	try {
            		//Imagen en Bytes
            		byte[] bytesImg = imagen.getBytes();
            		//Ruta completa, con todo y nombre de imagen
            		Path rutaCompleta = Paths.get(rutaAbsoluta+"/"+imagen.getOriginalFilename());
            		//Guardar mi imagen en la ruta
            		Files.write(rutaCompleta, bytesImg);   
            		
            		//Nombre dentro del atributo image en Pet
            		pet.setImage(imagen.getOriginalFilename());
            		
            	}catch(IOException e){
            		e.printStackTrace();
            	}
            }
			Pet thisPet = service.findPetById(pet.getId());		
			model.addAttribute("pet", thisPet);
			service.newPet(pet);
			return "redirect:/pet/"+thisPet.getName();
		}
	}
}
