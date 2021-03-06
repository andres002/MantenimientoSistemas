package edu.uag.iidis.scec.vista;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;
import org.apache.struts.upload.FormFile;

/**
 * Form bean para el registro de una nueva persona.
 *
 * @author Victor Ramos
 */
public final class FormaNuevoHotel
        extends ValidatorForm {

          private String nombre;
          private String descripcion;
          private String precio;
          private String horario;
          private String telefono;
          private String direccion;
	Collection lugares;
    private FormFile imagen;
    private String pais;
    private String estado;


    public String getNombre() {
        return (this.nombre);
    }
    public FormFile getImagen() {
        return (this.imagen);
    }
    public String getDescripcion() {
        return (this.descripcion);
    }

    public String getPrecio() {
          return (this.precio);
      }
  	public String getHorario() {
          return (this.horario);
      }
  	public String getTelefono() {
          return (this.telefono);
      }
       public String getDireccion() {
          return (this.direccion);
      }
	public String getEstado() {
        return (this.estado);
    }
    public String getPais() {
        return (this.pais);
    }
	public Collection getEstados(){
		return (this.lugares);
	}

	public void setEstados(Collection lugares) {
        this.lugares = lugares;
    }
	public void setNombre(String nombre) {
        this.nombre = nombre;
    }

	public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
	public void setImagen(FormFile imagen) {
        this.imagen = imagen;
    }

    public void setPrecio(String precio) {
          this.precio = precio;
      }
  	public void setHorario(String horario) {
          this.horario = horario;
      }
  	public void setTelefono(String telefono) {
          this.telefono = telefono;
      }
      public void setDireccion(String direccion) {
          this.direccion = direccion;
      }
	public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {
        nombre=null;
        descripcion=null;
    }


    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        // Ejecuta las validaciones proporcionadas por Struts-Validator
        ActionErrors errores = super.validate(mapping, request);

        // Validaciones no cubiertas por Struts-Validator

        return errores;

    }

}
