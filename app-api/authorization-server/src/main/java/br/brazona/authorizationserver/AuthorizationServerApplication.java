package br.brazona.authorizationserver;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class AuthorizationServerApplication {
	private static Logger logger = LoggerFactory.getLogger(AuthorizationServerApplication.class);

	public static void main(String[] args) {
		logger.info("Starting application");

		SpringApplication.run(AuthorizationServerApplication.class, args);
	}

}
