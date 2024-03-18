package com.otrs.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otrs.entity.UserRegister;

public interface UserRegisterRepository extends JpaRepository<UserRegister, Integer>{

	Optional<UserRegister> findByEmail(String email);
}
