package com.khane7.cms.manager.file.dao;

import com.khane7.cms.manager.file.vo.BeanFile;

import com.khane7.cms.manager.system.dao.DaoBase;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-17.
 */
@Repository
public class DaoFile extends DaoBase {

	public List<BeanFile> getFileList ( String tb_name, int tb_idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("tb_idx", tb_idx);
		params.put("tb_name", tb_name);

		return getSqlSession().selectList("FILE.select_file", params);
	}


	public List<BeanFile> getFileList ( String file_idxs ) {

		String idxs[] = file_idxs.split("[,]");

		Map<String, Object> params = new HashMap<String, Object>();

		List<BeanFile> beanFileList = new ArrayList<BeanFile>();
		for ( int i = 0; i < idxs.length; i++) {
			if ( idxs[i].trim().equals("") == false ) {
				params.clear();
				params.put("idx", Integer.parseInt(idxs[i]));
				beanFileList.add((BeanFile) getSqlSession().selectOne("FILE.select_file", params));
			}
		}

		return beanFileList;
	}


	public BeanFile getFile ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		return getSqlSession().selectOne("FILE.select_file", params);
	}


	public void setFileList ( String file_idxs, int tb_idx, String tb_name ) {

		String idxs[] = file_idxs.split("[,]");

		for ( int i = 0; i < idxs.length; i++) {

			if ( idxs[i].trim().equals("") == false ) {
				BeanFile beanFile = new BeanFile();
				beanFile.setIdx(Integer.parseInt(idxs[i]));
				beanFile.setTb_idx(tb_idx);
				beanFile.setTb_name(tb_name);

				getSqlSession().update("FILE.update_file", beanFile);
			}
		}

	}



	public int addFile ( BeanFile beanFile ) {

		int max = 0;
		if ( getSqlSession().selectOne("FILE.select_file_max") == null ) {
			max = 0;
		} else {
			max = getSqlSession().selectOne("FILE.select_file_max");
		}

		beanFile.setIdx(max + 1);

		getSqlSession().insert("FILE.insert_file", beanFile);

		return beanFile.getIdx();
	}


	public void dropFile ( BeanFile beanFile ) {

		getSqlSession().delete("FILE.delete_file", beanFile);
	}

	public void dropFile ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		getSqlSession().insert("FILE.delete_file", params);
	}

	public void dropFile ( int tb_idx, String tb_name ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("tb_idx", tb_idx);
		params.put("tb_name", tb_name);

		getSqlSession().insert("FILE.delete_file", params);
	}


}
