package com.docker.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerWelcomController {

	
	@GetMapping("/message")
	public String getMessage() {
		return "Welcome spring boot docker demo";
	}
}
