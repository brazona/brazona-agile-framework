package br.brazona.baf;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class BafApplication {
	private static Logger logger = LoggerFactory.getLogger(BafApplication.class);

	public static void main(String[] args) {
		logger.info("Starting application");

		SpringApplication.run(BafApplication.class, args);
	}

}
