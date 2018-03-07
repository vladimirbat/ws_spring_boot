package ejemplo;



import java.io.IOException;

import org.hamcrest.Matchers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.mock.http.MockHttpOutputMessage;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import ejemplo.entities.ClienteEntity;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class A05C_RestServidorMockeado {
	@Autowired
	private MockMvc mockMvc;

	private MediaType tipo = MediaType.APPLICATION_JSON_UTF8;
	
	@SuppressWarnings("rawtypes")
	private HttpMessageConverter messageConverter;
	
	@Autowired
	void setConverters(HttpMessageConverter<?>[] converters) {
		for (int i = 0; i < converters.length; i++) {
			if(converters[i] instanceof MappingJackson2HttpMessageConverter) {
				messageConverter = converters[i];
				return;
			}
		}
	}
	
	
	@Test
	public void buscarPorApellidosVerJson() throws Exception {
		String path = "/clientes/findBy/ez";
		// perform envía la petición que hemos construido
		// con MockMvcBuilders
		ResultActions resultado = mockMvc.perform(MockMvcRequestBuilders.get(path));
		// ------------ Analizar la respuesta --------------
		System.out.println("--------- BUSCAR POR APELLIDOS ------------");
		resultado.andDo(MockMvcResultHandlers.print())
			.andExpect(MockMvcResultMatchers.status().isOk());
		System.out.println("------------------------------------------");
	}
	@Test
	public void buscarPorApellidosAnalizarJson() throws Exception {
		String path = "/clientes/findBy/ez";
		// perform envía la petición que hemos construido
		// con MockMvcBuilders
		ResultActions resultado = mockMvc.perform(MockMvcRequestBuilders.get(path));
		// ------------ Analizar la respuesta --------------
		System.out.println("--------- BUSCAR POR APELLIDOS (II)------------");
		resultado.andExpect(MockMvcResultMatchers.status().isOk())
			.andExpect(MockMvcResultMatchers.content().contentType(tipo))
			.andExpect(MockMvcResultMatchers.jsonPath("$", //$ indica el elemento raíz (es una matriz)
					Matchers.iterableWithSize(Matchers.greaterThan(0))))
			.andExpect(MockMvcResultMatchers.jsonPath("$[0]['apellidos']",//Apellidos del primer cliente
					Matchers.containsString("ez")));
		System.out.println("------------------------------------------");
	}
	@Test
	public void insertar() throws Exception {
		long dni = 1000 +(long)(Math.floor(5000*Math.random()));
		ClienteEntity cliente = new ClienteEntity(dni,"Nuevo","Garcia"+ dni , 2000);
		
		String path = "/clientes";
		// perform envía la petición que hemos construido con MockMvcBuilders
		ResultActions resultado = mockMvc.perform(
				MockMvcRequestBuilders.post(path).content(objAJson(cliente))
				.contentType(tipo)
		);
		// ------------ Analizar la respuesta --------------
		System.out.println("--------- INSERTAR ------------");
		resultado.andDo(MockMvcResultHandlers.print())
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andExpect(MockMvcResultMatchers.content().contentType(tipo))
			.andExpect(MockMvcResultMatchers.jsonPath("$['dni']",//Dni recibido
					Matchers.equalTo((int)dni)));
		System.out.println("------------------------------------------");
	}
	
	// ---------------Método auxiliar para convertir objeto a JSON ------------
	@SuppressWarnings("unchecked")
	private String objAJson(Object obj) throws HttpMessageNotWritableException, IOException   {
		MockHttpOutputMessage mensaje = new MockHttpOutputMessage();
		messageConverter.write(obj, tipo, mensaje);
		return mensaje.getBodyAsString();
	}
}







