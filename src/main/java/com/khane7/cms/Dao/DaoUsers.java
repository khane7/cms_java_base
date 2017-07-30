package com.khane7.cms.Dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.khane7.cms.Beans.BeanUsers;

/**
 * Created by khane7 on 2016-02-02.
 */
@Repository
public class DaoUsers extends DaoBase {

	public DaoUsers() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	
	/**
	 * 계정정보 조회
	 * @param paramsMap
	 * @return
	 */
	public BeanUsers getUsers ( Map<String, Object> paramsMap ) {
		
		
		BeanUsers beanUsers = new BeanUsers();
		
		try {
			beanUsers = (BeanUsers) sqlSession.selectOne("users.select_users", paramsMap);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return beanUsers;
	}
	
	/**
	 * 로그인 용 계정정보 조회
	 * @param user_id
	 * @param passwd
	 * @return
	 */
	public BeanUsers getUsers ( String user_id, String passwd ) {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("user_id", user_id);
		paramsMap.put("passwd", passwd);
		
		return this.getUsers(paramsMap);
	}
	public BeanUsers getUsers ( String user_id ) {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("user_id", user_id);
		
		return this.getUsers(paramsMap);
	}
	public BeanUsers getUsers ( int idx ) {
		
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
		
		return sqlSession.selectOne("users.select_users_count", mapParams);
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
	public List<BeanUsers> getUserList (Map<String, Object> mapParams) {
		
		return sqlSession.selectList("users.select_users", mapParams);
	}
	
	public List<BeanUsers> getUserList (String searchKey, String searchValue, int pageNum, int limitCount, String ordering, String sort  ) {
		
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
		sqlSession.update("users.update_passwd", map);
	}
	
	
	/**
	 * 계정정보 수정
	 * @param beanUser
	 */
	public void setUser ( BeanUsers beanUser ) {

		if ( beanUser.getIdx() == 0 ) {
			sqlSession.insert("users.insert_user", beanUser);
		} else {
			sqlSession.insert("users.update_user", beanUser);
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
		sqlSession.update("users.update_drop", map);
	}


}
