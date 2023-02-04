package com.codingdojo.proyecto.services;

import java.util.Optional;
import com.codingdojo.proyecto.models.Product;

public interface ProductService {
	public Optional<Product> get(Integer id);
	public Product save( Product product);
	public Object get();
}
