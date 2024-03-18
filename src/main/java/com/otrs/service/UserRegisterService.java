package com.otrs.service;

import java.util.List;
import java.util.Optional;

import com.otrs.entity.UserRegister;

public interface UserRegisterService {

	void registerUser(UserRegister user);

	Optional<UserRegister> loginUser(String email, String pass);

	UserRegister findRegisterById(int id);
}
