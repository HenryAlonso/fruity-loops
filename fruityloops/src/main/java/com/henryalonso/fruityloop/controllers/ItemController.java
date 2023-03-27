package com.henryalonso.fruityloop.controllers;

import com.henryalonso.fruityloop.models.Item;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {
	
	@GetMapping("/")
	public String index(Model model) {
		
		ArrayList<Item> fruits = new ArrayList<Item>();
		fruits.add(new Item("Kiwi", 1.5));
		fruits.add(new Item("Mango", 2.0));
		fruits.add(new Item("Goji Berries", 4.0));
		fruits.add(new Item("Guava", 0.75));
		
		/* Add fruits to your view model! */
		model.addAttribute("fruit", fruits );
		
		
		return "demo.jsp";
	}
}
