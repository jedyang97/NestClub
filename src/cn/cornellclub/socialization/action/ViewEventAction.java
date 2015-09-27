package cn.cornellclub.socialization.action;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.entity.Reservation;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class ViewEventAction extends ActionSupport {
	
	/**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String eventName;
	private Event event;
	private List<Reservation> reservationList;
	
	@Override
	public String execute() throws Exception {
		
		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			
			event = (Event) session.get(Event.class, eventName);
			
			String hql = "from Reservation as reservation where reservation.eventName = ?";
			Query query = session.createQuery(hql);
			query.setParameter(0, eventName);
			reservationList = query.list();
					
		} catch (HibernateException e) {
			e.printStackTrace();
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



	public List<Reservation> getReservationList() {
		return reservationList;
	}

	public void setReservationList(List<Reservation> reservationList) {
		this.reservationList = reservationList;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
	
}
