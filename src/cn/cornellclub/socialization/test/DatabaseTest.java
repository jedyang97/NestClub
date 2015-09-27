package cn.cornellclub.socialization.test;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import cn.cornellclub.socialization.entity.Administrator;
import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.entity.Reservation;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class DatabaseTest {
	
	public static void main(String[] args) {
		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
			
			Event event = (Event) session.get(Event.class, "Test");
			System.out.println(event.getItems().contains("l"));
			
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			// 6. �ع�����
			tx.rollback();
		} finally {
			// 7. �ر�session
			HibernateSessionFactory.closeSession();
		}
		
		System.out.println("Database Test Complete!");
		
		
	}
	
}
