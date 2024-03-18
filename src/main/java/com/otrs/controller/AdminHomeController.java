package com.otrs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.otrs.entity.BookTable;
import com.otrs.entity.ContactUs;
import com.otrs.service.BookTableService;
import com.otrs.service.ContactService;

@Controller
public class AdminHomeController {

	@Autowired
	private BookTableService bookTableService;
	
	@Autowired
	private ContactService contactService;

	@GetMapping("adminHome")
	public String adminHome() {
		return "adminHome";
	}

	@GetMapping("updateReservationTable")
	public String updateTable() {
		return "updateReservationTable";
	}
	
	@GetMapping("/notificationInfo")
    public String showNotification(Model model) {
		List<ContactUs> allNotification = contactService.getAllNotification();
        model.addAttribute("notifications", allNotification);
        return "notificationInfo"; 
    }
	
	@GetMapping("/tableBookingInfo")
    public String showReservations(Model model) {
        List<BookTable> list = bookTableService.getAllReservations();
        model.addAttribute("reservations", list);
        return "tableBookingInfo"; 
    }

	@GetMapping("/updateReservationTable/{id}")
	public String showUpdateForm(@PathVariable("id") int id, Model model) {
		BookTable reservationById = bookTableService.getReservationById(id);
		model.addAttribute("data", reservationById);
		return "updateReservationTable";
	}

	@PostMapping("/updateBookedTable")
	public String updateReservation(BookTable reservation) {
		bookTableService.updateReservation(reservation);
		return "redirect:/tableBookingInfo";
	}
	
	@GetMapping("/deleteReservation/{id}")
    public String deleteReservation(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
		bookTableService.deleteReservationById(id);
		redirectAttributes.addFlashAttribute("successMessage", "Booked table deleted successfully!");
        return "redirect:/tableBookingInfo";
    }

}
