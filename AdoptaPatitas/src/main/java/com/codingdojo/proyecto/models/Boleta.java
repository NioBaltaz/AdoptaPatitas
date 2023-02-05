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
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="boletas")
public class Boleta {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message="El campo de nombre es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String nombre;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String apellido;

	@NotEmpty(message="Rut completo sin guin.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private Float rut;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private Float telefono;
	@NotEmpty(message="El campo es obligatorio.")
	@Email(message="Ingrese un correo electrónico válido.") //Verifica que sea un email el que se ingresa
	private String email;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String residencia;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String especificacion;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String region;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String comuna;

	@NotEmpty(message="El campo es obligatorio.")
	@Size(min=2, max=30, message="Nombre debe de tener entre 2 y 30 caracteres")
	private String nota;

	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date created_at;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updated_at;

	@OneToOne
	@JoinColumn(name="user_boleta")
	private User user;
	
	public Boleta() {
		super();
	}

	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Float getRut() {
		return rut;
	}

	public void setRut(Float rut) {
		this.rut = rut;
	}

	public Float getTelefono() {
		return telefono;
	}

	public void setTelefono(Float telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getResidencia() {
		return residencia;
	}

	public void setResidencia(String residencia) {
		this.residencia = residencia;
	}

	public String getEspecificacion() {
		return especificacion;
	}

	public void setEspecificacion(String especificacion) {
		this.especificacion = especificacion;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
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

	@PrePersist
    protected void onCreate(){
        this.created_at = new Date();
    }
	
    @PreUpdate
    protected void onUpdate(){
        this.updated_at = new Date();
    }






}
