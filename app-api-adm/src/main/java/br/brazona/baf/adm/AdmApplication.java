package br.brazona.baf.adm;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@EnableAdminServer
@SpringBootApplication
public class AdmApplication {

	public static void main(String[] args) {
		SpringApplication.run(AdmApplication.class, args);
	}

}
