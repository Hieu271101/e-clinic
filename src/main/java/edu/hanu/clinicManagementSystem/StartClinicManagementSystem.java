package edu.hanu.clinicManagementSystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class StartClinicManagementSystem {


	public static void main(String[] args) {
		System.out.println("Start eclinic Management System");
		
		SpringApplication.run(StartClinicManagementSystem.class, args);
	}
}
