package com.codingdojo.proyecto.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.proyecto.repositories.OrdenRepository;

@Service
public class OrdenService {
 @Autowired
 public OrdenRepository ordenRepository;


}
