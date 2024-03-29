package com.codingdojo.proyecto.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import com.codingdojo.proyecto.models.Boleta;
import com.codingdojo.proyecto.models.Form;
import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.Product;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.repositories.BoletaRepository;
import com.codingdojo.proyecto.repositories.FormRepository;
import com.codingdojo.proyecto.repositories.PetsRepository;
import com.codingdojo.proyecto.repositories.ProductRepository;
import com.codingdojo.proyecto.repositories.RoleRepository;
import com.codingdojo.proyecto.repositories.UserRepository;

@Service
public class AppService {
	@Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;
    
    @Autowired

    private PetsRepository petRepository; 
    
    @Autowired
    private ProductRepository productRepository;

    
    @Autowired
    private FormRepository formRepository;
    
    @Autowired
    private BoletaRepository boletaRepository;
    

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;    

    //Guardar un Usuario tipo ROLE_USER
    public User saveWithUserRole(User user, BindingResult result) {

        //Verificar password manualmente
        if(! user.getPassword().equals(user.getPasswordConfirmation())) {
            result.rejectValue("confirmPassword", "Matches", "Las contraseñas no coinciden");
        }

        if(!result.hasErrors()) {
            //Estamos estableciendo una nueva contraseña escriptandola al mismo tiempo que el usuario ingresa su password
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

            //Asignandole un ROLE al usuario
            user.setRoles(roleRepository.findByName("ROLE_USER"));
            return userRepository.save(user);
        }else {
            return null;
        }
    }

    //Guardar un Usuario tipo ROLE_ADMIN
    public User saveWithAdminRole(User user, BindingResult result) {

        //Verificar password manualmente
        if(! user.getPassword().equals(user.getPasswordConfirmation())) {
            result.rejectValue("confirmPassword", "Matches", "Las contraseñas no coinciden");
        }

        if(!result.hasErrors()) {
            //Estamos estableciendo una nueva contraseña escriptandola al mismo tiempo que el usuario ingresa su password
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

            //Asignandole un ROLE al usuario
            user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
            return userRepository.save(user);
        }else {
            return null;
        }
    }

    //Regresa Usuario en base a su username
    public User findUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
    //Encontrar usuario por id
    public User findUserById(Long id) {
    	return userRepository.findById(id).orElse(null);
    }
    
    		//Servicios Mascota
    
    //Crear nueva Mascota
    public Pet newPet(Pet newPet) {	
    	return petRepository.save(newPet);
    }
    
    //Buscar todas las Mascotas
    public List<Pet> findAllPets(){
    	return petRepository.findAll();
    }
    
    //Buscar Mascota por id
    public Pet findPetById(Long pet_id) {
    	return petRepository.findById(pet_id).orElse(null);
    }
    
  	//Buscar mascota por nombre
  	public Pet findPetByName(String name) {
  		return petRepository.findByName(name);
  	}
    
    			//Form
	public Form create_form(Form newForm, User user) {
	newForm.setUser(user);
	return formRepository.save(newForm);
	}
	
	public List<Form> findAllForms(){
	return formRepository.findAll();
	}
	
	public Form findFormById(Long id) {
	return formRepository.findById(id).orElse(null);
	}
	
	//Aceptar solicitud de adopcion
	public void acceptRequest(Long pet_id, Long user_id) {
		User user = findUserById(user_id);
		Pet pet =  findPetById(pet_id);		
		pet.setUser_adopt(user);
		petRepository.save(pet);
	}
	
	
	
    //Crear un nuevo producto
    public Product newProduct(Product newProduct, User user) {
    	newProduct.setCreator_product(user);
    	return productRepository.save(newProduct);
    }
    
    //Busca todos los productos
    public List<Product> findAllProducts(){
    	return productRepository.findAll();
    }
    
	//actualiza product
	public void updateProduct(Product newProduct) {
		productRepository.save(newProduct);
	}
	
//Elimina producto
	public void deleteProduct(Product product) {
		productRepository.delete(product);
	}
	    
    //Busca producto by id
    
    public Product findProductById(Long id_product) {
		 return productRepository.findById(id_product).orElse(null);
    }
//Boleta
    public Boleta newBoleta(Boleta newBoleta, User user) {
    	newBoleta.setUser(user);
    	return boletaRepository.save(newBoleta);
    }
    
	
	public Boleta findBoletaById(Long id) {
	return boletaRepository.findById(id).orElse(null);
	}
}
