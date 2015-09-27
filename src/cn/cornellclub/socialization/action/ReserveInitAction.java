package cn.cornellclub.socialization.action;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

public class ReserveInitAction extends ActionSupport {
	
	private static Logger logger = LogManager.getLogger("ReserveInitAction");  
	
	private String eventName;
	private Event event;
	
	
	@Override
	public String execute() throws Exception {
		event = new Event();
		
		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			
			event = (Event) session.get(Event.class, eventName);
			if (event.getStatus().equals("closed")) {
				return "CLOSED";
			}
			
			
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch(NullPointerException e) {
			//TODO
		}finally {
			// 7. �ر�session
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


	public Event getEvent() {
		return event;
	}


	public void setEvent(Event event) {
		this.event = event;
	}
	
}