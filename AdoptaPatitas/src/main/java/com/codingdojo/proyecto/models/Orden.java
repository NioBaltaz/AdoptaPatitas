package com.codingdojo.proyecto.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ordenes")
public class Orden {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String number;
	private Date fechaCreación;
	private Date fechaRecibida;
	private double total;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "ordencreator_id")
	private User creator_orden;
	
	@OneToOne(mappedBy="orden")
	private DetalleOrden detalle;
	
	public Orden() {
		super();
	}
	public Orden(Integer id, String number, Date fechaCreación, Date fechaRecibida, double total) {
		super();
		this.id = id;
		this.number = number;
		this.fechaCreación = fechaCreación;
		this.fechaRecibida = fechaRecibida;
		this.total = total;
	}
	
	
	public DetalleOrden getDetalle() {
		return detalle;
	}
	public void setDetalle(DetalleOrden detalle) {
		this.detalle = detalle;
	}
	public User getCreator_orden() {
		return creator_orden;
	}
	public void setCreator_orden(User creator_orden) {
		this.creator_orden = creator_orden;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Date getFechaCreación() {
		return fechaCreación;
	}
	public void setFechaCreación(Date fechaCreación) {
		this.fechaCreación = fechaCreación;
	}
	public Date getFechaRecibida() {
		return fechaRecibida;
	}
	public void setFechaRecibida(Date fechaRecibida) {
		this.fechaRecibida = fechaRecibida;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "Orden [id=" + id + ", number=" + number + ", fechaCreación=" + fechaCreación + ", fechaRecibida="
				+ fechaRecibida + ", total=" + total + "]";
	}
	
	
	
	
}
