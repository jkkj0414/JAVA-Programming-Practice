package com.WhereECO;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class WhereEcoBackEndApplication {

	public static void main(String[] args) {
		SpringApplication.run(WhereEcoBackEndApplication.class, args);
	}

}
