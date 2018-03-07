package ejemplo.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ComponenteRest {
	
	
	@RequestMapping("/saludar")
	String saludo() {
		System.out.println("-------------- SALUDANDO A UN CLIENTE -------------");
		return "Hola Mundo";
	}
	
}
