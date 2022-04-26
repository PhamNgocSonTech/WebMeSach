package com.book.tools;

import java.io.UnsupportedEncodingException;

import org.apache.commons.fileupload.FileItem;

public class StringConvert {
	public static String itemGetString_UTF_8(FileItem item) throws UnsupportedEncodingException{
		String itemUTF8 = new String(item.getString().getBytes("ISO-8859-1"),"UTF-8");
		return itemUTF8;
	}
}
