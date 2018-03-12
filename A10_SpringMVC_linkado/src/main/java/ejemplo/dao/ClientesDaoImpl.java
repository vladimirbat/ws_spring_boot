package ejemplo.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;

import ejemplo.entities.ClienteEntity;
import ejemplo.entities.ProvinciaEntity;

public class ClientesDaoImpl implements ClientesDaoCustom{
	@PersistenceContext
	EntityManager entityManager;
	@Autowired
	ClientesDao clientesDao;
	
	public void actualizarSinInsertar(ClienteEntity cliente) {
		if(!clientesDao.findById(cliente.getDni()).isPresent()) {
			return; // Si no existe terminamos porque no queremos insertarlo.
		}
		if(cliente.getProvincia()==null) {
			cliente.setProvincia(entityManager.find(ProvinciaEntity.class, 28));
		}
		clientesDao.save(cliente);// Actualiza.
		
	}

}
