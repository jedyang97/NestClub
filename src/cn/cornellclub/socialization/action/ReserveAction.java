package cn.cornellclub.socialization.action;

import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.entity.Reservation;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class ReserveAction extends ActionSupport {

	/**
     * 
     */
    private static final long serialVersionUID = 1L;
    private int code;
	private String eventName;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String weChatAccount;
	private String email;
	private String school;
	private String company;
	private String partner1;
	private String partner2;
	private String partner3;
	private int age;
	private String gender;
	private String job;
	private String invitationWeChatAccount;
	
	private Event event;
	

	@Override
	public String execute() throws Exception {
		Reservation reservation = new Reservation();
		
		reservation.setStatus("reserved");
		reservation.setDatetime(new Date());
		reservation.setEventName(this.getEventName());
		reservation.setFirstName(this.getFirstName());
		reservation.setLastName(this.getLastName());
		reservation.setPhoneNumber(this.getPhoneNumber());
		reservation.setWeChatAccount(this.getWeChatAccount());
		reservation.setEmail(this.getEmail());
		reservation.setSchool(this.getSchool());
		reservation.setCompany(this.getCompany());
		reservation.setPartner1(this.getPartner1());
		reservation.setPartner2(this.getPartner2());
		reservation.setPartner3(this.getPartner3());
		reservation.setAge(this.getAge());
		reservation.setJob(this.getJob());
		reservation.setGender(this.getGender());
		reservation.setInvitationWeChatAccount(this.getInvitationWeChatAccount());
		
		Session session = null;
		Transaction tx = null;
		

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
			
			event = (Event) session.get(Event.class, eventName);
			session.saveOrUpdate(reservation);
			
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			HibernateSessionFactory.closeSession();
		}

		return "SUCCESS";
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

	public String getInvitationWeChatAccount() {
		return invitationWeChatAccount;
	}

	public void setInvitationWeChatAccount(String invitationWeChatAccount) {
		this.invitationWeChatAccount = invitationWeChatAccount;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

}
