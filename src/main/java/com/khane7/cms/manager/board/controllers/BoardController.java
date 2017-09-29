package com.khane7.cms.manager.board.controllers;

import com.khane7.cms.Application;
import com.khane7.cms.manager.board_manager.vo.BeanBBS;
import com.khane7.cms.manager.board.vo.BeanBoard;
import com.khane7.common.PageHelper;
import com.khane7.common.Utility;
import com.khane7.cms.manager.file.controllers.FileController;
import com.khane7.cms.manager.board_manager.dao.DaoBBS;
import com.khane7.cms.manager.board.dao.DaoBoard;
import com.khane7.cms.manager.board.dao.DaoBoardComment;
import com.khane7.cms.manager.file.dao.DaoFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-17.
 */
@Controller
@RequestMapping(value = Application.MANAGER_URL + "/board")
public class BoardController extends Application {

	@Autowired
	HttpSession httpSession;

	@Autowired
	DaoBBS daoBBS;
	@Autowired
	DaoBoard daoBoard;
	@Autowired
	DaoFile daoFile;
	@Autowired
	DaoBoardComment daoBoardComment;

	@RequestMapping(value = { "/"})
	public String showList ( @RequestParam Map<String, String> map, ModelMap model) {

		try {

			String tb_name = map.get("tb_name");
			BeanBBS beanBBS = daoBBS.getBbs( tb_name );

			if ( beanBBS == null || tb_name == null || tb_name.trim().equals("") == true ) {

				model.put("msg", "잘못된 게시판 코드입니다." );
				return error500;
			}

			int page = (map.get("pageNum") != null && Integer.valueOf(map.get("pageNum")) > 0 ) ? Integer.parseInt(map.get("pageNum")) : 1;
			String title = (map.get("title") != null) ? URLDecoder.decode(map.get("title").toString()) : null;
			String content = (map.get("content") != null) ? URLDecoder.decode(map.get("content").toString()) : null;
			String writer_key = (map.get("writer_key") != null) ? URLDecoder.decode(map.get("writer_key").toString()) : null;
			String writer = (map.get("writer") != null) ? URLDecoder.decode(map.get("writer").toString()) : null;

			int maxCount = 0;
			List<BeanBoard> noticeList = daoBoard.getBoardList4Manager(Utility.getTbName(tb_name), 1, beanBBS.getPage_count(), title, content, writer_key, writer, null, "Y");
			List<BeanBoard> boardList = null;
			if ( beanBBS.getSkin().toLowerCase().contains("qa") == true || beanBBS.getSkin().toLowerCase().contains("qna") == true ) {
				maxCount = daoBoard.getBoardCount4Front(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, null, null);
				boardList = daoBoard.getBoardList4Front(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, null, "N");
			} else {
				maxCount = daoBoard.getBoardCount4Manager(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, null, null);
				boardList = daoBoard.getBoardList4Manager(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, null, "N");
			}


			model.put("beanBBS", beanBBS);
			model.put("maxCount", maxCount );
			model.put("noticeList", noticeList );
			model.put("boardList", boardList );
			model.put("page", page );
			model.put("PageLink", PageHelper.getPageLink(maxCount, page, beanBBS.getPage_count()));

		} catch (Exception e) {
			e.printStackTrace();

			model.put("msg", e.getStackTrace() );
			return error500;
		}

		return "cms_manager/board/list";
	}



