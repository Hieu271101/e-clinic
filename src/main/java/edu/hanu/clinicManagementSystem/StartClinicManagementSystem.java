package edu.hanu.clinicManagementSystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages = { "edu.hanu.clinicManagementSystem"})
public class StartClinicManagementSystem extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(StartClinicManagementSystem.class);
	}

	public static void main(String[] args) {
		System.out.println("Start eclinic Management System");
		
		SpringApplication.run(StartClinicManagementSystem.class, args);
	}
}
