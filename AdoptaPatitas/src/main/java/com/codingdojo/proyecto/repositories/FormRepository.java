package com.codingdojo.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.codingdojo.proyecto.models.Form;

@Repository
public interface FormRepository extends CrudRepository<Form, Long>{

	List<Form> findAll();
}
