package com.codingdojo.proyecto.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="forms")
public class Form {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=40, message="Debe contener entre 2 a 40 caracteres.")
	private String nombre_mascota;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=60, message="Debe contener entre 2 a 60 caracteres.")
	private String nombre_adoptante;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=50, message="Debe contener entre 2 a 50 caracteres.")
	private String comuna;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=11, message="Debe contener al menos 11 digitos.")
	private String telefono;
	
	@NotEmpty(message="Email es obligatorio.")
	@Email(message="Ingrese un correo electrónico válido.")
	private String email;
	
	@NotNull(message="El campo es obligatorio.")
	@Min(21)
	private Integer edad;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=40, message="Debe contener entre 2 a 40 caracteres.")
	private String ocupacion;
	
	@NotNull(message="EL campo es obligatorio.")
	@Min(0)
	private Integer miembros_familia;
	
	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=50, message="Debe contener entre 2 a 50 caracteres.")
	private String localidad;
	
	@NotEmpty(message="El campo es obligatorio.")
	private String costear;
	
	@NotEmpty(message="El campo es obligatorio.")
	private String visitas;
	
	@NotEmpty(message="El campo es obligatorio.")
	private String paseo;
	
	private String aceptado;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date created_at;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updated_at;
	
	@OneToOne
	@JoinColumn(name="user_form")
	private User user;
	
	@OneToOne
	@JoinColumn(name="pet_id")
	private Pet pet;
	
	public Form() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre_mascota() {
		return nombre_mascota;
	}

	public void setNombre_mascota(String nombre_mascota) {
		this.nombre_mascota = nombre_mascota;
	}

	public String getNombre_adoptante() {
		return nombre_adoptante;
	}

	public void setNombre_adoptante(String nombre_adoptante) {
		this.nombre_adoptante = nombre_adoptante;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getOcupacion() {
		return ocupacion;
	}

	public void setOcupacion(String ocupacion) {
		this.ocupacion = ocupacion;
	}

	public Integer getMiembros_familia() {
		return miembros_familia;
	}

	public void setMiembros_familia(Integer miembros_familia) {
		this.miembros_familia = miembros_familia;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getCostear() {
		return costear;
	}

	public void setCostear(String costear) {
		this.costear = costear;
	}

	public String getVisitas() {
		return visitas;
	}

	public void setVisitas(String visitas) {
		this.visitas = visitas;
	}

	public String getPaseo() {
		return paseo;
	}

	public void setPaseo(String paseo) {
		this.paseo = paseo;
	}
	
	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Pet getPet() {
		return pet;
	}

	public void setPet(Pet pet) {
		this.pet = pet;
	}

	public String getAceptado() {
		return aceptado;
	}

	public void setAceptado(String aceptado) {
		this.aceptado = aceptado;
	}

	@PrePersist
    protected void onCreate(){
        this.created_at = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updated_at = new Date();
    }
}
