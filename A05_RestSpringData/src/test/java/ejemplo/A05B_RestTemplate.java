package ejemplo;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
// Al ponerle webEnvieronment arranca el servidor
@SpringBootTest(webEnvironment=WebEnvironment.RANDOM_PORT) 
public class A05B_RestTemplate {
	@Autowired
	private TestRestTemplate restTemplate;
	@LocalServerPort
	private int puerto;
	
	@Test
	public void testSaludar() {
		String url = "http://localhost:"+puerto+"/saludar";
		assertTrue(restTemplate.getForObject(url,String.class).equals("Hola Mundo"));
	}
	
}
