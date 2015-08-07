package com.dateme.entities;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.dateme.config.AppConstants;
import com.dateme.config.JSONConstants;

public class BaseResponseEntity {

    private String responseCode = "";
    private String responseDescription = "";

    public String getResponseCode() {
        return responseCode;
    }

    public void setResponseCode(String responseCode) {
        this.responseCode = responseCode;
    }

    public String getResponseDescription() {
        return responseDescription;
    }

    public void setResponseDescription(String responseDescription) {
        this.responseDescription = responseDescription;
    }

    public static BaseResponseEntity parse(String json) {
        JSONObject root;
        BaseResponseEntity responseEntity = null;
        if (json != null && json.length() > 0) {
            try {
                root = new JSONObject(json);
                responseEntity = new BaseResponseEntity();
                responseEntity.responseCode = root
                        .getString(JSONConstants.RESPONSE_CODE);
                responseEntity.responseDescription = root
                        .getString(JSONConstants.RESPONSE_DESCRIPTION);

            } catch (JSONException e) {
                Log.e(AppConstants.EXCEPTION, e.toString(), e);
            } catch (Exception e) {
                Log.e(AppConstants.EXCEPTION, e.toString(), e);
            }
        } else {
            responseEntity = new BaseResponseEntity();
        }
        return responseEntity;
    }
}
