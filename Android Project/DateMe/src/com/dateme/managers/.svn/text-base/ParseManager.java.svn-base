package com.dateme.managers;

import org.json.JSONException;

import com.dateme.fragment.network.RequestType;

public class ParseManager {
    /* Parse Json String According to Request Type and Return Object */
    private static Object parsedObject = null;

    private ParseManager() {
    }

    public static Object parse(RequestType requestType, String json)
            throws JSONException {
        switch (requestType) {
        case GET_REGISTRATION:
            parsedObject = ServiceParseManager.parseRegistration(json);
            break;
      
        default:
         }
        return parsedObject;
    }

    
}
