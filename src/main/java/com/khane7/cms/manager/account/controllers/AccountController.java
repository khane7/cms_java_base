package com.khane7.cms.manager.account.controllers;

import com.khane7.cms.Application;
import com.khane7.cms.manager.account.vo.BeanAccount;
import com.khane7.common.Code;
import com.khane7.common.PageHelper;
import com.khane7.cms.manager.account.dao.DaoAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = Application.MANAGER_URL + "/account_manager")
public class AccountController{

	@Autowired
	HttpSession httpSession;

	@Autowired
	HttpServletRequest request;

	@Autowired
	DaoAccount daoAccount;

	Map<String, Object> resultMap;
	
	/**
	 * 계정정보 목록 페이지
	 * @param searchKey
	 * @param searchValue
	 * @param pageNum
	 * @param limitCount
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/getUserList")
	public String getUserList (
			@RequestParam( value="searchKey", defaultValue= "") String searchKey, 
			@RequestParam( value="searchValue", defaultValue= "") String searchValue,
			@RequestParam( value="pageNum", defaultValue= "1") int pageNum,
			@RequestParam( value="limitCount", defaultValue= "15") int limitCount,
			@RequestParam( value="ordering", defaultValue= "regdate") String ordering,
			@RequestParam( value="sort", defaultValue= "DESC") String sort,
			Model model ) {

		try {
			daoAccount.getUserList(searchKey, searchValue, pageNum, limitCount, ordering, sort);
			searchValue = URLDecoder.decode(searchValue);
			int countUsers = daoAccount.getUserCount( searchKey, searchValue );
			model.addAttribute( "PageLink", PageHelper.getPageLink(countUsers, pageNum, Code.PAGE_COUNT) );
			model.addAttribute( "UserCount", countUsers );
			model.addAttribute( "UserList", daoAccount.getUserList(searchKey, searchValue, pageNum, Code.PAGE_COUNT, ordering, sort ) );
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return "cms_manager/account_manager/aindex";
	}
	
	/**
	 * 비밀번호 변경처리
	 * @param map
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/setPassword", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> setPassword ( @RequestParam HashMap<String, Object> map, Model model ) {
			
		//DaoUsers daoUsers = new DaoUsers();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
			
			String user_id = "";
			String passwd = "";
			//daoUsers.setPassword(user_id, passwd);
			user_id = map.get("user_id").toString();
			passwd = map.get("txtCurrentPW").toString();
			
			BeanAccount user = daoAccount.getUsers( user_id, passwd );
			
			if ( user == null ) {
				resultMap.put("RESULT", "FAIL");
				resultMap.put("MSG", "0");
				return resultMap;
			}
			
			daoAccount.setPassword(map.get("user_id").toString(), map.get("txtNewPWChk").toString());
			resultMap.put("RESULT", "OK");
			resultMap.put("MSG", "1");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resultMap.put("RESULT", "FAIL");
			resultMap.put("MSG", e.getMessage());
		}
		
		return resultMap;
	}
	/**
	 * 삭제처리
	 * @param map
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/deleteUsers", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> deleteUsers ( @RequestParam HashMap<String, Object> map, Model model ) {
		
		//DaoUsers daoUsers = new DaoUsers();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
			if ( map.get("user_id").toString() == null || map.get("user_id").toString() == "" ) {
				resultMap.put("RESULT", "FAIL");
				resultMap.put("MSG", "0");
				return resultMap;
			}
			
			if ( map.get("user_id").toString().indexOf("||") > -1 ) {
				
				String[] user_ids = map.get("user_id").toString().split("[|][|]");
				
				for (String item : user_ids) {
					if ( item != null && item != "" ) {
						daoAccount.doDelete(item);
					}
				}
				
			} else {
				daoAccount.doDelete(map.get("user_id").toString());
			}
			resultMap.put("RESULT", "OK");
			resultMap.put("MSG", "1" );
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resultMap.put("RESULT", "FAIL");
			resultMap.put("MSG", e.getMessage() );
		}
		
		return resultMap;
	}
	
	
	/**
	 * 계정정보 상세페이지
	 * @param map
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/showUserDetail")
	public String showUserDetail ( @RequestParam HashMap<String, Object> map, Model model ) {
		
		//this.daoUsers = new DaoUsers();
		BeanAccount user = new BeanAccount();
		
		try {
			
			if ( map.get("user_id") != null ) {
				model.addAttribute("mode", "update_user");
				user = daoAccount.getUsers( map.get("user_id").toString() );
			} else {
				model.addAttribute("mode", "insert_user");
			}
			
			model.addAttribute("user", user);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "cms_manager/account_manager/aform";
	}
	
	
	/**
	 * 계정정보 저장처리
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/saveUser")
	public @ResponseBody Map<String, Object> saveUser ( @RequestParam HashMap<String, Object> map ) {
		
		//this.daoUsers = new DaoUsers();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
			
			if ( map.get("idx").toString().equals("0") == true && daoAccount.getUsers(map.get("user_id").toString()) != null ) {
				resultMap.put("RESULT", "FAIL");
				resultMap.put("MSG", "이미 가입된 이메일 입니다.");
				return resultMap;
			}
			
			BeanAccount beanUser = new BeanAccount();
			beanUser.setIdx( Integer.parseInt( map.get("idx").toString() ) );
			beanUser.setUser_name( map.get("user_name").toString() );
			beanUser.setUser_id( map.get("user_id").toString() );
			beanUser.setLevel( Integer.parseInt( map.get("level").toString() ) );
			
			if ( map.get("passwd").toString() != "" ) {
				if ( map.get("passwd").toString().equals(map.get("passwd_chk").toString()) == true ) {
					beanUser.setPasswd(map.get("passwd").toString());
				} else {
					resultMap.put("RESULT", "FAIL");
					resultMap.put("MSG", "비밀번호가 일치하지 않습니다.");
					return resultMap;
				}
			}
			
			
			daoAccount.setUser(beanUser);
			resultMap.put("RESULT", "OK");
			resultMap.put("MSG", "1");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resultMap.put("RESULT", "FAIL");
			resultMap.put("MSG", e.getMessage());
		}
		
		return resultMap;
	}
}
