package com.khane7.cms.manager.account.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.khane7.cms.manager.account.vo.BeanAccount;
import com.khane7.cms.manager.system.dao.DaoBase;
import org.springframework.stereotype.Repository;

/**
 * Created by khane7 on 2016-02-02.
 */
@Repository
public class DaoAccount extends DaoBase {

	public DaoAccount() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	
	/**
	 * 계정정보 조회
	 * @param paramsMap
	 * @return
	 */
	public BeanAccount getUsers (Map<String, Object> paramsMap ) {
		
		
		BeanAccount beanAccount = new BeanAccount();
		
		try {
			beanAccount = getSqlSession().selectOne("account.select_account", paramsMap);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return beanAccount;
	}
	
	/**
	 * 로그인 용 계정정보 조회
	 * @param user_id
	 * @param passwd
	 * @return
	 */
	public BeanAccount getUsers (String user_id, String passwd ) {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("user_id", user_id);
		paramsMap.put("passwd", passwd);
		
		return this.getUsers(paramsMap);
	}
	public BeanAccount getUsers (String user_id ) {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("user_id", user_id);
		
		return this.getUsers(paramsMap);
	}
	public BeanAccount getUsers (int idx ) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);
		
		return this.getUsers(params);
	}
	
	
	/**
	 * 계정정보 총개수
	 * @param mapParams
	 * @return
	 */
	public int getUserCount (Map<String, Object> mapParams) {
		
		return getSqlSession().selectOne("account.select_account_count", mapParams);
	}
	public int getUserCount (String searchKey, String searchValue ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return this.getUserCount(map);
	}
	
	/**
	 * 계정정보 목록 조회
	 * @param mapParams
	 * @return
	 */
	public List<BeanAccount> getUserList (Map<String, Object> mapParams) {
		
		return getSqlSession().selectList("account.select_account", mapParams);
	}
	
	public List<BeanAccount> getUserList (String searchKey, String searchValue, int pageNum, int limitCount, String ordering, String sort  ) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		map.put("start", (pageNum - 1)*limitCount);
		map.put("limit", limitCount);
		map.put("ordering", ordering);
		map.put("sort", sort);
		
		return this.getUserList(map);
	}



	/**
	 * 비밀번호 변경
	 * @param user_id
	 * @param passwd
	 */
	public void setPassword ( String user_id, String passwd ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", user_id);
		map.put("passwd", passwd);
		getSqlSession().update("account.update_passwd", map);
	}
	
	
	/**
	 * 계정정보 수정
	 * @param beanUser
	 */
	public void setUser ( BeanAccount beanUser ) {

		if ( beanUser.getIdx() == 0 ) {
			getSqlSession().insert("account.insert_account", beanUser);
		} else {
			getSqlSession().insert("account.update_account", beanUser);
		}
		
	}

	
	/**
	 * 계정 삭제처리
	 * @param user_id
	 * @param passwd
	 */
	public void doDelete ( String user_id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", user_id);
		getSqlSession().update("account.update_drop", map);
	}


}
