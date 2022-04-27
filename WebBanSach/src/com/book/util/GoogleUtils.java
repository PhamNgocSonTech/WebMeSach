package com.book.util;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

import com.book.model.GooglePojo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class GoogleUtils {//lớp GGUtils gửi truy vấn tới GG để lấy thông tin trong tài khoản gg
	 public static String getToken(final String code) throws ClientProtocolException, IOException {
		    String response = Request.Post(ConstantGG.GOOGLE_LINK_GET_TOKEN)
		        .bodyForm(Form.form().add("client_id", ConstantGG.GOOGLE_CLIENT_ID)
		            .add("client_secret", ConstantGG.GOOGLE_CLIENT_SECRET)
		            .add("redirect_uri",ConstantGG.GOOGLE_REDIRECT_URI).add("code", code)
		            .add("grant_type", ConstantGG.GOOGLE_GRANT_TYPE).build())
		        .execute().returnContent().asString();
		      JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		      String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		      return accessToken;
		      //chuyển code thành accessToken
		  }
		  public static GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		    String link = ConstantGG.GOOGLE_LINK_GET_USER_INFO + accessToken;
		    String response = Request.Get(link).execute().returnContent().asString();
		    GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
		    System.out.println(googlePojo);
		    return googlePojo;
		  }
}
