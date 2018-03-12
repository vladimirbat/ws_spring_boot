package ejemplo.web;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ejemplo.dao.ClientesDao;
import ejemplo.entities.ClienteEntity;

@Controller
public class ClientesController {
	@Autowired
	ClientesDao clientesDao;
	
	@PostConstruct
	public void inicializar(){
		System.out.println("clientesDao: " + clientesDao.getClass().getName());
	}

	@RequestMapping("/listado")
	String listadoClientes(Map<String,Object> modelo) {
		List<ClienteEntity> clientes = clientesDao.findAll();
		modelo.put("CLIENTES", clientes);
		return "listado_clientes";
	}
	
}
