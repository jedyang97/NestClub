package cn.cornellclub.socialization.action;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import cn.cornellclub.socialization.entity.Administrator;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class AdministratorSignInAction extends ActionSupport {
	
	private String username;
	private String password;
	
	
	@Override
	public String execute() throws Exception {

		Session session = null;
		Transaction tx = null;
		
		Administrator admin = null;

		try {
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();

			admin = (Administrator) session.get(Administrator.class, this.getUsername());
			
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
		}
		
		
		if (admin == null) {
			return Action.LOGIN;
		} else if (!admin.getPassword().equals(this.getPassword())) {
			return Action.LOGIN;
		}
		
		ActionContext.getContext().getSession().put("administrator", admin);
		return "SUCCESS";
		
		
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public void setPassword(String password) {
		this.password = password;
	}
}
