package ejemplo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	@RequestMapping(path="clientes",method=RequestMethod.POST)
	public ClienteEntity insertarCliente(@RequestBody ClienteEntity nuevo){
		return clientesDao.saveAndFlush(nuevo);
	}
	
	@RequestMapping(path="clientes/{dni}",method=RequestMethod.GET)
	public ClienteEntity buscarPorDni(@PathVariable Long dni){
		return clientesDao.findById(dni).orElse(new ClienteEntity(0,"","",0));
	}
	@RequestMapping(path="clientes/findBy/{ape}",method=RequestMethod.GET)
	public List<ClienteEntity> buscarPorApellidos(@PathVariable String ape){
		return clientesDao.findClientesByApellidosContaining(ape);
	}
	
}
