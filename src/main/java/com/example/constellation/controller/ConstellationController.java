package com.example.constellation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.constellation.dao.IConstellationDAO;
import com.example.constellation.dto.ConstellationDto;

@Controller
public class ConstellationController {
	
	@Autowired
	IConstellationDAO condao;
	
	@GetMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		model.addAttribute("stars", condao.selectAll());
		return "list";
	}
	@GetMapping("/edit/{id}\")
	public String form() {
		return "form";
	}
	@PostMapping("/result")
	public String result(@RequestParam("id") int id, Model model) {
		ConstellationDto cd = condao.selectById(id);
		model.addAttribute("star", cd);
		return "result";
	}
	
	
}
