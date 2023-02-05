package com.codingdojo.proyecto.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;

//import com.codingdojo.proyecto.models.Orden;
//import com.codingdojo.proyecto.repositories.OrdenRepository;
//import com.codingdojo.proyecto.models.User;
//@Service
//public class OrdenServiceImpl implements OrdenService {
//@Autowired
//private OrdenRepository ordenRepository;

//@Override
//public Orden save(Orden orden) {
//	return ordenRepository.save(orden);
//}

//@Override
//public List<Orden> findAll() {
	//return (List<Orden>) ordenRepository.findAll();
//}
// 0000010
//public String generarNumeroOrden() {
	//int numero=0;
	//String numeroConcatenado="";
	
	//List<Orden> ordenes = findAll();
	
	//List<Integer> numeros= new ArrayList<Integer>();
	
	//ordenes.stream().forEach(o -> numeros.add( Integer.parseInt( o.getNumero())));
	
	//if (ordenes.isEmpty()) {
		//numero=1;
	//}else {
		//numero= numeros.stream().max(Integer::compare).get();
		//numero++;
	//}
	
	//if (numero<10) { //0000001000
		//numeroConcatenado="000000000"+String.valueOf(numero);
	//}else if(numero<100) {
		//numeroConcatenado="00000000"+String.valueOf(numero);
//	}else if(numero<1000) {
		//numeroConcatenado="0000000"+String.valueOf(numero);
	//}else if(numero<10000) {
		//numeroConcatenado="0000000"+String.valueOf(numero);
	//}		
	
//	return numeroConcatenado;
//}

//@Override
//public List<Orden> findByUser(User user) {
	//return ordenRepository.findByUser(user);
//}

//@Override
//public Optional<Orden> findById(Integer id) {
	//return ordenRepository.findById(id);
//}

//}