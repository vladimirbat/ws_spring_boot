package ejemplo;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import ejemplo.dao.ClientesDao;
import ejemplo.entities.ClienteEntity;

@RunWith(SpringRunner.class)
@SpringBootTest // Carga el contexto de Spring asociado a @SpringBootApplicacion
public class A05A_DaoTest {
	@Autowired
	private ClientesDao clientesDao;
	
	@Test
	public void buscarClavePrimaria() {
		Optional<ClienteEntity> resul = clientesDao.findById(1L);
		ClienteEntity cliente = resul.orElse(new ClienteEntity(0,"","",0));
		System.out.println("Cliente findById: " + cliente);
		assertNotNull(cliente);
		assertEquals(1L, cliente.getDni());
		assertEquals("Victor", cliente.getNombre());
	}
	@Test
	public void buscarPorApellidos() {
		List<ClienteEntity> clientes = clientesDao
				.findClientesByApellidosContaining("ez");
		assertNotNull(clientes);
		assertTrue(clientes.size()>0);
		System.out.println("Encontrados: " + clientes.size());
		clientes.forEach(c ->{
				assertTrue(c.getApellidos().toLowerCase().contains("ez"));
				System.out.println(c);
		});
	}
	@Test
	public void buscarClientesConProvinciaBa() {
		List<ClienteEntity> clientes = clientesDao
				.buscarClientesConProvinciaQueContenga("%Ba%");
		assertNotNull(clientes);
		assertTrue(clientes.size()>0);
		System.out.println("Encontrados con BA: " + clientes.size());
		clientes.forEach(c ->{
				assertTrue(c.getProvincia().getProvincia().toLowerCase().contains("ba"));
				System.out.println(c + " " + c.getProvincia().getProvincia());
		});
	}
	@Test
	public void editarUno() {
		// ---------- CLIENTE ALEATORIO -------------
		List<ClienteEntity> clientes = clientesDao.findAll();
		int n = (int)Math.floor(clientes.size()*Math.random());
		ClienteEntity cliente = clientes.get(n);
		System.out.println("ANTES: "  + cliente);
		// ---------- EDITAR EL CLIENTE ----------
		cliente.setNombre("Pepito");
		cliente.setApellidos("Editado" + n);
		System.out.println("DESPUES: "  + cliente);
		clientesDao.actualizarSinInsertar(cliente);
		// ---------- BUSCO EL EDITADO ----------------
		ClienteEntity otro = clientesDao.findClientesByApellidosLike("Editado" + n).get(0);
		assertEquals(cliente.getDni(), otro.getDni());
		assertEquals("Pepito", otro.getNombre());
		assertEquals("Editado" + n, otro.getApellidos());
		assertEquals(cliente.getSaldo(), otro.getSaldo(),0.001);
		
	}
	
}
