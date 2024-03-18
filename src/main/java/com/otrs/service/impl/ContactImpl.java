package com.otrs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otrs.entity.ContactUs;
import com.otrs.repository.ContactRespository;
import com.otrs.service.ContactService;

@Service
public class ContactImpl implements ContactService{

	@Autowired
	private ContactRespository contactRespository;
	
	@Override
	public void contactSave(ContactUs contact) {
		contactRespository.save(contact);
	}

	@Override
	public List<ContactUs> getAllNotification() {
		List<ContactUs> findAll = contactRespository.findAll();
		return findAll;
	}

}
