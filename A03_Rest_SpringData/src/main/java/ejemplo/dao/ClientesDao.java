package ejemplo.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ejemplo.entities.ClienteEntity;

public interface ClientesDao extends JpaRepository<ClienteEntity, Long>{
	List<ClienteEntity> findClientesByApellidosLike(String ape);
	List<ClienteEntity> findClientesByApellidosContaining(String ape);
	@Query("select c from ClienteEntity c where c.provincia.provincia"
			+ " like :provi order by c.dni")
	List<ClienteEntity> buscarClientesConProvinciaQueContenga(@Param("provi") String prov);
}
