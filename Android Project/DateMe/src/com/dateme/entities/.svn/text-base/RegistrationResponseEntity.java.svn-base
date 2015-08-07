package com.dateme.entities;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.dateme.config.AppConstants;
import com.dateme.config.JSONConstants;

public class RegistrationResponseEntity extends BaseResponseEntity {

	String userID;

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public static RegistrationResponseEntity parse(String json) {
		JSONObject root;
		RegistrationResponseEntity responseEntity = null;
		if (json != null && json.length() > 0) {
			try {
				root = new JSONObject(json);
				responseEntity = new RegistrationResponseEntity();
				responseEntity.setResponseCode(root
						.optString(JSONConstants.RESPONSE_CODE));
				responseEntity.setResponseDescription(root
						.optString(JSONConstants.RESPONSE_DESCRIPTION));
				responseEntity.userID = root
						.optString(JSONConstants.GetRegistration.USERID);

			} catch (JSONException e) {
				Log.e(AppConstants.EXCEPTION, e.toString(), e);
			} catch (Exception e) {
				Log.e(AppConstants.EXCEPTION, e.toString(), e);
			}
		} else {
			responseEntity = new RegistrationResponseEntity();
		}
		return responseEntity;
	}

	@Override
	public String toString() {
		return "TerminalNumberResponseEntity [userid=" + userID

		+ ", getResponseCode()=" + getResponseCode()
				+ ", getResponseDescription()=" + getResponseDescription()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
