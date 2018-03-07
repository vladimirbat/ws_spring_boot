package ejemplo.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PROVINCIAS")
public class ProvinciaEntity {
	@Id
	@Column(name="ID_PROVINCIA")
	private int idProvincia;//Código de la provincia
	private String provincia;//Nombre de la provincia
	public ProvinciaEntity() {
		
	}
	public ProvinciaEntity(int idProvincia, String provincia) {
		this.idProvincia = idProvincia;
		this.provincia = provincia;
	}
	public String toString() {
		return "ProvinciaEntity [idProvincia=" + idProvincia + ", provincia=" + provincia + "]";
	}
	public int getIdProvincia() {
		return idProvincia;
	}
	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	
}
