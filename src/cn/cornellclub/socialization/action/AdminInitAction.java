package cn.cornellclub.socialization.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

public class AdminInitAction extends ActionSupport {
	
	private List<Event> eventList;
	
	@Override
	public String execute() throws Exception {
		
		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
			
			String hql = "from Event";
			Query query = session.createQuery(hql);
			eventList = query.list();
			
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			// 7. �ر�session
			HibernateSessionFactory.closeSession();
		}
		
		System.out.println(eventList);
		return "SUCCESS";
	}

	public List<Event> getEventList() {
		return eventList;
	}

	public void setEventList(List<Event> eventList) {
		this.eventList = eventList;
	}
	
}
