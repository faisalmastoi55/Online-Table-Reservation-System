package com.otrs.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otrs.entity.AdminRegister;
import com.otrs.repository.AdminRegisterRepository;
import com.otrs.service.AdminRegisterService;

@Service
public class AdminRegisterImpl implements AdminRegisterService {

	@Autowired
	private AdminRegisterRepository registerRepository;
	
	@Override
	public void registerAdmin(AdminRegister user) {
		registerRepository.save(user);
	}

	@Override
	public Optional<AdminRegister> loginAdmin(String email, String pass) {
		Optional<AdminRegister> userOptional = registerRepository.findByEmail(email);
        if (userOptional.isPresent()) {
        	AdminRegister user = userOptional.get();
            if (pass.equals(user.getPass()) && email.equals(user.getEmail())) {
                return Optional.of(user);
            }
        }
		return Optional.empty();
	}

}
