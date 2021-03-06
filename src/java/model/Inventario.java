package model;
// Generated 30/07/2020 09:45:02 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Inventario generated by hbm2java
 */
public class Inventario  implements java.io.Serializable {


     private Integer idInventario;
     private String nombreProducto;
     private Date fechaIngreso;
     private String cantidad;

    public Inventario() {
    }

    public Inventario(String nombreProducto, Date fechaIngreso, String cantidad) {
       this.nombreProducto = nombreProducto;
       this.fechaIngreso = fechaIngreso;
       this.cantidad = cantidad;
    }
   
    public Integer getIdInventario() {
        return this.idInventario;
    }
    
    public void setIdInventario(Integer idInventario) {
        this.idInventario = idInventario;
    }
    public String getNombreProducto() {
        return this.nombreProducto;
    }
    
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
    public Date getFechaIngreso() {
        return this.fechaIngreso;
    }
    
    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }
    public String getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }




}


