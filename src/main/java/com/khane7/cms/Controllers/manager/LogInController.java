package com.khane7.cms.Controllers.manager;

import com.khane7.cms.Beans.BeanUsers;
import com.khane7.cms.Dao.DaoUsers;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping
public class LogInController {
	
	@Autowired
	private SqlSession sqlSession;
	private Map<String, Object> mapTemp;
	
	@Autowired
	DaoUsers daoUsers;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cms_manager/")
	public String home(Locale locale, @RequestParam Map<String, String> mapParams, Model model, HttpSession session) {
		
		Date date = new Date();
		
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		/*if ( session.getAttribute("session_user") != null ) {
			Map<String, Object> mapSession = (Map<String, Object>) session.getAttribute("session_user");
			if ( mapSession.get("ss_user_id") != null || mapSession.get("ss_user_id").toString().equals("") == false ) {
				//return new AccountController().getex(mapParams, model, session);
			}
		}*/
		
		return "cms_manager/login";
	}
	
	
	
	@RequestMapping(value="/cms_manager/doLogin", method = RequestMethod.POST/*,  produces="application/json"*/)
	public @ResponseBody Map<String, Object> doLogin ( @RequestParam Map<String, String> mapParams, Model model, HttpSession session ) {


		Map<String, Object> mapTemp = new HashMap<String, Object>();

		System.out.println(mapParams.get("user_id") + "/" + mapParams.get("passwd"));

		try {
			
			BeanUsers beanUsers =  daoUsers.getUsers(mapParams.get("user_id"), mapParams.get("passwd"));
			if ( /*!beanUsers.equals("user_id")*/ beanUsers == null || beanUsers.getIs_delete().equals("Y") == true ) {
				mapTemp.put("RESULT", "FAIL");
				mapTemp.put("MSG", "일치하는 사용자가 없습니다.");
				return mapTemp;
			}
			
			Map<String, Object> mapSession = new HashMap<String, Object>();
			mapSession.put("ss_user_id",beanUsers.getUser_id());
			mapSession.put("ss_user_name", beanUsers.getUser_name() );
			mapSession.put("ss_user", beanUsers );
			//mapSession.put("ss_level", beanUsers.getLevel());
			session.setAttribute("session_user", beanUsers );


			mapTemp.put("RESULT", "OK");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			mapTemp.put("RESULT", "FAIL");
			mapTemp.put("MSG", "일시적 오류 입니다.");
		}
		
		return mapTemp;
	}



	@RequestMapping(value="/cms_manager/doLogin4SSO", method = RequestMethod.POST/*,  produces="application/json"*/)
	public @ResponseBody Map<String, Object> doLogin4SSO ( @RequestParam Map<String, String> mapParams, Model model, HttpSession session ) {

		Map<String, Object> mapTemp = new HashMap<String, Object>();

		try {


			/**
			 "response": {
			 "item": {
			 "userNm": "강휴석",
			 "jaejikYn": "0",
			 "loginId": "khshuman",
			 "userGb": "0060",
			 "sosokCd": "A",
			 "daehakNm": null,
			 "userGbNm": "일반인",
			 "gaeinNo": "00554407",
			 "uuid": "00554407",
			 "sosokId": "FA",
			 "sosokNm": "한양대학교"
			 }
			 }
			 */


			BeanUsers beanUsers =  new BeanUsers();
			beanUsers.setUser_id(mapParams.get("user_id"));
			beanUsers.setUser_name(mapParams.get("user_name"));
			beanUsers.setIs_admin(mapParams.get("is_admin"));
			beanUsers.setLevel(Integer.parseInt(mapParams.get("level")));

			Map<String, Object> mapSession = new HashMap<String, Object>();
			mapSession.put("ss_user_id",beanUsers.getUser_id());
			mapSession.put("ss_user_name", beanUsers.getUser_name() );
			mapSession.put("ss_user", beanUsers );
			//mapSession.put("ss_level", beanUsers.getLevel());
			session.setAttribute("session_user", beanUsers );
			mapTemp.put("status", "OK");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return mapTemp;
	}


	@RequestMapping(value="/cms_manager/doLogout4SSO"/*,  produces="application/json"*/)
	public @ResponseBody Map<String, Object> doLogout4SSO ( @RequestParam Map<String, String> mapParams, Model model, HttpSession session ) {

		Map<String, Object> mapTemp = new HashMap<String, Object>();

		try {

			session.removeAttribute("session_user");
			mapTemp.put("status", "OK");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return mapTemp;
	}


	
	@RequestMapping(value="/cms_manager/doLogout")
	public String doLogout ( @RequestParam Map<String, String> mapParams, Model model, HttpSession session ) {
		
		try {
			
			session.removeAttribute("session_user");

			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "/cms_manager/login";
	}


	/**
	 * API 로그인 저장처리
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/cms_manager/doLogin4API")
	public void saveUser ( @RequestParam HashMap<String, Object> map, HttpSession session) {

		//this.daoUsers = new DaoUsers();
		Map<String, Object> resultMap = new HashMap<String, Object>();

		try {

			BeanUsers beanUser = new BeanUsers();
			beanUser.setUser_name(map.get("user_name").toString());
			beanUser.setUser_id(map.get("user_id").toString());
			beanUser.setLevel(Integer.parseInt(map.get("level").toString()));

			session.setAttribute("session_user", beanUser );

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}


	
}