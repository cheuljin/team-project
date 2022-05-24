package com.ssipdduck.util;

public class Util {
	public static boolean str2Int(String str) {
		
		try {
			Integer.parseInt(str);
			return true;
		}catch(Exception e){
			return false;
		}
		
	}
	
	public static String HTML2str(String str) {
		str = str.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("#", "&num;").replaceAll(";", "&semi;");
		
		return str;
	}
	
}
