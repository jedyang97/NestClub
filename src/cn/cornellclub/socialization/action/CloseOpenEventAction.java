package cn.cornellclub.socialization.action;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

public class CloseOpenEventAction extends ActionSupport {
	
	private String eventName;
	private Event event;
	
	@Override
	public String execute() throws Exception {
		
		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();

			event = (Event) session.get(Event.class, eventName);
			
			if (event.getStatus().equals("closed")) {
				event.setStatus("ongoing");
			} else if (event.getStatus().equals("ongoing")) {
				event.setStatus("closed");
			}
			
			session.update(event);
			
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			// 6. �ع�����
			tx.rollback();
		} finally {
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
