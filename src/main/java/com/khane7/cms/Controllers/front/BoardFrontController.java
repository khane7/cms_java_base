package com.khane7.cms.Controllers.front;

import com.khane7.cms.Application;
import com.khane7.cms.Beans.BeanBBS;
import com.khane7.cms.Beans.BeanBoard;
import com.khane7.cms.Beans.BeanFile;
import com.khane7.cms.Beans.BeanUsers;
import com.khane7.cms.Common.PageHelper;
import com.khane7.cms.Common.Utility;
import com.khane7.cms.Controllers.manager.FileController;
import com.khane7.cms.Dao.DaoBBS;
import com.khane7.cms.Dao.DaoBoard;
import com.khane7.cms.Dao.DaoBoardComment;
import com.khane7.cms.Dao.DaoFile;

import com.khane7.cms.Service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by khane7 on 2016-02-22.
 */
@Controller
@RequestMapping(value = Application.FRONT  + "/board")
public class BoardFrontController extends Application {


	@Autowired
	HttpSession httpSession;

	@Autowired
	BoardService boardService;

	@Autowired
	DaoBBS daoBBS;
	@Autowired
	DaoBoard daoBoard;
	@Autowired
	DaoFile daoFile;
	@Autowired
	DaoBoardComment daoBoardComment;

	@RequestMapping(value = "/editor")
	public String showEditor () {

		return "front/skin/commons/editor";
	}



	@RequestMapping(value = {"/"})
	public String index ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = null;

		try {

			String tb_name = map.get("tb_name");
			beanBBS = daoBBS.getBbs( tb_name );

			if ( tb_name == null || tb_name.trim().equals("") == true || beanBBS == null ) {
				//return error500;
				return "redirect:/";
			}

			model.put("beanBBS", beanBBS);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return FRONT + "front/skin/board/" + beanBBS.getSkin() + "/index";
	}


	@RequestMapping(value = "/list")
	public String List ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = null;

		try {

			String tb_name = map.get("tb_name");
			beanBBS = daoBBS.getBbs( tb_name );

			if ( beanBBS == null || tb_name == null || tb_name.trim().equals("") == true ) {

				model.put("msg", "잘못된 게시판 코드입니다." );
				return error500;
			}

			int page = (map.get("pageNum") != null && Integer.valueOf(map.get("pageNum")) > 0 ) ? Integer.parseInt(map.get("pageNum")) : 1;

			String title = null;
			String content = null;
			String writer_key = null;
			String writer = null;
			if ( map.get("search_val") != null && map.get("search_val").equals("") == false ) {
				String search_key = map.get("search_key");
				String search_val = map.get("search_val");
				title = (search_key.equals("title") == true) ? search_val : null;
				content = (search_key.equals("content") == true) ? search_val : null;
				writer_key = (search_key.equals("writer_key") == true) ? search_val : null;
				writer = (search_key.equals("writer") == true) ? search_val : null;
			}

			int maxCount = 0;
			List<BeanBoard> noticeList = daoBoard.getBoardList4Manager(Utility.getTbName(tb_name), 1, beanBBS.getPage_count(), title, content, writer_key, writer, "Y", "Y");
			List<BeanBoard> boardList = null;
			if ( beanBBS.getSkin().toLowerCase().contains("qa") == true || beanBBS.getSkin().toLowerCase().contains("qna") == true ) {
				maxCount = daoBoard.getBoardCount4Front(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, "Y", null);
				boardList = daoBoard.getBoardList4Front(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, "Y", "N");
			} else {
				maxCount = daoBoard.getBoardCount4Manager(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, "Y", null);
				boardList = daoBoard.getBoardList4Manager(Utility.getTbName(tb_name), page, beanBBS.getPage_count(), title, content, writer_key, writer, "Y", "N");
			}

			loopFile : for (int i = 0; i < boardList.size(); i++) {

				try {

					boardList.get(i).setReply(daoBoard.getBoardReply(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getPidx()));

					if ( boardList.get(i).getOpt1() != null && boardList.get(i).getOpt1().trim().equals("") == false ) {
						boardList.get(i).setThumbnail( daoFile.getFile(Integer.parseInt(boardList.get(i).getOpt1())) );
					}
					boardList.get(i).setAttachList( daoFile.getFileList(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getIdx()) );

				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					continue loopFile;
				}

			}

			model.put("beanBBS", beanBBS);
			model.put("maxCount", maxCount );
			model.put("noticeList", noticeList );
			model.put("boardList", boardList );
			model.put("page", page );
			model.put("PageLink", PageHelper.getPageLink(maxCount, page, beanBBS.getPage_count()));

			Thread.sleep(500);

		} catch (Exception e) {
			e.printStackTrace();

			model.put("msg", e.getStackTrace());
			return error500;
		}

