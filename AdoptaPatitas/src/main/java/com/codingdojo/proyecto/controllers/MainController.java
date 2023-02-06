package com.codingdojo.proyecto.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.proyecto.models.Carrito;
import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.Product;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.services.AppService;
@Controller
public class MainController {

	@Autowired
    private AppService service;
	
	List<Carrito> listaCarrito = new ArrayList<>();
    Integer item = 0;
    double totalPagar = 0.0;
    int cantidad = 1;
	

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
    public String adopta(Principal principal, Model model) {
    	if(principal == null) {
    		List<Pet> pets = service.findAllPets();
        	model.addAttribute("pets", pets);
    		return "adopta.jsp";
    	}
    	
        //Me regresa el username del usuario que inició sesión
        String username = principal.getName();             
        //Obtenemos el objeto de Usuario
        User currentUser = service.findUserByUsername(username);              
        //Mandamos el usuario a adopta.jsp
        model.addAttribute("currentUser", currentUser);
        model.addAttribute("roles", currentUser.getRoles());
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
    @GetMapping("/agregarCarrito/{id_producto}")
    public String agregarCarrito(@PathVariable("id_producto") Long id_producto, Model model, HttpSession session) {
        int posicion = 0;
        cantidad = 1;
        Product product = service.findProductById(id_producto);

        if(listaCarrito.size() > 0) {

            for(int i=0; i < listaCarrito.size(); i++) {
                if(id_producto == listaCarrito.get(i).getIdProducto()) {
                    posicion = i;
                }
            }

            if(id_producto == listaCarrito.get(posicion).getIdProducto()) {
                cantidad = listaCarrito.get(posicion).getCantidad() + cantidad;
                double subtotal = listaCarrito.get(posicion).getPrecioCompra() * cantidad;
                listaCarrito.get(posicion).setCantidad(cantidad);
                listaCarrito.get(posicion).setSubTotal(subtotal);
            }else {
                item = item + 1;
                Carrito car = new Carrito();
                car.setItem(item);
                car.setIdProducto(product.getId());
                car.setNombres(product.getNombre());
                car.setPrecioCompra(product.getPrecio());
                car.setCantidad(cantidad);
                car.setSubTotal(cantidad * product.getPrecio());
                listaCarrito.add(car);
                session.setAttribute("contador", listaCarrito.size());
            }

        }else {
            item = item + 1;
            Carrito car = new Carrito();
            car.setItem(item);
            car.setIdProducto(product.getId());
            car.setNombres(product.getNombre());
            car.setPrecioCompra(product.getPrecio());
            car.setCantidad(cantidad);
            car.setSubTotal(cantidad * product.getPrecio());
            listaCarrito.add(car);
            session.setAttribute("contador", listaCarrito.size());
        }


        return "redirect:/tienda";
    }
    
    @GetMapping("/carrito")
	public String carrito(Model model) {
		totalPagar = 0.0;
		
		for(int i=0; i<listaCarrito.size(); i++) {
			totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
		}
		
		model.addAttribute("carrito", listaCarrito);		
		model.addAttribute("totalPagar", totalPagar);
		return "carrito.jsp";
	}
	
	@GetMapping("/comprar/{id_producto}")
	public String comprar(@PathVariable("id_producto") Long id_producto, HttpSession session, Model model) {
		totalPagar = 0.0;
		Product product = service.findProductById(id_producto);
		item = item + 1;
		Carrito car = new Carrito();
		car.setItem(item);
		car.setIdProducto(product.getId());
		car.setNombres(product.getNombre());
		car.setPrecioCompra(product.getPrecio());
		car.setCantidad(cantidad);
		car.setSubTotal(cantidad * product.getPrecio());
		session.setAttribute("contador", listaCarrito.size());
		listaCarrito.clear();
		listaCarrito.add(car);		
		for(int i=0; i<listaCarrito.size(); i++) {
			totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
		}
		model.addAttribute("carrito", listaCarrito);
		model.addAttribute("totalPagar", totalPagar);
		return "redirect:/carrito";
	}
	
	@GetMapping("/remove/{id_producto}")
	public String delete(@PathVariable("id_producto") Long id_producto, HttpSession session, Model model) {
		for(int i=0; i<listaCarrito.size(); i++) {
			if(listaCarrito.get(i).getIdProducto() == id_producto) {
				listaCarrito.remove(i);
			}
		}
		return "redirect:/carrito";
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