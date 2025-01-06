package com.demo.FirstSpringBootProject.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public String welcome() {
		return "<h1>Welome to spring boot</h1>";
	}
	
	@GetMapping("/sayhello")
	public String Hello() {
		return "Hello World";
	}
	
}
