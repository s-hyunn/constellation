package com.example.constellation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConstellationController {
	
	@GetMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/list")
	public String list(@RequestParam("id") int id) {
		
		return "list";
	}
	@GetMapping("/form")
	public String form() {
		return "form";
	}
	@PostMapping("/result")
	public String result() {
		return "result";
	}
	
	
}
