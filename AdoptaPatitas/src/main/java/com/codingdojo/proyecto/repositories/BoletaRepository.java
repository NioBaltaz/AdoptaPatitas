package com.codingdojo.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.proyecto.models.Boleta;

public interface BoletaRepository extends CrudRepository<Boleta, Long>{

	List<Boleta> findAll();
} 

