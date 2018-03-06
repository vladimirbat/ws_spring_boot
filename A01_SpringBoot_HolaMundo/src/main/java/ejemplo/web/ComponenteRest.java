package ejemplo.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ComponenteRest {
	@Value("${nombre}")
	private String nombre;
	
	@RequestMapping("/saludar")
	String saludo() {
		return "Hola Mundo, desde " + this.nombre;
	}
	@RequestMapping("/hora")
	String hora() {
		return new Date().toString();
	}
}
