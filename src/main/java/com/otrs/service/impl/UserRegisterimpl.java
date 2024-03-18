package com.otrs.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otrs.entity.AdminRegister;
import com.otrs.entity.UserRegister;
import com.otrs.repository.UserRegisterRepository;
import com.otrs.service.UserRegisterService;

@Service
public class UserRegisterimpl implements UserRegisterService{

	@Autowired
	private UserRegisterRepository registerRepository;
	
	@Override
	public void registerUser(UserRegister user) {
		
		registerRepository.save(user);
	}

	@Override
	public Optional<UserRegister> loginUser(String email, String pass) {
		Optional<UserRegister> userOptional = registerRepository.findByEmail(email);
        if (userOptional.isPresent()) {
        	UserRegister user = userOptional.get();
            if (pass.equals(user.getPass()) && email.equals(user.getEmail())) {
                return Optional.of(user);
            }
        }
		return Optional.empty();
	}

	@Override
	public UserRegister findRegisterById(int id) {
		return registerRepository.findById(id).orElse(null);
	}

}
