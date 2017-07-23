package com.humanwares.cms.Controllers.manager;

import com.humanwares.cms.Application;
import com.humanwares.cms.Beans.BeanFile;
import com.humanwares.cms.Common.Utility;
import com.humanwares.cms.Dao.DaoFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by khane7 on 2016-02-18.
 */

@Controller
@RequestMapping(value = Application.MANAGER_URL + "/file")
public class FileController extends Application {

	@Autowired
	DaoFile daoFile;

	public static String resourcePath = "/resources";
	public static String webPath = "/uploads/cms/";
	public static String realPath = resourcePath + "/uploads/cms/";

	Map<String, Object> results;


	public static String getNowPath () {

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		Calendar calendar = Calendar.getInstance();
		String nowPath = sdf.format( date );

		return nowPath;
	}



	@RequestMapping(value = "/upload")
	public @ResponseBody Map<String, Object> doUpload ( @RequestParam Map<String, String> map, @RequestParam("file[]") List<MultipartFile> fileList, HttpSession httpSession ) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			String nowPath = getNowPath();
			File upload = new File(httpSession.getServletContext().getRealPath(File.separator) + realPath + nowPath );
			if ( upload.isDirectory() == false ) {
				upload.mkdirs();
			}

			List<BeanFile> beanFileList = new ArrayList<BeanFile>();
			loopFile : for (int i = 0; i < fileList.size(); i++) {

				BeanFile beanFile = new BeanFile();

				try {

					File newFile = new File( upload.getPath() + "/" + Utility.getTimestamp() );
					fileList.get(i).transferTo(newFile);

					beanFile.setFilename(fileList.get(i).getOriginalFilename());
					beanFile.setRealfilename(newFile.getName());
					beanFile.setWeb_path(webPath + nowPath);
					beanFile.setFileext(beanFile.getFilename().split("[.]")[beanFile.getFilename().split("[.]").length - 1]);
					beanFile.setFilesize(String.valueOf(newFile.length()));

					daoFile.addFile(beanFile);

					beanFile.setIsSuccess(true);

				} catch (Exception e) {
					e.printStackTrace();
					beanFile.setIsSuccess(false);
				} finally {

					beanFileList.add(beanFile);
					continue loopFile;
				}
			}

			results.put("status", "OK");
			results.put("beanFileList", beanFileList);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


	@RequestMapping(value = "/getFiles")
	public @ResponseBody Map<String, Object> getFiles ( @RequestParam Map<String, String> map ) {

		Map<String, Object> results = new HashMap<String, Object>();

		List<BeanFile> beanFileList = daoFile.getFileList( map.get("file_idxs") );

		results.put("status", "OK");
		results.put("beanFileList", beanFileList);

		return results;
	}


	@RequestMapping(value = "/getFileList")
	public @ResponseBody Map<String, Object> getFileList ( @RequestParam Map<String, String> map ) {

		Map<String, Object> results = new HashMap<String, Object>();

		List<BeanFile> beanFileList = daoFile.getFileList(Utility.getTbName(map.get("tb_name")), Integer.parseInt(map.get("tb_idx")));

		results.put("status", "OK");
		results.put("beanFileList", beanFileList);

		return results;
	}



	@RequestMapping(value = "/deleteFile")
	public @ResponseBody Map<String, Object> doDeleteFiles ( @RequestParam Map<String, String> map, HttpSession httpSession ) {

		Map<String, Object> results = new HashMap<String, Object>();

		BeanFile beanFile = daoFile.getFile(Integer.parseInt(map.get("idx")));

		daoFile.dropFile(beanFile);

		try {
			File deleteFile = new File( httpSession.getServletContext().getRealPath(File.separator) + resourcePath + beanFile.getWeb_path() + "/" + beanFile.getRealfilename() );
			if ( deleteFile.exists() == true ) {
				deleteFile.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		results.put("status", "OK");

		return results;
	}



	public void doDeleteFiles ( String tb_name, int tb_idx, HttpSession httpSession, DaoFile daoFile_ ) {

		List<BeanFile> fileList = daoFile_.getFileList(tb_name, tb_idx);

		for (int i = 0; i < fileList.size(); i++) {

			BeanFile temp = fileList.get(i);
			File deleteFile = new File( getPathResource(httpSession) + temp.getWeb_path() + "/" + temp.getRealfilename() );
			if ( deleteFile.exists() == true ) {
				deleteFile.delete();
			}

			daoFile_.dropFile(temp);
		}

	}



	/*@RequestMapping(value = "/downloadlink")
	public void doDownload4Resource( @RequestParam Map<String, String> map, HttpServletResponse response, HttpSession httpSession) throws IOException {

		String filelink = map.get("file_link");
		File downFile = new File( getPathResource(httpSession) + filelink );

		InputStream is = new FileInputStream(downFile);

		// MIME type of the file
		response.setContentType("application/octet-stream");
		// Response header
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filelink.split("[/]")[filelink.split("[/]").length-1] + "\"");
		// Read from the file and write into the response
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		os.close();
		is.close();
	}*/


	@RequestMapping(value = "/download")
	public void doDownload( @RequestParam Map<String, String> map, HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) throws IOException {

		int file_idx = Integer.parseInt(map.get("file_idx"));

		BeanFile beanFile = daoFile.getFile(file_idx);
		File downFile = new File( getPathResource(httpSession) + beanFile.getWeb_path() + "/" + beanFile.getRealfilename() );

		File file = new File("C:/files/test.txt");
		InputStream is = new FileInputStream(downFile);

		// MIME type of the file
		response.setContentType("application/octet-stream");

		// Response header
		String header = request.getHeader("User-Agent");

		String docName = null;
		if ( header.indexOf("Trident") <= -1 ) {
			docName = new String( beanFile.getFilename().getBytes("UTF-8"), "ISO-8859-1");
		} else {
			docName = URLEncoder.encode(beanFile.getFilename(), "UTF-8").replaceAll("\\+", "\\ ");
		}
		response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setContentLength((int) downFile.length());
		response.setHeader("Connection", "close");

		// Read from the file and write into the response
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		os.close();
		is.close();
	}




}
