package com.otrs.service;

import java.util.Optional;

import com.otrs.entity.AdminRegister;

public interface AdminRegisterService {

	 void registerAdmin(AdminRegister user);
	 
	 Optional<AdminRegister> loginAdmin(String email, String pass);
}
