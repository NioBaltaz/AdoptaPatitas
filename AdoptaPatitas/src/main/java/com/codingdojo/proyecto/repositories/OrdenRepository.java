package com.codingdojo.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.proyecto.models.Orden;
import com.codingdojo.proyecto.models.User;

public interface OrdenRepository extends  CrudRepository<Orden, Integer> {

	List<Orden> findByUsuario (User user);
}
