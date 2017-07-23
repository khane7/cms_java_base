package com.humanwares.cms.Common;

import com.humanwares.cms.Beans.BeanUsers;
import com.humanwares.cms.Dao.DaoUsers;

import java.util.Map;

import javax.servlet.http.HttpSession;

public class UserSession {

	public static BeanUsers getSession ( HttpSession httpSession ) {
		
		DaoUsers daoUsers = new DaoUsers();
		BeanUsers beanUser = new BeanUsers();
		
		try {
			
			Map<String, Object> mapUser = (Map<String, Object>) httpSession.getAttribute("session_user");
			beanUser = daoUsers.getUsers( mapUser.get("ss_user_id").toString() );
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return beanUser;
	}
	
}