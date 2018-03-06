package ejemplo;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import ejemplo.dao.ClientesDao;
import ejemplo.entities.ClienteEntity;

@RunWith(SpringRunner.class)
@SpringBootTest
public class A03A_DaoTest {
	@Autowired
	private ClientesDao clientesDao;
	
	@Test
	public void buscarClavePrimaria() {
		ClienteEntity cliente = clientesDao.getOne(1L);
		System.out.println("Cliente getOne: " + cliente);
		Optional<ClienteEntity> resul = clientesDao.findById(1L);
		ClienteEntity cliente2 = resul.orElse(new ClienteEntity(0,"","",0));
		System.out.println("Cliente findById: " + cliente2);
		assertNotNull(cliente);
		assertEquals(1L, cliente.getDni());
	}
	
	
}
