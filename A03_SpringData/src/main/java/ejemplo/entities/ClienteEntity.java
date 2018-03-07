package ejemplo.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CLIENTES")
public class ClienteEntity {
	@Id
	private long dni;
	private String nombre;
	private String apellidos;
	private double saldo;
	@ManyToOne
	@JoinColumn(name="ID_PROVINCIA") //Campo de clientes que apunta a la pk de provincias
	private ProvinciaEntity provincia;
	
	
	
	public ClienteEntity() {
		
	}
	public ClienteEntity(long dni, String nombre, String apellidos, double saldo) {
		
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.saldo = saldo;
	}
	
	@Override
	public String toString() {
		return "ClienteEntity [dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", saldo=" + saldo
				+ "]";
	}
	public long getDni() {
		return dni;
	}
	public void setDni(long dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	public ProvinciaEntity getProvincia() {
		return provincia;
	}
	public void setProvincia(ProvinciaEntity provincia) {
		this.provincia = provincia;
	}
	
}
