package com.otrs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.otrs.entity.BookTable;
import com.otrs.entity.ContactUs;
import com.otrs.service.BookTableService;
import com.otrs.service.ContactService;

@Controller
public class UserHomeController {
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private BookTableService bookTableService;
	
	@GetMapping("/home")
    public String loginForm() {
        return "home";
    }
	
	@GetMapping("/menu")
    public String menuForm() {
        return "menu";
    }
	
	@GetMapping("/contactUs")
    public String contactForm() {
        return "contactUs";
    }
	
	@GetMapping("/bookTable")
    public String bookTableForm() {
        return "bookTable";
    }
	
	@PostMapping("/notification")
	public String contactForm(@ModelAttribute ContactUs contact) {
		contactService.contactSave(contact);
		return "redirect:/contactUs";
	}
	
	@PostMapping("/userDetailsRequest")
	public String submitReservation(@ModelAttribute BookTable table) {
		bookTableService.saveReservation(table);
		return "redirect:/bookTable";
	}
	
	
	

}
