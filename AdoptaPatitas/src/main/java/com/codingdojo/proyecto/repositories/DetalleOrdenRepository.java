package com.codingdojo.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.proyecto.models.DetalleOrden;

@Repository
public interface DetalleOrdenRepository extends  CrudRepository<DetalleOrden, Integer> {

	
}
