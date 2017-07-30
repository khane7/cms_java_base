package com.khane7.cms.Dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-02.
 */
@Repository
public class DaoLog extends DaoBase {

	Map<String, Object> params;

	public List<Map<String, String>> getLogs () {

		return  getSqlSession().selectList("ACCESS_LOG.select_log");
	}


	public void insert_log ( Map map_ ) {
		getSqlSession().insert("ACCESS_LOG.insert_log", map_);
	}


}
