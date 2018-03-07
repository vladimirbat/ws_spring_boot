package ejemplo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ejemplo.dao.ClientesDao;
import ejemplo.entities.ClienteEntity;

@RestController
public class ClientesRestController {
	@Autowired
	private ClientesDao clientesDao;
	@RequestMapping(path="clientes/all",method=RequestMethod.GET)
	public List<ClienteEntity> clientesAll(){
		return clientesDao.findAll();
	}
}
