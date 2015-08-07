package com.dateme.fragment.network;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import android.content.Context;
import android.util.Log;

import com.dateme.config.AppConstants;

public class NetworkManager {
	private static final NetworkManager INSTANCE = new NetworkManager();

	private NetworkManager() {
	}

	public static NetworkManager getInstance() {
		return INSTANCE;
	}

	public void init() {
		Log.d(AppConstants.DEBUG, "INIT Network MANAGER");
	}

	public String sendPostRequest(Context context,
			List<NameValuePair> nameValuePair, String url) {
		String result = null;
		HttpClient httpclient = null;
		HttpParams params;
		System.out.println("url"+url+"\nname value"+nameValuePair.toString());
		try {
			params = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(params, 15000);
			HttpConnectionParams.setSoTimeout(params, 18000);
			httpclient = new DefaultHttpClient(params);
			HttpPost request = new HttpPost(url);
			
			request.setEntity(new UrlEncodedFormEntity(nameValuePair));

			ResponseHandler<String> handler = new BasicResponseHandler();
			result = httpclient.execute(request, handler);
			System.out.println("Result:"+result);
			return result;
		} catch (UnsupportedEncodingException e) {
			Log.e(AppConstants.EXCEPTION, e.toString(), e);
			return result;
		} catch (Exception e) {
			Log.e(AppConstants.EXCEPTION, e.toString(), e);
			return result;
		} finally {
			httpclient.getConnectionManager().shutdown();
		}
	}

}
