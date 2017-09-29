package com.khane7.common;

import com.khane7.cms.manager.account.vo.BeanAccount;
import com.khane7.cms.manager.account.dao.DaoAccount;

import java.util.Map;

import javax.servlet.http.HttpSession;

public class UserSession {

	public static BeanAccount getSession (HttpSession httpSession ) {
		
		DaoAccount daoAccount = new DaoAccount();
		BeanAccount beanUser = new BeanAccount();
		
		try {
			
			Map<String, Object> mapUser = (Map<String, Object>) httpSession.getAttribute("session_user");
			beanUser = daoAccount.getUsers( mapUser.get("ss_user_id").toString() );
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return beanUser;
	}
	
}