	@RequestMapping(value = "/form")
	public String showForm ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);

		return "cms_manager/board/form";
	}


	@RequestMapping(value = "/view")
	public String showDetail ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);

		return "cms_manager/board/view";
	}


	@RequestMapping(value = "/reply")
	public String showReply ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);
		model.put("pidx", daoBoard.getBoardOne( Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("pidx"))).getIdx() );
		String tempTree = daoBoard.getMaxTreeLevel( Utility.getTbName(map.get("tb_name")), map.get("tree_level") );
		if ( tempTree == null ) {
			model.put("tree_level", map.get("tree_level") + ".01");
		} else {
			model.put("tree_level", Utility.addTreeLevel(tempTree) );
		}

		return "cms_manager/board/form";
	}


	@RequestMapping(value = "/getBoardOne")
	public @ResponseBody Map<String, Object> getBoardOne ( @RequestParam Map<String, String> map, ModelMap model ) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

			BeanBoard beanBoard = daoBoard.getBoardOne( Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("idx")));

			if ( beanBoard == null ) {

				results.put("status", "FAIL");
				results.put("msg", "게시물이 존재하지 않습니다." );
				return results;
			}

			results.put("status", "OK");
			results.put("beanBBS", beanBBS);
			results.put("beanBoard", beanBoard);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage() );
		}

		return results;
	}




	@RequestMapping(value = "/setBoardOne", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> setBoardOne ( @RequestParam Map<String, String> map, HttpServletRequest request ) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

			BeanBoard beanBoard = new BeanBoard();
			beanBoard.setIdx(Integer.parseInt(map.get("idx")));
			beanBoard.setPidx((map.get("pidx").trim().equals("") == false) ? Integer.parseInt(map.get("pidx")) : 0);
			beanBoard.setTree_level( map.get("tree_level") );
			beanBoard.setTb_name(daoBBS.getTableName(map.get("tb_name")).get("tb_name").toString());
			beanBoard.setWriter_key((map.get("writer_key") == null) ? getSSUser().getUser_id() : map.get("writer_key"));
			beanBoard.setWriter((map.get("writer").equals("") == true) ? getSSUser().getUser_name() : map.get("writer"));
			beanBoard.setWriter_pw(map.get("writer_pw"));

			beanBoard.setTitle(map.get("title"));
			beanBoard.setContent_text(Utility.stripHTML(map.get("content")));
			beanBoard.setContent_html(map.get("content"));

			beanBoard.setIs_use((map.get("is_use") != null) ? map.get("is_use") : "N");
			beanBoard.setIs_notice((map.get("is_notice") != null) ? map.get("is_notice") : "N");
			beanBoard.setOpt1((map.get("opt1") != null && map.get("opt1").equals("") == false) ? map.get("opt1") : null);
			beanBoard.setOpt2(( map.get("opt2") != null && map.get("opt2").equals("") == false) ? map.get("opt2") : null);

			beanBoard.setReg_ip( request.getRemoteAddr() );

			results.put("status", "OK");

			int tb_idx = daoBoard.setBoardOne( beanBoard );

			/*BeanFile beanFile = new BeanFile();
			if (thumbnail != null) {
				String nowPath = FileController.getNowPath();
				File upload = new File(httpSession.getServletContext().getRealPath(File.separator) + FileController.realPath + nowPath );
				if ( upload.isDirectory() == false ) {
					upload.mkdirs();
				}

				File newFile = new File( upload.getPath() + "/" + Utility.getTimestamp() );
				thumbnail.transferTo(newFile);

				beanFile.setTb_idx(tb_idx);
				beanFile.setTb_name(beanBoard.getTb_name());
				beanFile.setFilename(thumbnail.getOriginalFilename());
				beanFile.setRealfilename(newFile.getName());
				beanFile.setWeb_path( FileController.webPath + nowPath);
				beanFile.setFileext(beanFile.getFilename().split("[.]")[beanFile.getFilename().split("[.]").length - 1]);
				beanFile.setFilesize(String.valueOf(newFile.length()));

				daoFile.addFile(beanFile);

			}

			BeanBoard beanBoardNew = daoBoard.getBoardOne(beanBoard.getTb_name(), beanBoard.getIdx());
			beanBoardNew.setOpt1(String.valueOf(beanFile.getIdx()));*/

			if ( map.get("file_idxs") != null && map.get("file_idxs").trim().equals("") == false ) {
				daoFile.setFileList(map.get("file_idxs"), tb_idx, beanBoard.getTb_name());

				if ( beanBBS.getIs_thumbnail().equals("Y") == true && beanBoard.getOpt1() == null ) {
					beanBoard.setOpt1(map.get("file_idxs").split("[,]")[0]);
					daoBoard.setBoardOne(beanBoard);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage() );
		}

		return results;
	}



	@RequestMapping(value = "/deleteBoard")
	public @ResponseBody Map<String, Object> deleteBoard ( @RequestParam Map<String, String> mapParams) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			String tb_name = mapParams.get("tb_name");
			String arrIdx[] = mapParams.get("idxs").toString().split("[,]");

			for (String strIdx : arrIdx) {
				daoBoard.delBoardOne(Utility.getTbName(tb_name), Integer.parseInt(strIdx));
				new FileController().doDeleteFiles(Utility.getTbName(tb_name), Integer.parseInt(strIdx), httpSession, daoFile);
			}

			results.put("RESULT", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("RESULT", "FAIL");
			results.put("MSG", e.getMessage());
		}

		return results;
	}






	@RequestMapping(value = "/uploader")
	public String showUploader ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);

		return "cms_manager/board/upoader";
	}


	@RequestMapping(value = "/editor")
	public String showEditor ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);

		return "cms_manager/board/editor";
	}



}
