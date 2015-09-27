package cn.cornellclub.socialization.action;

import com.opensymphony.xwork2.ActionSupport;

public class PayInitAction extends ActionSupport {
	
	private double amount;
	
	@Override
	public String execute() throws Exception {
		
		
		return "SUCCESS";
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
}
