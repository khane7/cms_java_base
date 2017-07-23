package com.humanwares.cms.Dao;

import com.humanwares.cms.Beans.BeanBanner;
import com.humanwares.cms.Beans.BeanPopup;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

/**
 * Created by khane7 on 2016-03-16.
 */
@Repository
public class DaoDisplay extends DaoBase {



	public List<BeanBanner> getBannerList () {
		return sqlSession.selectList("BANNER.select_banner");
	}

	public BeanBanner getBannerOne (int idx) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		return sqlSession.selectOne("BANNER.select_banner", params);
	}

	public List<BeanBanner> getBanner (String title) {

		params = new HashMap<String, Object>();
		params.put("title", title);

		return sqlSession.selectOne("BANNER.select_banner", params);
	}


	public int setBanner ( BeanBanner beanBanner ) {

		if ( beanBanner.getIdx() <= 0  ) {

			int max = 0;
			params = new HashMap<String, Object>();
			params.put("tb_name", "tb_banner");
			if ( sqlSession.selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = sqlSession.selectOne("COMMON.select_max_idx", params );
			}
			beanBanner.setIdx(max + 1);

			sqlSession.insert("BANNER.insert_banner", beanBanner);
		} else {
			sqlSession.update("BANNER.update_banner", beanBanner);
		}

		return beanBanner.getIdx();
	}


	public void deleteBanner ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		sqlSession.delete("BANNER.delete_banner", params);
	}







	public List<BeanPopup> getPopupList () {
		return sqlSession.selectList("POPUP.select_popup");
	}

	public BeanPopup getPopupOne (int idx) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		return sqlSession.selectOne("POPUP.select_popup", params);
	}

	public List<BeanPopup> getPopup (String title) {

		params = new HashMap<String, Object>();
		params.put("title", title);

		return sqlSession.selectOne("POPUP.select_popup", params);
	}


	public int setPopup ( BeanPopup beanPopup ) {

		if ( beanPopup.getIdx() <= 0  ) {

			int max = 0;
			params = new HashMap<String, Object>();
			params.put("tb_name", "tb_popup");
			if ( sqlSession.selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = sqlSession.selectOne("COMMON.select_max_idx", params );
			}
			beanPopup.setIdx(max + 1);

			sqlSession.insert("POPUP.insert_popup", beanPopup);
		} else {
			sqlSession.update("POPUP.update_popup", beanPopup);
		}

		return beanPopup.getIdx();
	}


	public void deletePopup ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		sqlSession.delete("POPUP.delete_popup", params);
	}



}
