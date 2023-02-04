package com.codingdojo.proyecto.models;

public class Carrito {

    Integer item; 
    Long idProducto;
    String nombres;
    double precioCompra;
    int cantidad;
    double subTotal;

    public Carrito() {
    }
    public Carrito(Integer item, Long idProducto, String nombres, double precioCompra, int cantidad, double subTotal) {
        super();
        this.item = item;
        this.idProducto = idProducto;
        this.nombres = nombres;
        this.precioCompra = precioCompra;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
    }
    public Integer getItem() {
        return item;
    }

    public void setItem(Integer item) {
        this.item = item;
    }

    public Long getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Long idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }
}
