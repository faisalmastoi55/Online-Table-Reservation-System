package com.otrs.service;

import java.util.List;

import com.otrs.entity.ContactUs;

public interface ContactService {

	void contactSave(ContactUs contact);
	
	List<ContactUs> getAllNotification();
}
