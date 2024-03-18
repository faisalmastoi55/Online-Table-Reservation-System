package com.otrs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otrs.entity.BookTable;

public interface BookTableRepository extends JpaRepository<BookTable, Integer>{

}
