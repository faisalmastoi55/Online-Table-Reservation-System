package com.otrs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otrs.entity.ContactUs;

public interface ContactRespository extends JpaRepository<ContactUs, Integer>{

}
