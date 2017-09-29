package com.khane7.cms.manager.system.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-02.
 */
@Repository
public class DaoBase extends SqlSessionDaoSupport {

	//@Autowired
	//SqlSessionTemplate sqlSession;

	//Map<String, Object> params;


	@Resource
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}

}
