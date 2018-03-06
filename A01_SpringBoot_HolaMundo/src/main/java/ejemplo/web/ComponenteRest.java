package ejemplo.web;

import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ComponenteRest {
	@RequestMapping("/saludar")
	String saludo() {
		return "Hola Mundo";
	}
	@RequestMapping("/hora")
	String hora() {
		return new Date().toString();
	}
}
