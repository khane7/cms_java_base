package com.khane7.cms.manager.display.dao;

import com.khane7.cms.manager.display.vo.BeanBanner;
import com.khane7.cms.manager.display.vo.BeanPopup;

import com.khane7.cms.manager.system.dao.DaoBase;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-03-16.
 */
@Repository
public class DaoDisplay extends DaoBase {



	public List<BeanBanner> getBannerList () {
		return getSqlSession().selectList("BANNER.select_banner");
	}

	public BeanBanner getBannerOne (int idx) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		return getSqlSession().selectOne("BANNER.select_banner", params);
	}

	public List<BeanBanner> getBanner (String title) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("title", title);

		return getSqlSession().selectOne("BANNER.select_banner", params);
	}


	public int setBanner ( BeanBanner beanBanner ) {

		if ( beanBanner.getIdx() <= 0  ) {

			int max = 0;
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("tb_name", "tb_banner");
			if ( getSqlSession().selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = getSqlSession().selectOne("COMMON.select_max_idx", params );
			}
			beanBanner.setIdx(max + 1);

			getSqlSession().insert("BANNER.insert_banner", beanBanner);
		} else {
			getSqlSession().update("BANNER.update_banner", beanBanner);
		}

		return beanBanner.getIdx();
	}


	public void deleteBanner ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		getSqlSession().delete("BANNER.delete_banner", params);
	}







	public List<BeanPopup> getPopupList () {
		return getSqlSession().selectList("POPUP.select_popup");
	}

	public BeanPopup getPopupOne (int idx) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		return getSqlSession().selectOne("POPUP.select_popup", params);
	}

	public List<BeanPopup> getPopup (String title) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("title", title);

		return getSqlSession().selectOne("POPUP.select_popup", params);
	}


	public int setPopup ( BeanPopup beanPopup ) {

		if ( beanPopup.getIdx() <= 0  ) {

			int max = 0;
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("tb_name", "tb_popup");
			if ( getSqlSession().selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = getSqlSession().selectOne("COMMON.select_max_idx", params );
			}
			beanPopup.setIdx(max + 1);

			getSqlSession().insert("POPUP.insert_popup", beanPopup);
		} else {
			getSqlSession().update("POPUP.update_popup", beanPopup);
		}

		return beanPopup.getIdx();
	}


	public void deletePopup ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		getSqlSession().delete("POPUP.delete_popup", params);
	}



}