		return FRONT + "front/skin/board/" + beanBBS.getSkin() + "/list";
	}



	@RequestMapping(value = "/partial_list")
	public @ResponseBody Map<String, Object> PartialList ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = null;
		Map<String, Object> results = new HashMap<String, Object>();

		try {

			String tb_name = map.get("tb_name");
			/*beanBBS = daoBBS.getBbs( tb_name );

			System.out.println(map.get("tb_name"));
			System.out.println(beanBBS.getBoard_name());*/

			int page = (map.get("pageNum") != null && Integer.valueOf(map.get("pageNum")) > 0 ) ? Integer.parseInt(map.get("pageNum")) : 1;
			int viewCount = Integer.parseInt(map.get("viewCount"));

			results.put("status", "OK");
			results.putAll( boardService.getPartialList(tb_name, page, viewCount) );

			/*List<BeanBoard> boardList = boardService.getPartialList( tb_name, page, viewCount );

			int maxCount = daoBoard.getBoardCount4Front(Utility.getTbName(tb_name), page, viewCount, null, null, null, null, null, null);
			List<BeanBoard> boardList = daoBoard.getBoardList4Front(Utility.getTbName(tb_name), page, viewCount, null, null, null, null, null, null);

			loopFile : for (int i = 0; i < boardList.size(); i++) {

				try {

					boardList.get(i).setReply(daoBoard.getBoardReply(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getPidx()));

					if ( boardList.get(i).getOpt1() != null && boardList.get(i).getOpt1().trim().equals("") == false ) {
						boardList.get(i).setThumbnail( daoFile.getFile(Integer.parseInt(boardList.get(i).getOpt1())) );
					}
					boardList.get(i).setAttachList( daoFile.getFileList(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getIdx()) );

				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					continue loopFile;
				}

			}

			results.put("status", "OK");
			results.put("beanBBS", beanBBS);
			results.put("maxCount", maxCount );
			results.put("boardList", boardList );
			results.put("page", page );
			results.put("PageLink", PageHelper.getPageLink(maxCount, page, viewCount));*/

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage() );
		}

		return results;
	}




	@RequestMapping(value = "/form")
	public String showForm ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));
		if ( map.get("idx") != null ) {
			model.put("idx", map.get("idx"));
		}

		model.put("beanBBS", beanBBS);

		return FRONT + "front/skin/board/" + beanBBS.getSkin() + "/form";
	}


	@RequestMapping(value = "/view")
	public String showDetail ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));
		BeanBoard beanBoard = daoBoard.getBoardOne(Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("idx")));
		List<BeanFile> beanFileList = daoFile.getFileList(Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("idx")));

		try {

			if ( beanBoard.getOpt1() != null ) {
				beanBoard.setThumbnail(daoFile.getFile(Integer.parseInt(beanBoard.getOpt1())));
			}

			beanBoard.setTb_name(Utility.getTbName(map.get("tb_name")));
			beanBoard.setViews(beanBoard.getViews() + 1);
			daoBoard.setBoardOne(beanBoard);

			model.put("beanBBS", beanBBS);
			model.put("beanBoard", beanBoard);
			model.put("beanFileList", beanFileList);

			Thread.sleep(500);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return FRONT + "front/skin/board/" + beanBBS.getSkin() + "/view";
	}


	@RequestMapping(value = "/reply")
	public String showReply ( @RequestParam Map<String, String> map, ModelMap model) {

		BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

		model.put("beanBBS", beanBBS);
		model.put("pidx", daoBoard.getBoardOne( Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("pidx"))).getIdx() );
		String tempTree = daoBoard.getMaxTreeLevel(Utility.getTbName(map.get("tb_name")), map.get("tree_level"));
		if ( tempTree == null ) {
			model.put("tree_level", map.get("tree_level") + ".01");
		} else {
			model.put("tree_level", Utility.addTreeLevel(tempTree) );
		}

		return FRONT + "front/skin/board/" + beanBBS.getSkin() + "/form";
	}



	@RequestMapping(value = "/getBoardOne")
	public @ResponseBody Map<String, Object> getBoardOne ( @RequestParam Map<String, String> map, ModelMap model ) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

			BeanBoard beanBoard = daoBoard.getBoardOne(Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("idx")));
			List<BeanFile> beanFileList = daoFile.getFileList(Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("idx")));

			if ( beanBoard == null ) {

				results.put("status", "FAIL");
				results.put("msg", "게시물이 존재하지 않습니다." );
				return results;
			}

			results.put("status", "OK");
			results.put("beanBBS", beanBBS);
			results.put("beanBoard", beanBoard);
			results.put("beanFileList", beanFileList);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage() );
		}

		return results;
	}




	@RequestMapping(value = "/setBoardOne", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> setBoardOne ( @RequestParam Map<String, String> map, @RequestParam(value="thumbnail", required=false) MultipartFile thumbnail, HttpServletRequest request ) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbs(map.get("tb_name"));

			String writer_key = "";
			String writer = "";
			String writer_pw = "";
			if ( beanBBS.getIs_nologin().equals("Y") == true ) {

				writer_key = map.get("writer_key");
				writer = map.get("writer");
				writer_pw = map.get("writer_pw");

			} else {

				if ( getSSUser() == null ) {
					results.put("status", "FAIL");
					results.put("msg", "" );
					return results;
				} else {

					BeanUsers beanUsers = getSSUser();
					writer_key = beanUsers.getUser_id();
					writer = beanUsers.getUser_name();
					writer_pw = "";

				}

			}

			BeanBoard beanBoard = new BeanBoard();
			beanBoard.setIdx((map.get("idx").trim().equals("") == false) ? Integer.parseInt(map.get("idx")) : 0);
			beanBoard.setPidx((map.get("pidx").trim().equals("") == false) ? Integer.parseInt(map.get("pidx")) : 0);
			beanBoard.setTree_level( map.get("tree_level") );
			beanBoard.setTb_name(daoBBS.getTableName(map.get("tb_name")).get("tb_name").toString());
			/*beanBoard.setWriter_key(map.get("writer_key"));
			beanBoard.setWriter(map.get("writer"));*/
			beanBoard.setWriter_key( writer_key );
			beanBoard.setWriter( writer );
			beanBoard.setWriter_pw(writer_pw);

			beanBoard.setTitle(map.get("title"));
			beanBoard.setContent_text(Utility.stripHTML(map.get("content")));
			beanBoard.setContent_html(map.get("content"));

			beanBoard.setIs_use((map.get("is_use") != null) ? map.get("is_use") : "Y");
			beanBoard.setIs_notice((map.get("is_notice") != null) ? map.get("is_notice") : "N");

			int tb_idx = daoBoard.setBoardOne( beanBoard );

			BeanFile beanFile = new BeanFile();
			if (thumbnail != null && thumbnail.getOriginalFilename().trim().equals("") == false ) {
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
				beanFile.setWeb_path(FileController.webPath + nowPath);
				beanFile.setFileext(beanFile.getFilename().split("[.]")[beanFile.getFilename().split("[.]").length - 1]);
				beanFile.setFilesize(String.valueOf(newFile.length()));

				daoFile.addFile(beanFile);

				beanBoard.setOpt1(String.valueOf(beanFile.getIdx()));
			} else {
				beanBoard.setOpt1((map.get("opt1") != null && map.get("opt1").equals("") == false) ? map.get("opt1") : null);
			}
			beanBoard.setReg_ip( request.getRemoteAddr() );

			daoBoard.setBoardOne(beanBoard);

			if ( map.get("file_idxs") != null && map.get("file_idxs").trim().equals("") == false ) {
				daoFile.setFileList(map.get("file_idxs"), tb_idx, beanBoard.getTb_name() );
			}

			Thread.sleep(500);

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
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
			results.put("status", "OK");

			Thread.sleep(500);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}





	@RequestMapping(value = "/showEditor")
	public String showEditor ( @RequestParam Map<String, String> map, ModelMap model) {

		return FRONT + "front/skin/commons/editor";
	}



}
