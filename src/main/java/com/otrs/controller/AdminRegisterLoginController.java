package com.otrs.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.otrs.entity.AdminRegister;
import com.otrs.service.AdminRegisterService;

import jakarta.servlet.http.HttpSession;


@Controller
public class AdminRegisterLoginController {

	@Autowired
	private AdminRegisterService registerService;
	
	@GetMapping("/adminLogin")
    public String loginForm() {
        return "adminLogin";
    }
	
	
	@GetMapping("/adminSignup")
    public String registerForm() {
        return "adminSignup";
    }

    @PostMapping("/RegisterAdminSuccessful")
    public String registerSubmit(@ModelAttribute AdminRegister user, HttpSession s) {
    	if (user.getPass().equals(user.getPsw())) {
            // Passwords match, proceed with registration
            registerService.registerAdmin(user);
            return "redirect:/adminLogin";
        } else {
            // Passwords don't match, redirect back to the registration page with an error message
        	s.setAttribute("failedMsg", "Password does not match");
        	return "redirect:/adminSignup";
        }
    }
    
    @PostMapping("/adminlogin")
    public String loginSubmit(@RequestParam String email, @RequestParam String pass, HttpSession s) {
        Optional<AdminRegister> user = registerService.loginAdmin(email, pass);
        if (user.isPresent()) {
            // Handle successful login
            return "redirect:/adminHome"; // Redirect to dashboard or any other page
        } else {
            // Handle unsuccessful login
        	s.setAttribute("error", "Invalid email or password");
            return "adminLogin";
        }
    }
}
