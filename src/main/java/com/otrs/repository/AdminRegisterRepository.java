package com.otrs.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otrs.entity.AdminRegister;

public interface AdminRegisterRepository extends JpaRepository<AdminRegister, Integer> {

	Optional<AdminRegister> findByEmail(String email);
}
