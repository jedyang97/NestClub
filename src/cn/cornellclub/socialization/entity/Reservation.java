package cn.cornellclub.socialization.entity;

import java.io.Serializable;
import java.util.Date;

public class Reservation implements Serializable {
	
	/**
     * 
     */
    private static final long serialVersionUID = 1L;
    private int code;
	private Date datetime;
	private String eventName;
	private String lastName;
	private String firstName;
	private String gender;
	private String phoneNumber;
	private String weChatAccount;
	private String email;
	private String school;
	private String company;
	private String partner1;
	private String partner2;
	private String partner3;
	private int age;
	private String job;
	private String invitationWeChatAccount;
	private String status;
	
	public String getInvitationWeChatAccount() {
		return invitationWeChatAccount;
	}
	public void setInvitationWeChatAccount(String invitationWeChatAccount) {
		this.invitationWeChatAccount = invitationWeChatAccount;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getWeChatAccount() {
		return weChatAccount;
	}
	public void setWeChatAccount(String weChatAccount) {
		this.weChatAccount = weChatAccount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPartner1() {
		return partner1;
	}
	public void setPartner1(String partner1) {
		this.partner1 = partner1;
	}
	public String getPartner2() {
		return partner2;
	}
	public void setPartner2(String partner2) {
		this.partner2 = partner2;
	}
	public String getPartner3() {
		return partner3;
	}
	public void setPartner3(String partner3) {
		this.partner3 = partner3;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	
	
	
}
