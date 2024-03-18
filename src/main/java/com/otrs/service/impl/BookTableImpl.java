package com.otrs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otrs.entity.BookTable;
import com.otrs.repository.BookTableRepository;
import com.otrs.service.BookTableService;

@Service
public class BookTableImpl implements BookTableService{

	@Autowired
	private BookTableRepository bookTableRepository;
	
	@Override
	public void saveReservation(BookTable table) {
		bookTableRepository.save(table);
	}

	@Override
	public List<BookTable> getAllReservations() {
		List<BookTable> findAll = bookTableRepository.findAll();
		return findAll;
	}

	@Override
	public BookTable getReservationById(int id) {
		return bookTableRepository.findById(id).orElse(null);
	}

	@Override
	public void updateReservation(BookTable reservation) {
		bookTableRepository.save(reservation);
	}

	@Override
	public void deleteReservationById(int id) {
		bookTableRepository.deleteById(id);
		
	}
	
	
	
	
}
