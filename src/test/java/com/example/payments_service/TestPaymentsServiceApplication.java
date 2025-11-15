package com.example.payments_service;

import org.springframework.boot.SpringApplication;

public class TestPaymentsServiceApplication {

	public static void main(String[] args) {
		SpringApplication.from(PaymentsServiceApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
