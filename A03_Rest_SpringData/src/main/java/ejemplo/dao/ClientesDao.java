package ejemplo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ejemplo.entities.ClienteEntity;

public interface ClientesDao extends JpaRepository<ClienteEntity, Long>{

}
