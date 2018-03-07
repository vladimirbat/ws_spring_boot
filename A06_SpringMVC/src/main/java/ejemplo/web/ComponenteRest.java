package ejemplo.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ComponenteRest {
	
	
	@RequestMapping("/saludar")
	String saludo() {
		return "Hola Mundo";
	}
	
}
