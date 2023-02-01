package com.codingdojo.proyecto.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="detalles")
public class DetalleOrden {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private double cantidad;
	private double precio;
	private double total;
	
	@OneToOne
	private Orden orden;
	
	@OneToOne
	private Product product;

	public DetalleOrden() {
		super();
	}
	public DetalleOrden(Integer id, String name, double cantidad, double precio, double total) {
		super();
		this.id = id;
		this.name = name;
		this.cantidad = cantidad;
		this.precio = precio;
		this.total = total;
	}
	
	
	public Orden getOrden() {
		return orden;
	}
	public void setOrden(Orden orden) {
		this.orden = orden;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "DetalleOrden [id=" + id + ", name=" + name + ", cantidad=" + cantidad + ", precio=" + precio
				+ ", total=" + total + "]";
	}
	
	
}
