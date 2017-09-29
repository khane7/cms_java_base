package com.khane7.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by khane7 on 2016-02-18.
 */
public class Utility {

	public static String MD5(String md5) {
		try {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			byte[] array = md.digest(md5.getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
			}
			return sb.toString();
		} catch (java.security.NoSuchAlgorithmException e) {
		}
		return null;
	}


	public static String stripHTML(String htmlStr) {
		return htmlStr.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	}


	public static String getTbName (String tb_name_ ) {

		return "tb_board_" + tb_name_;
	}

	public static String getTbNameFile (String tb_name_ ) {

		return "tb_board_" + tb_name_ + "_file";
	}

	public static String getTbNameComment (String tb_name_ ) {

		return "tb_board_" + tb_name_ + "_comment";
	}



	public static String getTimestamp () {

		return String.valueOf(Calendar.getInstance().getTimeInMillis());
	}


	public static String addTreeLevel ( String tree_level ) {

		String result = "";

		for (int i = 0; i < tree_level.split("[.]").length-1; i++ ) {
			if ( i == 0 ) {
				result = tree_level.split("[.]")[i];
			} else {
				result += "." + tree_level.split("[.]")[i];
			}
		}

		int temp = Integer.parseInt(tree_level.split("[.]")[tree_level.split("[.]").length-1]) + 1;
		if ( temp < 10 ) {
			result += ".0" + String.valueOf(temp);
		} else {
			result += "." + String.valueOf(temp);
		}

		return result;
	}

	public static String addChildTreeLevel ( String tree_level ) {

		return tree_level + ".01";
	}

	public static String getDateDay(String date, String dateType) throws Exception {


		String day = "" ;

		SimpleDateFormat dateFormat = new SimpleDateFormat(dateType) ;
		Date nDate = dateFormat.parse(date) ;

		Calendar cal = Calendar.getInstance() ;
		cal.setTime(nDate);

		int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;



		switch(dayNum){
			case 1:
				day = "일";
				break ;
			case 2:
				day = "월";
				break ;
			case 3:
				day = "화";
				break ;
			case 4:
				day = "수";
				break ;
			case 5:
				day = "목";
				break ;
			case 6:
				day = "금";
				break ;
			case 7:
				day = "토";
				break ;

		}



		return day ;
	}

}
