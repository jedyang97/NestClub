package cn.cornellclub.socialization.interceptor;

import java.util.Map;

import cn.cornellclub.socialization.entity.Administrator;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorizationInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		System.out.println(session);
		Administrator admin = (Administrator) session.get("administrator");
		
		if (admin == null) {
			return Action.LOGIN;
		} else {
			return invocation.invoke();
		}
	}
}
