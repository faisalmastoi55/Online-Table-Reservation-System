package com.otrs.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "reserve")
public class BookTable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	
	@Column(name = "first_name")
	private String fname;
	
	@Column(name = "last_name")
	private String lname;
	
	private String email;
	
	@Column(name = "nationality")
	private String nation;

	@Column(name = "phone_number")
	private String phone;

	@Column(name = "table_type")
	private String table;
	
	private String purpose;
	
	@Column(name = "meal_plan")
	private String meal;

	@Column(name = "time")
	private String tme;
	
	@Column(name = "date")
	private String dte;

	public BookTable() {
		super();
	}

	public BookTable(int id, String title, String fname, String lname, String email, String nation, String phone,
			String table, String purpose, String meal, String tme, String dte) {
		super();
		this.id = id;
		this.title = title;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.nation = nation;
		this.phone = phone;
		this.table = table;
		this.purpose = purpose;
		this.meal = meal;
		this.tme = tme;
		this.dte = dte;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getMeal() {
		return meal;
	}

	public void setMeal(String meal) {
		this.meal = meal;
	}

	public String getTme() {
		return tme;
	}

	public void setTme(String tme) {
		this.tme = tme;
	}

	public String getDte() {
		return dte;
	}

	public void setDte(String dte) {
		this.dte = dte;
	}
	
	

}
