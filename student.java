package model;

import jakarta.servlet.http.HttpSession;

public class student {
	private String id;
	private String name;
	private String mail;
	private String phone;
	private String passward;
	private String date;
    private String otp;
	
	public student() {
		
	}
	public student(String name, String mail, String phone, String passward ,String otp) {
		super();
		this.name = name;
		this.mail = mail;
		this.phone = phone;
		this.passward = passward;
		this.otp=otp;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassward() {
		return passward;
	}
	public void setPassward(String passward) {
		this.passward = passward;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
}
