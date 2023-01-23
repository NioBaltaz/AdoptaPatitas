package com.codingdojo.proyecto.models;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="pets")
public class Pet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="Nombre Obligatorio.")
	@Size (min=2, max=20, message="El nombre tiene que tener entre 2 a 20 caracteres")
	private String name;
	
	@NotEmpty(message="Edad Obligatorio.")
	@Size( min=1, max=15, message="El nombre tiene que tener entre 2 a 15 caracteres")
	private String age;
	
	@NotEmpty(message="Debe colocar que vacuna tiene la mascota, campo obligatorio.")
	@Size(min=0,max=20)
	
	private Integer vaccine;
	@NotEmpty(message="Campo obligatorio sobre desparatización.")
	@Size(min=0,max=20)
	private String deworming;
	
	@NotEmpty(message="Debe colocar si tiene chip, campo obligatorio.")
	@Size(min=0,max=20)
    private String chip;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "user_id")
	private User creator;

	public Pet() {
	
	}

	public User getCreator() {
		return creator;
	}


	public void setCreator(User creator) {
		this.creator = creator;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Integer getVaccine() {
		return vaccine;
	}

	public void setVaccine(Integer vaccine) {
		this.vaccine = vaccine;
	}

	public String getDeworming() {
		return deworming;
	}

	public void setDeworming(String deworming) {
		this.deworming = deworming;
	}

	public String getChip() {
		return chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
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
