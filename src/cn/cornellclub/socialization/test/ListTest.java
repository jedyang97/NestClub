package cn.cornellclub.socialization.test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class ListTest {
	
	public static void main(String[] args) {
		Event event = new Event();

		event.setName("Test");
		event.setStatus("ongoing");
		
		List<String> items = new ArrayList<String>();
		
		items.add("firstName");
		items.add("lastName");
		
		
		event.setItems(items);

		Session session = null;
		Transaction tx = null;

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();

			session.saveOrUpdate(event);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			// 6. �ع�����
			tx.rollback();
		} finally {
			// 7. �ر�session
			HibernateSessionFactory.closeSession();
		}
		
		System.out.println("List Test Complete!");
		
	}

}
