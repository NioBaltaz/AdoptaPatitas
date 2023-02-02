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
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="pets")
public class Pet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="Nombre Obligatorio.")
	@Size (min=2, max=20, message="El nombre tiene que tener entre 2 a 20 caracteres.")
	private String name;
	
	@NotEmpty(message="Edad Obligatorio.")
	@Size( min=1, max=15, message="El nombre tiene que tener entre 2 a 15 caracteres.")
	private String age;
	
	@NotEmpty(message="Campo obligatorio.")
	@Size(min=1, max=6, message="El campo tiene que tener entre 1 a 6 caracteres.")
	private String sexo;
	
	@NotNull(message="Debe colocar que vacuna tiene la mascota, campo obligatorio.")
	@Min(0)
	private Integer vaccine;
	
	@NotEmpty(message="Campo obligatorio sobre desparatización.")
	@Size(min=0,max=20)
	private String deworming;
	
	@NotEmpty(message="Debe colocar si tiene chip, campo obligatorio.")
	@Size(min=0,max=20)
    private String chip;
	
	private String image;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "creator_id")
	private User creator_pet;
	
	@OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_adopt")
    private User user_adopt;

	public Pet() {
	
	}

	public User getCreator_pet() {
		return creator_pet;
	}

	public void setCreator_pet(User creator_pet) {
		this.creator_pet = creator_pet;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public User getUser_adopt() {
		return user_adopt;
	}

	public void setUser_adopt(User user_adopt) {
		this.user_adopt = user_adopt;
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

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
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
