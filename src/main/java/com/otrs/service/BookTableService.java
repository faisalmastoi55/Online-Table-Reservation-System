package com.otrs.service;

import java.util.List;

import com.otrs.entity.BookTable;

public interface BookTableService {

	void saveReservation(BookTable table);
	
	List<BookTable> getAllReservations();
	
	BookTable getReservationById(int id);
	
    void updateReservation(BookTable reservation);
    
    void deleteReservationById(int id);
}
