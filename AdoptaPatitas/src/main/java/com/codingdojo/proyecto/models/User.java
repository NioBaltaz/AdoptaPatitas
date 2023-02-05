package com.codingdojo.proyecto.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
//
@Entity
@Table(name="users")
public class User {
 
 @Id
 @GeneratedValue
 private Long id;
 private String username;
 private String password;
 @Transient
 private String passwordConfirmation;
 @Column(updatable=false)
 private Date createdAt;
 private Date updatedAt;
 @ManyToMany(fetch = FetchType.EAGER)
 @JoinTable(
     name = "users_roles", 
     joinColumns = @JoinColumn(name = "user_id"), 
     inverseJoinColumns = @JoinColumn(name = "role_id"))
 private List<Role> roles;
 
 @OneToMany(mappedBy="creator_pet",fetch = FetchType.LAZY)
	private List<Pet> pets;
 
 @OneToOne(mappedBy="user", fetch = FetchType.LAZY)
 private Form form;
 
 @OneToOne(mappedBy="user_adopt", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
 private Pet pet;
 
 	@OneToMany(mappedBy="creator_product",fetch = FetchType.LAZY)
	private List<Product> products;
 	
 public User() {
 }

 
 //public List<Orden> getOrdenes() {
//	return ordenes;
//}


//public void setOrdenes(List<Orden> ordenes) {
//	this.ordenes = ordenes;
//}


public List<Product> getProducts() {
	return products;
}


public void setProducts(List<Product> products) {
	this.products = products;
}


public List<Pet> getPets() {
	return pets;
}


public void setPets(List<Pet> pets) {
	this.pets = pets;
}


public Long getId() {
     return id;
 }
 public void setId(Long id) {
     this.id = id;
 }
 public String getUsername() {
     return username;
 }
 public void setUsername(String username) {
     this.username = username;
 }
 public String getPassword() {
     return password;
 }
 public void setPassword(String password) {
     this.password = password;
 }
 public String getPasswordConfirmation() {
     return passwordConfirmation;
 }
 public void setPasswordConfirmation(String passwordConfirmation) {
     this.passwordConfirmation = passwordConfirmation;
 }
 
 public Form getForm() {
	return form;
}

public void setForm(Form form) {
	this.form = form;
}

public Pet getPet() {
	return pet;
}

public void setPet(Pet pet) {
	this.pet = pet;
}

public Date getCreatedAt() {
     return createdAt;
 }
 public void setCreatedAt(Date createdAt) {
     this.createdAt = createdAt;
 }
 public Date getUpdatedAt() {
     return updatedAt;
 }
 public void setUpdatedAt(Date updatedAt) {
     this.updatedAt = updatedAt;
 }
 public List<Role> getRoles() {
     return roles;
 }
 public void setRoles(List<Role> roles) {
     this.roles = roles;
 }
 
 @PrePersist
 protected void onCreate(){
     this.createdAt = new Date();
 }
 @PreUpdate
 protected void onUpdate(){
     this.updatedAt = new Date();
 }
}