package com.dateme.fragment.network;

public enum RequestType {
     GET_REGISTRATION("Registration");

    private final String methodName;

    private RequestType(String methodName) {
        this.methodName = methodName;
    }

    public String getMethodName() {
        return methodName;
    }

}
