package com.codingdojo.proyecto.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.proyecto.models.Pet;
import com.codingdojo.proyecto.models.User;
import com.codingdojo.proyecto.repositories.PetsRepository;
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
    
    		//Servicios Mascota
    
    //Crear nueva Mascota
    public Pet newPet(Pet newPet, User user) {
    	newPet.setCreator(user);
    	return petRepository.save(newPet);
    }
    
    //Buscar todas las Mascotas
    public List<Pet> findAllPets(){
    	return petRepository.findAll();
    }
    
    
}
