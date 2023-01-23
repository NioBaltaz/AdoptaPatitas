package com.codingdojo.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.proyecto.models.Pet;

@Repository
public interface PetsRepository extends CrudRepository<Pet, Long>{

	List<Pet> findAll();
}
