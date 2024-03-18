package com.otrs.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.otrs.entity.AdminRegister;
import com.otrs.entity.BookTable;
import com.otrs.entity.UserRegister;
import com.otrs.service.UserRegisterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserRegisterLoginController {

	@Autowired
	private UserRegisterService registerService;
	
	@GetMapping("/loginUser")
    public String loginForm() {
        return "loginUser";
    }
	
	
	@GetMapping("/registerUser")
    public String registerForm() {
        return "registerUser";
    }
	
	@GetMapping("/registerUserSuccessfully")
    public String registerSuccessfully() {
        return "registerUserSuccessfully";
    }
	
	@PostMapping("/reg")
    public String registerSubmit(@ModelAttribute UserRegister user, HttpSession s, Model model) {
    	if (user.getPass().equals(user.getPsw())) {
            // Passwords match, proceed with registration
            registerService.registerUser(user);
            
            UserRegister reservations = registerService.findRegisterById(user.getId());
            model.addAttribute("registerData", reservations);
            
            return "registerUserSuccessfully";
        } else {
            // Passwords don't match, redirect back to the registration page with an error message
        	s.setAttribute("failed", "Password does not match");
        	return "redirect:/registerUser";
        }
    }
	
	@PostMapping("/log")
    public String loginSubmit(@RequestParam String email, @RequestParam String pass, HttpSession s) {
        Optional<UserRegister> user = registerService.loginUser(email, pass);
        if (user.isPresent()) {
            // Handle successful login
            return "redirect:/home"; // Redirect to dashboard or any other page
        } else {
            // Handle unsuccessful login
        	s.setAttribute("error1", "Invalid email or password");
            return "loginUser";
        }
    }

}
