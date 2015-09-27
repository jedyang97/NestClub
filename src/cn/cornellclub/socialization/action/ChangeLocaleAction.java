package cn.cornellclub.socialization.action;

import java.util.Locale;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangeLocaleAction extends ActionSupport {
	
	private String lang;
	
	@Override
	public String execute() throws Exception {
//		Locale locale = new Locale(lang);
//		ActionContext.getContext().getSession().put("WW_TRANS_I18N_LOCALE", locale);
//		System.out.println(lang);
//		System.out.println(locale);
		return "SUCCESS";
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

}
